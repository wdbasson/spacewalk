-- created by Oraschemadoc Mon Aug 31 10:54:42 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE PACKAGE "MIM1"."RHN_CACHE" 
is
	version varchar2(100) := '';

	-- this searches out all users who get perms...
	procedure update_perms_for_server(
		server_id_in in number
	);

	procedure update_perms_for_user(
		user_id_in in number
	);

	procedure update_perms_for_server_group(
		server_group_id_in in number
	);
end rhn_cache;
CREATE OR REPLACE PACKAGE BODY "MIM1"."RHN_CACHE" 
is
	body_version varchar2(100) := '';

	-- this searches out all users who get perms...
	procedure update_perms_for_server(
		server_id_in in number
	) is
	begin
		delete from rhnUserServerPerms where server_id = server_id_in;
		insert into rhnUserServerPerms(user_id, server_id) (
				select	distinct user_id, server_id_in
				from	rhnUserServerPermsDupes
				where	server_id = server_id_in
			);
	end update_perms_for_server;

	procedure update_perms_for_user(
		user_id_in in number
	) is
	begin
        delete from rhnUserServerPerms
        where user_id = user_id_in
            and server_id in
            (select server_id
             from rhnUserServerPerms
             where user_id = user_id_in
             minus
             select server_id
             from rhnUserServerPermsDupes uspd
             where uspd.user_id = user_id_in);

        insert into rhnUserServerPerms (user_id, server_id)
        select distinct user_id_in, server_id
        from rhnUserServerPermsDupes uspd
        where uspd.user_id = user_id_in
            and not exists
            (select 1
             from rhnUserServerPerms usp
             where usp.user_id = user_id_in
                 and usp.server_id = uspd.server_id);
	end update_perms_for_user;

	-- this means a server got added or removed, so we
	-- can't key off of a server anywhere.
	procedure update_perms_for_server_group(
		server_group_id_in in number
	) is
		cursor users is
			-- org admins aren't affected, so don't test for them
			select	usgp.user_id id
			from	rhnUserServerGroupPerms usgp
			where	usgp.server_group_id = server_group_id_in
				and not exists (
					select	1
					from	rhnUserGroup ug,
							rhnUserGroupMembers ugm,
							rhnServerGroup sg,
							rhnUserGroupType ugt
					where	ugt.label = 'org_admin'
						and sg.id = server_group_id_in
						and ugm.user_id = usgp.user_id
						and ug.org_id = sg.org_id
						and ugm.user_group_id = ug.id
					);
	begin
		for u in users loop
			update_perms_for_user(u.id);
		end loop;
	end update_perms_for_server_group;
end rhn_cache;
 
/

-- created by Oraschemadoc Mon Aug 31 10:54:39 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "MIM1"."RHN_PROD_LINE_MOD_TRIG" 
before insert or update on rhnProductLine
for each row
begin
	:new.modified := sysdate;
	:new.last_modified := sysdate;
end;
ALTER TRIGGER "MIM1"."RHN_PROD_LINE_MOD_TRIG" ENABLE
 
/

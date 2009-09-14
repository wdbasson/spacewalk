-- created by Oraschemadoc Mon Aug 31 10:54:41 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "MIM1"."LOOKUP_CONFIG_FILENAME" (name_in IN VARCHAR2)
RETURN NUMBER
IS
	PRAGMA AUTONOMOUS_TRANSACTION;
	name_id		NUMBER;
BEGIN
	SELECT id
          INTO name_id
          FROM rhnConfigFileName
         WHERE path = name_in;

	RETURN name_id;
EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO rhnConfigFileName (id, path)
                VALUES (rhn_cfname_id_seq.nextval, name_in)
                RETURNING id INTO name_id;
            COMMIT;
	RETURN name_id;
END;
 
/

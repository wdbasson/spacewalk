-- created by Oraschemadoc Mon Aug 31 10:53:16 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNACTIONCONFIGREVISIONRESULT" 
   (	"ACTION_CONFIG_REVISION_ID" NUMBER NOT NULL ENABLE, 
	"RESULT" BLOB, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONCFR_ACRID_FK" FOREIGN KEY ("ACTION_CONFIG_REVISION_ID")
	  REFERENCES "MIM1"."RHNACTIONCONFIGREVISION" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 LOB ("RESULT") STORE AS (
  TABLESPACE "DATA_TBS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT))  ENABLE ROW MOVEMENT 
 
/

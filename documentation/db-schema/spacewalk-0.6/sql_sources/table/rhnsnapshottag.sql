-- created by Oraschemadoc Mon Aug 31 10:53:42 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNSNAPSHOTTAG" 
   (	"SNAPSHOT_ID" NUMBER NOT NULL ENABLE, 
	"TAG_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_ID" NUMBER, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ST_SSID_FK" FOREIGN KEY ("SNAPSHOT_ID")
	  REFERENCES "MIM1"."RHNSNAPSHOT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_ST_TID_FK" FOREIGN KEY ("TAG_ID")
	  REFERENCES "MIM1"."RHNTAG" ("ID") ENABLE, 
	 CONSTRAINT "RHN_ST_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

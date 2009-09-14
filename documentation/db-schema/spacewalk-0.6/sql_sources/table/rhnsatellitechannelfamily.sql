-- created by Oraschemadoc Mon Aug 31 10:53:36 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNSATELLITECHANNELFAMILY" 
   (	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"CHANNEL_FAMILY_ID" NUMBER NOT NULL ENABLE, 
	"QUANTITY" NUMBER, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SAT_CF_SID_CFID_UQ" UNIQUE ("SERVER_ID", "CHANNEL_FAMILY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_SAT_CF_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SAT_CF_CFID_FK" FOREIGN KEY ("CHANNEL_FAMILY_ID")
	  REFERENCES "MIM1"."RHNCHANNELFAMILY" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

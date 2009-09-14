-- created by Oraschemadoc Mon Aug 31 10:53:32 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNPACKAGEKEY" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"KEY_ID" VARCHAR2(64) NOT NULL ENABLE, 
	"KEY_TYPE_ID" NUMBER NOT NULL ENABLE, 
	"PROVIDER_ID" NUMBER, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PKEY_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_PKEY_KEYID_UQ" UNIQUE ("KEY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_PKEY_TYPE_ID_PRID_FK" FOREIGN KEY ("KEY_TYPE_ID")
	  REFERENCES "MIM1"."RHNPACKAGEKEYTYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_PKEY_PRID_FK" FOREIGN KEY ("PROVIDER_ID")
	  REFERENCES "MIM1"."RHNPACKAGEPROVIDER" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 
/

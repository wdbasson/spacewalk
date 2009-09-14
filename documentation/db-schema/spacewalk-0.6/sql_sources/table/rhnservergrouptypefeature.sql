-- created by Oraschemadoc Mon Aug 31 10:53:39 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNSERVERGROUPTYPEFEATURE" 
   (	"SERVER_GROUP_TYPE_ID" NUMBER NOT NULL ENABLE, 
	"FEATURE_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SGT_SGID_FK" FOREIGN KEY ("SERVER_GROUP_TYPE_ID")
	  REFERENCES "MIM1"."RHNSERVERGROUPTYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SGT_FID_FK" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "MIM1"."RHNFEATURE" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

-- created by Oraschemadoc Mon Aug 31 10:53:35 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNREGTOKENGROUPS" 
   (	"TOKEN_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_GROUP_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_REG_TOK_GRP_ID_FK" FOREIGN KEY ("TOKEN_ID")
	  REFERENCES "MIM1"."RHNREGTOKEN" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_REG_TOK_GRP_SGS_FK" FOREIGN KEY ("SERVER_GROUP_ID")
	  REFERENCES "MIM1"."RHNSERVERGROUP" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

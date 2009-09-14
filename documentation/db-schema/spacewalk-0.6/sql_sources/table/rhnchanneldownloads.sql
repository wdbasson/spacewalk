-- created by Oraschemadoc Mon Aug 31 10:53:20 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNCHANNELDOWNLOADS" 
   (	"CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"DOWNLOADS_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CD_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "MIM1"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CD_DID_FK" FOREIGN KEY ("DOWNLOADS_ID")
	  REFERENCES "MIM1"."RHNDOWNLOADS" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

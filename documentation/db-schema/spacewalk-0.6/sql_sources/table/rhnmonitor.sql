-- created by Oraschemadoc Mon Aug 31 10:53:30 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNMONITOR" 
   (	"BATCH_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"PROBE_ID" NUMBER NOT NULL ENABLE, 
	"COMPONENT" VARCHAR2(128), 
	"FIELD" VARCHAR2(128), 
	"TIMESTAMP" DATE NOT NULL ENABLE, 
	"GRANULARITY" NUMBER NOT NULL ENABLE, 
	"VALUE" VARCHAR2(4000), 
	 CONSTRAINT "RHN_MONITOR_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_MONITOR_GRANULARITY_FK" FOREIGN KEY ("GRANULARITY")
	  REFERENCES "MIM1"."RHNMONITORGRANULARITY" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

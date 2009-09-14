-- created by Oraschemadoc Mon Aug 31 10:53:40 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNSERVERPACKAGE" 
   (	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"NAME_ID" NUMBER NOT NULL ENABLE, 
	"EVR_ID" NUMBER NOT NULL ENABLE, 
	"PACKAGE_ARCH_ID" NUMBER, 
	 FOREIGN KEY ("SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE, 
	 FOREIGN KEY ("NAME_ID")
	  REFERENCES "MIM1"."RHNPACKAGENAME" ("ID") ENABLE, 
	 FOREIGN KEY ("EVR_ID")
	  REFERENCES "MIM1"."RHNPACKAGEEVR" ("ID") ENABLE, 
	 FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "MIM1"."RHNPACKAGEARCH" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

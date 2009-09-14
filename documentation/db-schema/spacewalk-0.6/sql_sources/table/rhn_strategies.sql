-- created by Oraschemadoc Mon Aug 31 10:53:54 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHN_STRATEGIES" 
   (	"RECID" NUMBER(12,0) NOT NULL ENABLE, 
	"NAME" VARCHAR2(80), 
	"COMP_CRIT" VARCHAR2(80), 
	"ESC_CRIT" VARCHAR2(80), 
	"CONTACT_STRATEGY" VARCHAR2(32), 
	"ACK_COMPLETED" VARCHAR2(32), 
	 CONSTRAINT "RHN_STRAT_RECID_CK" CHECK (recid > 0) ENABLE, 
	 CONSTRAINT "RHN_STRAT_CONT_STRAT_CK" CHECK (contact_strategy in ( 'Broadcast' , 'Escalate' )) ENABLE, 
	 CONSTRAINT "RHN_STRAT_ACK_COMP_CK" CHECK (ack_completed in ( 'All' , 'One' , 'No' )) ENABLE, 
	 CONSTRAINT "RHN_STRAT_RECID_PK" PRIMARY KEY ("RECID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/

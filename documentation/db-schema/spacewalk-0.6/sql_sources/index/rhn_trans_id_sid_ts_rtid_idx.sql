-- created by Oraschemadoc Mon Aug 31 10:54:25 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "MIM1"."RHN_TRANS_ID_SID_TS_RTID_IDX" ON "MIM1"."RHNTRANSACTION" ("ID", "SERVER_ID", "TIMESTAMP", "RPM_TRANS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 
/

-- created by Oraschemadoc Mon Aug 31 10:54:04 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "MIM1"."RHN_CONFINFO_UGF_UQ" ON "MIM1"."RHNCONFIGINFO" ("USERNAME", "GROUPNAME", "FILEMODE", "SELINUX_CTX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 
/

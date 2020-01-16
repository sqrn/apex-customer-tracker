prompt --application/deployment/install/upgrade_eba_cust_type
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17025291578396208849)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'eba_cust_type'
,p_sequence=>390
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_TYPE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_type (',
'   id                      number       not null,',
'   row_version_number      number,',
'   type                  varchar2(60) not null,',
'   description             varchar2(4000) ,',
'   is_active               varchar2(1)  default ''Y'',',
'',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_type',
'   add constraint eba_cust_type_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_type_uk on eba_cust_type(type)',
'/',
'alter table eba_cust_type',
'   add constraint eba_cust_type_uk',
'       unique (type)',
'       using index eba_cust_type_uk',
'/',
'',
'',
'create or replace trigger biu_eba_cust_type',
'   before insert or update on eba_cust_type',
'   for each row',
'   begin',
'      if inserting then',
'         if :NEW.ID is null then',
'            select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'            into :new.id',
'           from dual;',
'         end if;',
'         :NEW.CREATED := localtimestamp;',
'         :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'         :NEW.UPDATED := localtimestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := 1;',
'      end if;',
'',
'      if updating then',
'         :NEW.UPDATED := localtimestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'      end if;',
'   end;',
'/',
'show errors',
'',
'insert into eba_cust_type (id, type, Description ) values (1,''Production / Closed'', ''Production / Closed'');',
'insert into eba_cust_type (id, type, Description ) values (2,''Evaluation / Testing'', ''Evaluation / Testing'');',
'insert into eba_cust_type (id, type, Description ) values (3,''Proof of Concept (PoC)'', ''Proof of Concept (PoC)'');',
'insert into eba_cust_type (id, type, Description ) values (4,''Planning / Prospecting'', ''Planning / Prospecting'');',
'commit;'))
);
end;
/

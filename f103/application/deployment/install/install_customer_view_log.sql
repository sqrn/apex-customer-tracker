prompt --application/deployment/install/install_customer_view_log
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684358513509895919)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'customer view log'
,p_sequence=>290
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_views_log (',
'   id                 number          not null,',
'   row_version_number NUMBER,',
'   table_primary_id   number,',
'   view_type          varchar2(10),',
'   view_count         NUMBER default 1,',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_views_log',
'   add constraint eba_cust_views_log_pk',
'       primary key (id)',
'/',
'',
'create or replace trigger bi_eba_cust_views_log',
'   before insert on eba_cust_views_log',
'   for each row',
'   begin',
'      if inserting then',
'         if :NEW.ID is null then',
'            select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'              into :new.id',
'              from dual;',
'         End if;',
'         :NEW.CREATED := localtimestamp;',
'         :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'         :NEW.UPDATED := localtimestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := 1;',
'      end if;',
'   ',
'      if updating then',
'         :NEW.UPDATED := localtimestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'      end if;',
'   end;',
'/',
'',
'',
'',
''))
);
end;
/

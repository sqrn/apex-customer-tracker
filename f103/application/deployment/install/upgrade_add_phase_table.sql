prompt --application/deployment/install/upgrade_add_phase_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15842862526488766692)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add phase table'
,p_sequence=>260
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_REF_PHASE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_ref_phase (',
'   id                      number       not null,',
'   status                  varchar2(60) not null,',
'   description             varchar2(4000),',
'   is_an_active_reference  varchar2(1) not null,',
'   display_sequence        number,',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_ref_phase add ',
'constraint eba_cust_ref_phase_pk primary key (id)',
'/',
'',
'create unique index eba_cust_ref_phase_uk on eba_cust_ref_phase(status)',
'/',
'',
'alter table eba_cust_ref_phase',
'   add constraint eba_cust_ref_phase_uk',
'       unique (status)',
'       using index eba_cust_ref_phase_uk',
'/',
'',
'',
'create or replace trigger biu_eba_cust_ref_phase',
'   before insert or update on eba_cust_ref_phase',
'   for each row',
'begin',
'   if inserting then',
'      if :NEW.ID is null then',
'        select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'        into :new.id',
'        from dual;',
'      end if;',
'      :NEW.CREATED := localtimestamp;',
'      :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'      :NEW.UPDATED := localtimestamp;',
'      :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'   end if;',
'   if updating then',
'      :NEW.UPDATED := localtimestamp;',
'      :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'   end if;',
'end;',
'/',
'show errors',
'',
'insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (1, ''Phase 1'',''Candidates and Discovery'',''N'',1);',
'insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (2, ''Phase 2'',''Active Discussions'',''N'',2);',
'insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (3, ''Phase 3'',''Engaged With Customer'',''N'',3);',
'insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (4, ''Phase 4'',''Reference Available and Published'',''Y'',4);',
'commit;'))
);
end;
/

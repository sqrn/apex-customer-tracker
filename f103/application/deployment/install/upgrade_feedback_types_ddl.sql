prompt --application/deployment/install/upgrade_feedback_types_ddl
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18754220075735428915)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Feedback Types DDL'
,p_sequence=>460
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_FEEDBACK_TYPES'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_feedback_types',
'(',
'    id             number constraint eba_cust_feedback_types_pk not null primary key,',
'    type           varchar2(30),',
'    created        timestamp with local time zone,',
'    created_by     varchar2(255),',
'    updated        timestamp with local time zone,',
'    updated_by     varchar2(255)',
');',
'',
'create or replace trigger eba_cust_feedback_types_biu',
'    before insert or update ',
'    on eba_cust_feedback_types',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := NVL(V(''APP_USER''),user);',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := NVL(V(''APP_USER''),user);',
'end;',
'/',
'',
'alter trigger eba_cust_feedback_types_biu enable',
'/'))
);
end;
/

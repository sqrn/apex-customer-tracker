prompt --application/deployment/install/install_content_validation_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14957696824850754065)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Content Validation Table'
,p_sequence=>550
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_verifications',
'(',
'    id                   number primary key,',
'    cust_id              number,',
'    verified_by          varchar2(255) not null,',
'    verification_comment varchar2(4000),',
'    created              timestamp(6) with local time zone,',
'    created_by           varchar2(255),',
'    updated              timestamp(6) with local time zone,',
'    updated_by           varchar2(255)',
');',
'/',
'',
'create index eba_cust_verify_idx1 on eba_cust_verifications (cust_id);',
'    ',
'create or replace trigger eba_cust_verify_biu_fer',
'   before insert or update on eba_cust_verifications',
'   for each row',
'begin',
'   if :new.id is null then',
'     :new.id := eba_cust_seq.nextval;',
'   end if;',
'   if inserting then',
'       :new.created := localtimestamp;',
'       :new.created_by := nvl(apex_application.g_user,user);',
'   end if;',
'   if inserting or updating then',
'       :new.updated := localtimestamp;',
'       :new.updated_by := nvl(apex_application.g_user,user);',
'   end if;',
'end;',
'/',
'',
'alter trigger eba_cust_verify_biu_fer enable;',
''))
);
end;
/

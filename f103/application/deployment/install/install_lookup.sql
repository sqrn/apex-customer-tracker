prompt --application/deployment/install/install_lookup
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684355933071863778)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'lookup'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_error_lookup (',
'    constraint_name         varchar2(30)        not null',
'                                                constraint eba_cust_error_lookup_pk',
'                                                primary key,',
'    message                 varchar2(4000)      not null,',
'    language_code           varchar2(30)        not null',
')',
'/',
'create unique index eba_cust_error_lookup_uk on eba_cust_error_lookup (constraint_name,language_code);',
'',
'',
''))
);
end;
/

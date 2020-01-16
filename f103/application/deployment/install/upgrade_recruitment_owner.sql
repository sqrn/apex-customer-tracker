prompt --application/deployment/install/upgrade_recruitment_owner
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15867772402378747496)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'recruitment owner'
,p_sequence=>300
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''REF_RECRUITMENT_OWNER'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_CUST_CUSTOMERS add REF_RECRUITMENT_OWNER   varchar2(255);',
''))
);
end;
/

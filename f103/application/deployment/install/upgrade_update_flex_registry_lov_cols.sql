prompt --application/deployment/install/upgrade_update_flex_registry_lov_cols
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15089106724000048000)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Update Flex Registry LOV cols'
,p_sequence=>130
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_FLEX_REGISTRY''',
'    and column_name = ''LOV_DISPLAY_COL'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_flex_registry',
'add ( lov_display_col varchar2(30),',
'      lov_return_col  varchar2(30)',
')',
'/',
''))
);
end;
/

prompt --application/deployment/install/upgrade_remove_help_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14878188706354433824)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Remove Help Table'
,p_sequence=>140
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name = ''EBA_CUST_HELP_PAGE'''))
,p_script_clob=>'drop table eba_cust_help_page;'
);
end;
/

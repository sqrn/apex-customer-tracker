prompt --application/deployment/install/upgrade_add_logo_columns_to_customers_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14490106929570106094)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add logo columns to customers table'
,p_sequence=>360
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''LOGO_BLOB'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add (',
'    logo_blob     blob,',
'    logo_name     varchar2(512),',
'    logo_mimetype varchar2(512),',
'    logo_charset  varchar2(512),',
'    logo_lastupd  date',
');'))
);
end;
/

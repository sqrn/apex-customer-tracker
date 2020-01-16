prompt --application/deployment/install/upgrade_add_party_attributes
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17166583960227801287)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add party attributes'
,p_sequence=>430
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''PARTY_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add support_id            varchar2(50);',
'',
'alter table eba_cust_customers add party_id            varchar2(50);',
'',
'alter table eba_cust_customers add parent_party_id     varchar2(50);',
'',
'alter table eba_cust_customers add party_name          varchar2(255);',
'',
'alter table eba_cust_customers add partent_party_name  varchar2(255);',
''))
);
end;
/

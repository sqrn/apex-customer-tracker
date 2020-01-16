prompt --application/deployment/install/upgrade_add_total_contract_value_discount_level_to_customers_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(1178174735097967323)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Add total_contract_value & discount_level to Customers table'
,p_sequence=>520
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name in (''TOTAL_CONTRACT_VALUE'', ''DISCOUNT_LEVEL'')'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add (total_contract_value number, discount_level number);',
'',
'alter table eba_cust_customers add  annual_recurring_revenue      number;',
'alter table eba_cust_customers add  currency                      varchar2(20);'))
);
end;
/

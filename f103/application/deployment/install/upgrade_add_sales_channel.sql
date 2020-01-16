prompt --application/deployment/install/upgrade_add_sales_channel
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15867772196422745339)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add sales channel'
,p_sequence=>290
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''SALES_CHANNEL_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_CUST_CUSTOMERS add SALES_CHANNEL_ID number;',
'/',
'',
'alter table eba_cust_customers',
'   add constraint eba_customers_channel_fk',
'       foreign key (sales_channel_id)',
'       references eba_cust_sales_channel(id) on delete set null',
'/',
'',
'create index eba_cust_customers_05 on eba_cust_customers (sales_channel_id);'))
);
end;
/

prompt --application/deployment/install/upgrade_add_parent_customer_id
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18756985385190941512)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Add parent_customer_id'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''PARENT_CUSTOMER_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers',
'    add ( parent_customer_id number,',
'        customer_account_number varchar2(255) )',
'/',
'alter table eba_cust_customers',
'    add constraint eba_customers_parent_fk',
'        foreign key (parent_customer_id)',
'        references eba_cust_customers (id) on delete cascade',
'/',
'create index eba_cust_customers_07 on eba_cust_customers (parent_customer_id);',
'/'))
);
end;
/

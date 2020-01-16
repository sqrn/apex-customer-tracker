prompt --application/deployment/install/upgrade_country_id_in_customers_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16954457232803328616)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'country_id in customers table'
,p_sequence=>380
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''COUNTRY_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add country_id number',
'/',
'alter table eba_cust_customers',
'   add constraint eba_customers_country_fk',
'       foreign key (country_id)',
'       references eba_cust_countries (id) on delete cascade',
'/',
'drop index eba_cust_customers_04',
'/',
'create index eba_cust_customers_04 on eba_cust_customers (geography_id,country_id)',
'/'))
);
end;
/

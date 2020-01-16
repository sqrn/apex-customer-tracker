prompt --application/deployment/install/upgrade_type_id_into_customers_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17025317274118266396)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'type_id into customers table'
,p_sequence=>400
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''TYPE_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add type_id number',
'/',
'alter table eba_cust_customers',
'   add constraint eba_customers_type_fk',
'       foreign key (type_id)',
'       references eba_cust_type (id) on delete cascade',
'/',
'create index eba_cust_customers_08 on eba_cust_customers (type_id)',
'/'))
);
end;
/

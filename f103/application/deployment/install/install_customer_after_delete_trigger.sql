prompt --application/deployment/install/install_customer_after_delete_trigger
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(4038233184696113730)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'customer after delete trigger'
,p_sequence=>640
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger ad_eba_cust_customers',
'    after delete on eba_cust_customers',
'    for each row',
'begin',
'    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value)',
'    values ',
'    (''CUSTOMERS'', :old.row_key, :old.id, ''CUSTOMER_REMOVED'', substr(:old.customer_name,0,4000), null ); ',
'end ad_eba_cust_customers;',
'/',
'alter trigger ad_eba_cust_customers enable',
'/'))
);
end;
/

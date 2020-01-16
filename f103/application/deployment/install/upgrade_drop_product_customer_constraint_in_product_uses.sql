prompt --application/deployment/install/upgrade_drop_product_customer_constraint_in_product_uses
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14267308306518118745)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Drop product/customer constraint in product uses'
,p_sequence=>320
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_constraints',
'where constraint_name = ''EBA_CUST_PRODUCT_USES_UK'''))
,p_script_clob=>'alter table eba_cust_product_uses drop constraint EBA_CUST_PRODUCT_USES_UK;'
);
end;
/

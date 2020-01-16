prompt --application/deployment/install/upgrade_drop_index_eba_cust_product_uses_uk
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14267338844194137702)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'drop index EBA_CUST_PRODUCT_USES_UK'
,p_sequence=>330
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from user_indexes',
'where index_name = ''EBA_CUST_PRODUCT_USES_UK'''))
,p_script_clob=>'drop index EBA_CUST_PRODUCT_USES_UK;'
);
end;
/

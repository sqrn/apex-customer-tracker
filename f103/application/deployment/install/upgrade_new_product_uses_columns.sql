prompt --application/deployment/install/upgrade_new_product_uses_columns
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14267179279345996064)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'New Product Uses Columns'
,p_sequence=>310
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_PRODUCT_USES''',
'    and column_name = ''REFERENCE_TYPE_IDS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_product_uses add (',
'    reference_type_ids varchar2(4000),',
'    internal_contact varchar2(255),',
'    customer_contact_id number,',
'    reference_status_id number,',
'    valid_from timestamp with local time zone,',
'    valid_to timestamp with local time zone,',
'    comments varchar2(4000)',
');'))
);
end;
/

prompt --application/deployment/install/upgrade_add_reference_phase_id
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15843012005702454662)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add reference_phase_id'
,p_sequence=>270
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''REFERENCE_PHASE_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add reference_phase_id number;',
''))
);
end;
/

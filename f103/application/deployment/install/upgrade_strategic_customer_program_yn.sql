prompt --application/deployment/install/upgrade_strategic_customer_program_yn
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16911843880969242984)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'strategic_customer_program_yn'
,p_sequence=>370
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''STRATEGIC_CUSTOMER_PROGRAM_YN'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add strategic_customer_program_yn varchar2(1) default ''N''',
'/'))
);
end;
/

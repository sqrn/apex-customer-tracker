prompt --application/deployment/install/upgrade_add_contact_columns
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14873354213983692766)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add contact columns'
,p_sequence=>90
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CONTACTS''',
'    and column_name = ''FACEBOOK'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_contacts add facebook varchar2(4000);',
'alter table eba_cust_contacts add linkedin varchar2(4000);',
'alter table eba_cust_contacts add twitter  varchar2(4000);',
'',
''))
);
end;
/

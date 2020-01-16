prompt --application/deployment/install/upgrade_add_eba_cust_prod_uses_contact_fk
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14310750813614742998)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'add eba_cust_prod_uses_contact_fk'
,p_sequence=>340
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_constraints',
'where constraint_name = ''EBA_CUST_PROD_USES_CONTACT_FK'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_product_uses',
'   add constraint eba_cust_prod_uses_contact_fk',
'       foreign key (customer_contact_id)',
'       references eba_cust_contacts (id) on delete cascade',
'/',
'show errors'))
);
end;
/

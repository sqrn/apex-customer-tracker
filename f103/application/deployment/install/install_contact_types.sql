prompt --application/deployment/install/install_contact_types
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684357717187887587)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'contact types'
,p_sequence=>220
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_contact_types (',
'   id                      number       not null,',
'   row_version_number      number,',
'   contact_type            varchar2(60) not null,',
'   is_active               varchar2(1)  default ''Y'',',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_contact_types',
'   add constraint eba_cust_contact_types_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_contact_types_uk on eba_cust_contact_types(contact_type)',
'/',
'alter table eba_cust_contact_types',
'   add constraint eba_cust_contact_types_uk',
'       unique (contact_type)',
'       using index eba_cust_contact_types_uk',
'/',
'',
'',
'',
''))
);
end;
/

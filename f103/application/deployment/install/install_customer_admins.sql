prompt --application/deployment/install/install_customer_admins
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684358720781898097)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'customer admins'
,p_sequence=>300
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_administrators (',
'    id                      number        not null,',
'    row_version_number      number,',
'    app_user                varchar2(255) not null,',
'    --',
'    created               timestamp with local time zone not null,',
'    created_by            varchar2(255) not null,',
'    updated               timestamp with local time zone,',
'    updated_by            varchar2(255)',
'   )',
'/',
'alter table eba_cust_administrators',
'   add constraint eba_cust_administrators_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_administrators_uk on eba_cust_administrators(app_user)',
'/',
'alter table eba_cust_administrators',
'   add constraint eba_cust_administrators_uk',
'       unique (app_user)',
'       using index eba_cust_administrators_uk',
'/',
'',
'',
'',
''))
);
end;
/

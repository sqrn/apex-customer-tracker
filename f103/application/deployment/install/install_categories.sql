prompt --application/deployment/install/install_categories
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684356701473873560)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'categories'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_categories',
'(',
'   id                      number       not null,',
'   row_version_number      number,',
'   category                varchar2(60) not null,',
'   description             varchar2(255) ,',
'   is_active               varchar2(1) default ''Y'',',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_categories',
'   add constraint eba_cust_categories_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_categories_uk on eba_cust_categories(category)',
'/',
'alter table eba_cust_categories',
'   add constraint eba_cust_categories_uk',
'       unique (category)',
'       using index eba_cust_categories_uk',
'/',
'',
'',
'',
''))
);
end;
/

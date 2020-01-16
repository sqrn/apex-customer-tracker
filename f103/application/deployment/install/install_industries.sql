prompt --application/deployment/install/install_industries
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684356318311868972)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'industries'
,p_sequence=>140
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_industries (',
'    id                    number not null,',
'    row_version_number    number,',
'    industry_name         varchar2(255),',
'    --',
'    created               timestamp with local time zone not null,',
'    created_by            varchar2(255) not null,',
'    updated               timestamp with local time zone,',
'    updated_by            varchar2(255)',
'   )',
'/',
'alter table eba_cust_industries',
'   add constraint eba_cust_industries_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_industries_uk on eba_cust_industries(industry_name)',
'/',
'alter table eba_cust_industries',
'   add constraint eba_cust_industries_uk',
'       unique (industry_name)',
'       using index eba_cust_industries_uk',
'/',
'',
'',
'',
''))
);
end;
/

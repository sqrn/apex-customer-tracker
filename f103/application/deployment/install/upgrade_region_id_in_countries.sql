prompt --application/deployment/install/upgrade_region_id_in_countries
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17191709408579208047)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'region_id in countries'
,p_sequence=>440
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_COUNTRIES''',
'    and column_name = ''REGION_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_countries add region_id number',
'/',
'alter table eba_cust_countries',
'   add constraint eba_countries_region_fk',
'       foreign key (region_id)',
'       references eba_cust_geographies (id) on delete cascade',
'/'))
);
end;
/

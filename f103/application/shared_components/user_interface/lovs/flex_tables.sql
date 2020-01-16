prompt --application/shared_components/user_interface/lovs/flex_tables
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14876078109209830844)
,p_lov_name=>'FLEX_TABLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct  initcap(replace(f.flexible_table, ''EBA_CUST_'', null)) display_value,',
'    f.flexible_table return_value',
'from',
'    eba_cust_flex_registry f',
'where',
'    (select count(*) from eba_cust_flex_registry where flexible_table = f.flexible_table and assigned_yn = ''Y'') < (select count(*) from user_tab_columns where table_name = f.flexible_table and lower(column_name) like ''%flex%'')',
'order by',
'    1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

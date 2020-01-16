prompt --application/shared_components/user_interface/lovs/eba_cust_tables
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17827563038790625508)
,p_lov_name=>'EBA_CUST_TABLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name d, table_name r',
'from   user_tables',
'where table_name like ''EBA_CUST_%''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

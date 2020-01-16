prompt --application/shared_components/user_interface/lovs/countries_p2
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17332570187185195658)
,p_lov_name=>'COUNTRIES_P2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name as d,',
'       id as r',
'  from EBA_CUST_COUNTRIES',
' where display_yn = ''Y''',
'   and region_id = :P2_GEOGRAPHY_ID',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

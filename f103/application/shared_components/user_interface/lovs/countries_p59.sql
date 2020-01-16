prompt --application/shared_components/user_interface/lovs/countries_p59
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17417440350206111657)
,p_lov_name=>'COUNTRIES_P59'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name as d,',
'       id as r',
'  from EBA_CUST_COUNTRIES',
' where display_yn = ''Y''',
'   and (',
'           (nvl(:P59_GEO,0) = 0 and id is not null)',
'           or',
'           (nvl(:P59_GEO,0)  > 0 and region_id = :P59_GEO)',
'       )',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

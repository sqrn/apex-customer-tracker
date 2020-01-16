prompt --application/shared_components/user_interface/lovs/geography
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14888499748092095001)
,p_lov_name=>'GEOGRAPHY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GEOGRAPHY_NAME display_value, ID return_value ',
'from EBA_CUST_GEOGRAPHIES',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

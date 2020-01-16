prompt --application/shared_components/user_interface/lovs/p2_industry_id_lookup
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14847584322742217078)
,p_lov_name=>'P2_INDUSTRY_ID LOOKUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INDUSTRY_NAME display_value, ID return_value ',
'from EBA_CUST_INDUSTRIES',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

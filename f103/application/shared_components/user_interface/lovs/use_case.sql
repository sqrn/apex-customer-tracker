prompt --application/shared_components/user_interface/lovs/use_case
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17151237967814073318)
,p_lov_name=>'USE_CASE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select use_case d, id r',
'from   EBA_CUST_USE_CASE',
'where is_active = ''Y''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

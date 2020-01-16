prompt --application/shared_components/user_interface/lovs/reference_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15665595116123675896)
,p_lov_name=>'REFERENCE_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reference_type d, id r',
'from eba_cust_reference_types',
'where is_active = ''Y''',
'order by upper(reference_type)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

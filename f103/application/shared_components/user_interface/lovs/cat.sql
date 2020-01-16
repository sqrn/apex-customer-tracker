prompt --application/shared_components/user_interface/lovs/cat
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14888502987999115692)
,p_lov_name=>'CAT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/contact_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16618597411914423810)
,p_lov_name=>'CONTACT TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select contact_type d, id r',
'  from EBA_CUST_CONTACT_TYPES',
' where is_active = ''Y''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

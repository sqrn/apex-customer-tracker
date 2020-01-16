prompt --application/shared_components/user_interface/lovs/active_contact_types_p20
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17851726447805115188)
,p_lov_name=>'ACTIVE_CONTACT_TYPES_P20'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select contact_type d, id r',
'  from EBA_CUST_CONTACT_TYPES',
' where is_active = ''Y''',
'    or ID = :P20_CONTACT_TYPE_ID',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

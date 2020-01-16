prompt --application/shared_components/user_interface/lovs/type
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17064978456610711222)
,p_lov_name=>'TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type d, id r',
'from   EBA_CUST_TYPE',
'where is_active = ''Y''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/active_categories_p2
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17851726050188115188)
,p_lov_name=>'ACTIVE_CATEGORIES_P2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
'    or ID = :P2_CATEGORY_ID',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/activity_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18169656681694026342)
,p_lov_name=>'ACTIVITY TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_activity_types',
'order by lower(name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

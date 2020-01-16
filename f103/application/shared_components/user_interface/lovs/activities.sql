prompt --application/shared_components/user_interface/lovs/activities
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18169665415338030480)
,p_lov_name=>'ACTIVITIES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_activities',
'order by lower(name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

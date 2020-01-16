prompt --application/shared_components/user_interface/lovs/feedback_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18754503223596506258)
,p_lov_name=>'FEEDBACK TYPES'
,p_lov_query=>'select type, id from eba_cust_feedback_types order by id'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

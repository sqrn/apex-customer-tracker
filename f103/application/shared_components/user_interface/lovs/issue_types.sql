prompt --application/shared_components/user_interface/lovs/issue_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2589887001996474834)
,p_lov_name=>'ISSUE TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(2589887001996474834)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2589887342225474835)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bug'
,p_lov_return_value=>'BUG'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2589887747061474837)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Enhancement Request'
,p_lov_return_value=>'ER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2589888143478474837)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTHER'
);
end;
/

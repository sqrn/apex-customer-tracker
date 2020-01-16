prompt --application/shared_components/user_interface/lovs/marquee
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14782549628816231702)
,p_lov_name=>'MARQUEE'
,p_lov_query=>'.'||wwv_flow_api.id(14782549628816231702)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14782549827783231702)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14782550108663231702)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
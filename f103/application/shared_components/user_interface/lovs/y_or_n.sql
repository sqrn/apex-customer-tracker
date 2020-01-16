prompt --application/shared_components/user_interface/lovs/y_or_n
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17826171223649277706)
,p_lov_name=>'Y_OR_N'
,p_lov_query=>'.'||wwv_flow_api.id(17826171223649277706)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17826171431833277716)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17826171642035277725)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
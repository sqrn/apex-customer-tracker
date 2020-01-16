prompt --application/shared_components/user_interface/lovs/date_format_option
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18157224269357599186)
,p_lov_name=>'DATE_FORMAT_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(18157224269357599186)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18157224601565599189)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
end;
/

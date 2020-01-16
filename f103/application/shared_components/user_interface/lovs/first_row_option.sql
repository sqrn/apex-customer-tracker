prompt --application/shared_components/user_interface/lovs/first_row_option
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15710179516446573270)
,p_lov_name=>'FIRST_ROW_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(15710179516446573270)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15710179820787573270)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
end;
/

prompt --application/shared_components/user_interface/lovs/is_active
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14311790506442261339)
,p_lov_name=>'IS ACTIVE'
,p_lov_query=>'.'||wwv_flow_api.id(14311790506442261339)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14311790705417261343)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'Y'
);
end;
/

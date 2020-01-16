prompt --application/shared_components/user_interface/lovs/flex_lov_type
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14880050133653744195)
,p_lov_name=>'FLEX_LOV_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(14880050133653744195)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14880050425947744201)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Static List of Values'
,p_lov_return_value=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14880050716092744207)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Dynamic List of Values (based on a SQL Query)'
,p_lov_return_value=>'DYNAMIC'
);
end;
/

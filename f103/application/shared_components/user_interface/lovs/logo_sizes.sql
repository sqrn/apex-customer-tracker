prompt --application/shared_components/user_interface/lovs/logo_sizes
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15067864303915294808)
,p_lov_name=>'LOGO SIZES'
,p_lov_query=>'.'||wwv_flow_api.id(15067864303915294808)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15067864600109294810)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Small'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15067865002837294811)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Medium'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15067865448297294812)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Large'
,p_lov_return_value=>'L'
);
end;
/

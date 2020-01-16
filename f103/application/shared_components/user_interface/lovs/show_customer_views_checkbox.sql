prompt --application/shared_components/user_interface/lovs/show_customer_views_checkbox
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17973462881418414845)
,p_lov_name=>'SHOW CUSTOMER VIEWS CHECKBOX'
,p_lov_query=>'.'||wwv_flow_api.id(17973462881418414845)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17973463290837414849)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Show Customer Views'
,p_lov_return_value=>'Y'
);
end;
/

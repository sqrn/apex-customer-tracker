prompt --application/shared_components/user_interface/lovs/homepage_display_as
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1173926844039813688)
,p_lov_name=>'HOMEPAGE_DISPLAY_AS'
,p_lov_query=>'.'||wwv_flow_api.id(1173926844039813688)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1173927029775813689)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1173927825983813690)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Logo View'
,p_lov_return_value=>'LOGOS'
,p_lov_template=>'<span class="t-Icon fa fa-tiles-2x2" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>'APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(''CONTRIBUTION RIGHTS'')'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1173927482880813690)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Report View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/

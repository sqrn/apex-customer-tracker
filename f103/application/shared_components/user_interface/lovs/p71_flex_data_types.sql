prompt --application/shared_components/user_interface/lovs/p71_flex_data_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14877827421190933689)
,p_lov_name=>'P71_FLEX_DATA_TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(14877827421190933689)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14877828002485933699)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Date Picker'
,p_lov_return_value=>'DATE'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>':P71_FLEXIBLE_COLUMN like ''%FLEX_D%'''
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14877827725019933693)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Number Field'
,p_lov_return_value=>'NUMBER'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>':P71_FLEXIBLE_COLUMN like ''%FLEX_N%'''
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14877828933537933699)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Select List'
,p_lov_return_value=>'SELECT_LIST'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P71_FLEXIBLE_COLUMN not like ''%FLEX_CLOB''',
'    and :P71_FLEXIBLE_COLUMN not like ''%FLEX_D%'''))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14877828325614933699)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Text Field'
,p_lov_return_value=>'TEXT'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P71_FLEXIBLE_COLUMN not like ''%FLEX_N%''',
'    and :P71_FLEXIBLE_COLUMN not like ''%FLEX_D%''',
'    and :P71_FLEXIBLE_COLUMN not like ''%FLEX_CLOB'''))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14877828629433933699)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Text Area'
,p_lov_return_value=>'TEXTAREA'
,p_lov_disp_cond_type=>'PLSQL_EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P71_FLEXIBLE_COLUMN not like ''%FLEX_N%''',
'    and :P71_FLEXIBLE_COLUMN not like ''%FLEX_D%'''))
);
end;
/

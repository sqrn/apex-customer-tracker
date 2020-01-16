prompt --application/shared_components/navigation/lists/create_flex_field_train
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(14876854413971041054)
,p_name=>'Create Flex Field Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14876854631446041086)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Source'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14876854909368041099)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Flex Column'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14876855209405041099)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Form Element'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14880205015777379956)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Select List Options'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'PLSQL_EXPRESSION'
,p_list_item_disp_condition=>':P82_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P82_LOV_TYPE = ''STATIC'''
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14876855514719041099)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Confirm'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/

prompt --application/shared_components/navigation/lists/additional_administration
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16370151920033896105)
,p_name=>'Additional Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16370152132056896106)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP,34:::'
,p_list_item_icon=>'fa-comment'
,p_list_text_01=>'Manage application notification text displayed on home page.  Requires Administrative privilege.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18756801300681906944)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:RP,119:::'
,p_list_item_icon=>'fa-comments-o'
,p_list_text_01=>'Report of all feedback left by application users. Feedback types include general comments, enhancement requests, and bugs.'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
,p_required_patch=>wwv_flow_api.id(18755055328776627006)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/

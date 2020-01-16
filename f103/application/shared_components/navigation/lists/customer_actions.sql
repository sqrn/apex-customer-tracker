prompt --application/shared_components/navigation/lists/customer_actions
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(14923436339517269089)
,p_name=>'Customer Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16887443900462617939)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Referenceability'
,p_list_item_link_target=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:96:P96_ID:&P50_ID.:'
,p_list_item_icon=>'fa-phone'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14923436837369269091)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Contact'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37:P37_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-user'
,p_required_patch=>wwv_flow_api.id(14979916704224806536)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2589886239160446918)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Add Issue'
,p_list_item_link_target=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-alert'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_required_patch=>wwv_flow_api.id(2589938185550905370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18205096564847080571)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Add Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-newspaper-o'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_required_patch=>wwv_flow_api.id(18162672743755673338)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14923437130667269091)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Product(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68,RIR:P68_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-square-o'
,p_required_patch=>wwv_flow_api.id(14979909416351740085)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17772496488315764800)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Add Partner(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110,RIR:P110_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-thumbs-o-up'
,p_required_patch=>wwv_flow_api.id(1363746893185822836)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17775339240974350627)
,p_list_item_display_sequence=>36
,p_list_item_link_text=>'Add Competitor(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111,RIR:P111_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-emoji-cringe'
,p_security_scheme=>wwv_flow_api.id(1384263960656570275)
,p_required_patch=>wwv_flow_api.id(1360595305281798154)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14923437376166269091)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97:P97_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14923437741339269092)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-chain'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14923439410580276865)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/

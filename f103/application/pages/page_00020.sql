prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Contact Details'
,p_step_title=>'Contact Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743894409429420397)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_step_template=>wwv_flow_api.id(14882936055368818350)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15990395708594320440)
,p_required_patch=>wwv_flow_api.id(14979916704224806536)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190710091055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17829548375530415119)
,p_plug_name=>'Contact Details'
,p_region_name=>'CONTACTS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(14882979167825818413)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14873355529483716188)
,p_plug_name=>'Social'
,p_parent_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14873358715808750079)
,p_plug_name=>'Address / Country'
,p_parent_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15721446758755694319)
,p_plug_name=>'Additional Attributes'
,p_parent_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17829548974940415122)
,p_plug_name=>'Contact Details'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17829549676416415123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17829548974940415122)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17829550065928415124)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17829548974940415122)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17829550265071415124)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17829548974940415122)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer Contact'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17829549867653415124)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17829548974940415122)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17829562486931415141)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14873354711828709805)
,p_name=>'P20_FACEBOOK'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(14873355529483716188)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facebook'
,p_source=>'FACEBOOK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Email Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14873356515481723236)
,p_name=>'P20_LINKEDIN'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(14873355529483716188)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LinkedIn'
,p_source=>'LINKEDIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Email Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14873357009012726285)
,p_name=>'P20_TWITTER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(14873355529483716188)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Twitter'
,p_source=>'TWITTER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Email Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877378719808949525)
,p_name=>'P20_CONTACT_FLEX_06'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877379008162954982)
,p_name=>'P20_CONTACT_FLEX_07'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877379330579959722)
,p_name=>'P20_CONTACT_FLEX_08'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877379613110967886)
,p_name=>'P20_CONTACT_FLEX_N01'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Required Number'
,p_source=>'CONTACT_FLEX_N01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_N01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Some help text for contacts.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877379807934970252)
,p_name=>'P20_CONTACT_FLEX_N02'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_N02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_N02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877380103621972289)
,p_name=>'P20_CONTACT_FLEX_N03'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_N03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_N03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877380532507974090)
,p_name=>'P20_CONTACT_FLEX_N04'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_N04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_N04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877381115686981870)
,p_name=>'P20_CONTACT_FLEX_D01'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_D01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_D01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877381311588983767)
,p_name=>'P20_CONTACT_FLEX_D02'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_D02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_D02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877381506412986210)
,p_name=>'P20_CONTACT_FLEX_D03'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_D03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_D03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877381701884988293)
,p_name=>'P20_CONTACT_FLEX_D04'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_D04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_D04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877382316320996743)
,p_name=>'P20_CONTACT_FLEX_CLOB'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_CLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_CLOB'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828767037644993172)
,p_name=>'P20_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name d, id r',
'from   eba_cust_customers',
'order by 1'))
,p_cSize=>64
,p_cMaxlength=>4000
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'The customer name'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829550471770415124)
,p_name=>'P20_CONTACT_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829552678821415127)
,p_name=>'P20_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829552883571415127)
,p_name=>'P20_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Contact Name.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829553383578415128)
,p_name=>'P20_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Title of Contact.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829553884609415128)
,p_name=>'P20_COMPANY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company'
,p_source=>'COMPANY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Company name.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829554384436415129)
,p_name=>'P20_ADDRESS_LINE1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address '
,p_source=>'ADDRESS_LINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829554863596415129)
,p_name=>'P20_ADDRESS_LINE2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address Line 2'
,p_source=>'ADDRESS_LINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14882995897087818452)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829555385605415130)
,p_name=>'P20_CITY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter City.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829555882242415130)
,p_name=>'P20_STATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter State.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829556370602415131)
,p_name=>'P20_COUNTRY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Country.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829556890777415131)
,p_name=>'P20_ZIP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(14873358715808750079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Zip Code.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829557368286415132)
,p_name=>'P20_EMAIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>250
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Email Address.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829557866820415132)
,p_name=>'P20_PHONE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Phone Number.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829558374671415133)
,p_name=>'P20_CELL_PHONE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cell Phone'
,p_source=>'CELL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Mobile Phone Number.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829558872150415133)
,p_name=>'P20_FAX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax'
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter Fax Number.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829559374402415134)
,p_name=>'P20_CONTACT_TYPE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;Contact Type'
,p_source=>'CONTACT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTIVE_CONTACT_TYPES_P20'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select contact_type d, id r',
'  from EBA_CUST_CONTACT_TYPES',
' where is_active = ''Y''',
'    or ID = :P20_CONTACT_TYPE_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Select Contact Type.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829559887066415134)
,p_name=>'P20_NOTES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Enter short note about the Contact.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829560395304415135)
,p_name=>'P20_CONTACT_FLEX_01'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Role'
,p_source=>'CONTACT_FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829560592105415135)
,p_name=>'P20_CONTACT_FLEX_02'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'As additional text area item.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829560788274415135)
,p_name=>'P20_CONTACT_FLEX_03'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'As additional text area item.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829560970626415136)
,p_name=>'P20_CONTACT_FLEX_04'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'As additional text area item.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17829561182017415136)
,p_name=>'P20_CONTACT_FLEX_05'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(15721446758755694319)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACT_FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_colspan=>9
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_CONTACTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''CONTACT_FLEX_05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'As additional text area item.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17832673238572539736)
,p_name=>'P20_TAGS'
,p_item_sequence=>192
,p_item_plug_id=>wwv_flow_api.id(17829548375530415119)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_cust_tags_type_sum',
' where content_type = ''CONTACT''',
' order by 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>64
,p_cMaxlength=>4000
,p_colspan=>9
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'List of tags'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17852215988737638377)
,p_name=>'P20_REQUEST'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(17829548974940415122)
,p_use_cache_before_default=>'NO'
,p_source=>'P20_REQUEST'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>64
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14948979408826105825)
,p_validation_name=>'P20_NAME Not Null'
,p_validation_sequence=>10
,p_validation=>'return trim(:P20_NAME) is not null'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(17829552883571415127)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(299089662860566765)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>20
,p_validation=>'not regexp_like( :P20_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(17832673238572539736)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17829561566160415137)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CUST_CONTACTS'
,p_attribute_02=>'EBA_CUST_CONTACTS'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17829561779999415137)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CUST_CONTACTS'
,p_attribute_02=>'EBA_CUST_CONTACTS'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CUST_CONTACTS.'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17829561979186415137)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(17829549867653415124)
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17851155779996027280)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :REQUEST = ''CONTACTS'' then',
'   eba_cust.eba_cust_add_views_log(''CON'',:P20_ID);',
'end if ;'))
);
end;
/
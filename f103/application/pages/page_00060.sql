prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Data Load Source'
,p_step_title=>'Data Load Source'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743894409429420397)
,p_step_template=>wwv_flow_api.id(14882936055368818350)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15990395708594320440)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190325140125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15911468913760058719)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15911469323489058722)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(14882982395609818418)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(15911466929044058712)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14882995205297818451)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15911469414693058723)
,p_plug_name=>'Data Load Source'
,p_parent_plug_id=>wwv_flow_api.id(15911469323489058722)
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>30
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15911472832612058735)
,p_plug_name=>'Globalization'
,p_parent_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>40
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16688212732986024796)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is  a 3-step wizard that allows the user to upload the existing data into a specified table. ',
'The user will have two options to upload data by copy and paste to the above textarea or choosing the ',
'file that contains the Customer contacts list.',
'Both of the above will take the user to second step that allows ',
'the user to map the columns of the columns with the column names of the uploaded data.',
'The third step, is straight forward step, it shows the data after lookups keys have been ',
'fetched and allows the user to review the data before the final submit. ',
'The last step will  allow the user to see the outcome of the submitted data, will show the report of inserted/updated and failed records. The failed records are displayed with the error message showing what caused the issue. ',
'</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16688213017534029752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15911468913760058719)
,p_button_name=>'TRY_SAMPLE_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Try Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15911469810132058727)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15911469323489058722)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14882996442242818458)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15911469720945058725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15911469323489058722)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15911476016307058741)
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15911469810132058727)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911470124821058729)
,p_name=>'P60_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(15710177015962573264)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911470233498058729)
,p_name=>'P60_FILE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911471014013058732)
,p_name=>'P60_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911471523994058733)
,p_name=>'P60_ENCLOSED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911472018577058735)
,p_name=>'P60_FIRST_ROW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(15710179516446573270)||'.'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911472526633058735)
,p_name=>'P60_STOP_START_TABLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911472609070058735)
,p_name=>'P60_COPY_PASTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_item_default=>'&P60_ORIG_COPY_PASTE.'
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Copy and Paste your data here'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911473108162058736)
,p_name=>'P60_CURRENCY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15911472832612058735)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911473632604058737)
,p_name=>'P60_GROUP_SEPARATOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15911472832612058735)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911474119413058737)
,p_name=>'P60_DECIMAL_CHARACTER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15911472832612058735)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16688213431040033661)
,p_name=>'P60_SAMPLE_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16688212732986024796)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"Customer ID","Name","Title","Contact Type ID","Phone","Email"',
'',
'"Illumina","David Yvan","CFO","Other","-","-"',
'',
'"Massive Mashups","DesChamps Dio","CEO","Other","-","-"',
'',
'"Synergy Sales Solutions","Isha Ben","CFO","Other","-","-"',
'',
'"Monolithic Power Systems","Kevin Eggan","CFO","Other","-","-"',
'',
'"Monolithic Power Systems","Fabrice Inan","CFO","Other","-","-"',
'',
'"Altiris","Thomas Lin","Executive Director","Other","-","-"',
'',
'"Martek Biosciences","Josh Tenenbaum","Executive Director","Other","-","-"'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17946369073231408786)
,p_name=>'P60_ORIG_COPY_PASTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15911469414693058723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15911470821572058731)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P60_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P60_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15911469810132058727)
,p_associated_item=>wwv_flow_api.id(15911470233498058729)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17946368764112408783)
,p_validation_name=>'Paste Content before continuing'
,p_validation_sequence=>20
,p_validation=>'P60_ORIG_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P60_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15911469810132058727)
,p_associated_item=>wwv_flow_api.id(15911472609070058735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15911474511657058737)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_IMPORT_FROM'
,p_condition_element=>'P60_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911474822167058738)
,p_event_id=>wwv_flow_api.id(15911474511657058737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911475015900058739)
,p_event_id=>wwv_flow_api.id(15911474511657058737)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15911475105672058739)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_IMPORT_FROM'
,p_condition_element=>'P60_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911475427737058739)
,p_event_id=>wwv_flow_api.id(15911475105672058739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911475632290058739)
,p_event_id=>wwv_flow_api.id(15911475105672058739)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17946368201558408778)
,p_name=>'Set copy and paste textarea with sample data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16688213017534029752)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17946368961681408785)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_IMPORT_FROM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PASTE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17946368305896408779)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_COPY_PASTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'&P60_SAMPLE_DATA.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17946368636978408782)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P60_COPY_PASTE'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17946368474724408780)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1330794956433189230)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_ENCLOSED_BY'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'"'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17946368532765408781)
,p_event_id=>wwv_flow_api.id(17946368201558408778)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_FIRST_ROW'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18169305820937936641)
,p_name=>'Set orig cut paste value and submit'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15911469810132058727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18169305942069936642)
,p_event_id=>wwv_flow_api.id(18169305820937936641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_ORIG_COPY_PASTE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(''P60_COPY_PASTE'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18169306019302936643)
,p_event_id=>wwv_flow_api.id(18169305820937936641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P60_ORIG_COPY_PASTE'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18169306187419936644)
,p_event_id=>wwv_flow_api.id(18169305820937936641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.widget.textareaClob.upload(''P60_COPY_PASTE'', ''NEXT'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18169308146733936664)
,p_name=>'Reset Import From For Upload'
,p_event_sequence=>50
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''li.htmldbStdErr'').html() && $(''li.htmldbStdErr'').html().substring(0, 30) == ''File Name must have some value'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18169308235061936665)
,p_event_id=>wwv_flow_api.id(18169308146733936664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_IMPORT_FROM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'UPLOAD'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15911475832376058741)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(15911466413271058693)
,p_attribute_02=>'P60_IMPORT_FROM'
,p_attribute_03=>'P60_SEPARATOR'
,p_attribute_04=>'P60_ENCLOSED_BY'
,p_attribute_05=>'P60_FIRST_ROW'
,p_attribute_06=>'P60_CURRENCY'
,p_attribute_07=>'P60_GROUP_SEPARATOR'
,p_attribute_08=>'P60_DECIMAL_CHARACTER'
,p_attribute_09=>'P60_FILE_NAME'
,p_attribute_10=>'P60_COPY_PASTE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15911469810132058727)
);
end;
/

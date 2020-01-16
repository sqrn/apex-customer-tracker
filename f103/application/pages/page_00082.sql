prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Assign Flexible Column - Form Element'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Flexible Column - Form Element'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_step_template=>wwv_flow_api.id(14882962244344818383)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/**',
' * askConfirm function',
' * Displays a JavaScript confirm dialog with the specified text',
' * */',
'da.askConfirm = function() {',
'    if ( !confirm( this.action.attribute01 ) ) {',
'',
'        // Don''t continue with dynamic actions',
'',
'        /* Set cancel flag in the apex.event namespace to true. This value can be used to cancel subsequent',
'           processing, such as in page submission to stop the page from being submitted. */',
'        apex.event.gCancelFlag = true;',
'',
'        /* Set cancel actions flag in dynamic action namespace to true. This value is used in dynamic',
'           actions processing to stop further actions firing. */',
'        da.gCancelActions = true; ',
'        ',
'    }',
'}; // askConfirm'))
,p_last_upd_yyyymmddhh24miss=>'20190910080436'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1636940154423321817)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965756371818392)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876084124108857348)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876860505126275035)
,p_plug_name=>'About'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Select the form element type that will capture the &P81_FLEX_COLUMN. flexible column data. The Number Field and Date Picker form elements have an optional format mask parameter. The Select List form element requires a "Static LOV" or "Dynamic LOV"'
||' definition. If "Dynamic LOV" is selected, you will have to supply a SQL query that returns display and return values. If "Static LOV" is selected, you will define the static list options on the next page.</p>'
,p_list_template_id=>wwv_flow_api.id(14882995205297818451)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(15699467515544778094)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876860819671279275)
,p_plug_name=>'Create Flex Field Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(14882982395609818418)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(14876854413971041054)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14882995205297818451)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(15699467515544778094)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876084517945857351)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1636940154423321817)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876084828792857351)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1636940154423321817)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996442242818458)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876084710203857351)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1636940154423321817)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14876085514596857354)
,p_branch_name=>'Go to Static LOV setup'
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876084828792857351)
,p_branch_sequence=>10
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>':P82_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P82_LOV_TYPE = ''STATIC'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14880262017145922920)
,p_branch_name=>'Go to Confirm'
,p_branch_action=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876084828792857351)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14876085222961857353)
,p_branch_action=>'f?p=&APP_ID.:81:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876084710203857351)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14876896721121806585)
,p_name=>'P82_FORM_ELEMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:P81_FLEX_COLUMN,''FLEX_D'') > 0 then',
'    return ''DATE'';',
'elsif instr(:P81_FLEX_COLUMN,''FLEX_CLOB'') > 0 then',
'    return ''TEXTAREA'';',
'end if;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Form Element Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FLEX_FIELD_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Date Picker'' dv, ''DATE'' rv',
'from dual',
'where -- Only date columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_D'') > 0',
'union all',
'select ''Large Text Input Field (Text Area)'' dv, ''TEXTAREA'' rv',
'from dual',
'where -- CLOB and varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_CLOB'') > 0',
'    or instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0',
'union all',
'select ''Number Field'' dv, ''NUMBER'' rv',
'from dual',
'where -- Only number columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_N'') > 0',
'union all',
'select ''Select List'' dv, ''SELECT_LIST'' rv',
'from dual',
'where -- Only number and varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0',
'    or instr(:P81_FLEX_COLUMN,''FLEX_N'') > 0',
'union all',
'select ''Text Field'' dv, ''TEXT'' rv',
'from dual',
'where -- Only varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'This field identifies the type of form element that will be used in application forms to capture the data that will be stored in your flex column. If you chose a date flex column on the previous page, then the form element will be a Date Picker. If y'
||'ou chose a number flex column on the previous page, then your form element will be either a select list or a number field. etc...'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877007706836405725)
,p_name=>'P82_FORMAT_MASK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_prompt=>'Format Mask'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(290501484459896415)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field allows you to supply a format mask to a Date Picker and/or a Number Field form element.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877009506811436145)
,p_name=>'P82_WIDTH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_item_default=>'30'
,p_format_mask=>'9999999'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'This field defines the width of the form element for this flex column. This field defaults to 30 for all form elements except text areas. Text areas default to 80.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877010129012441109)
,p_name=>'P82_MAX_WIDTH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_item_default=>'4000'
,p_format_mask=>'9999999'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'This field defines the maximum width of the form element for this flex column. This field defaults to 4000 for all form elements.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877010321248444717)
,p_name=>'P82_HEIGHT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_item_default=>'1'
,p_format_mask=>'9999999'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'This field defines the height of the form element for this flex column. This field defaults to 1 for all form elements except text areas. Text areas default to 5.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877130613254995327)
,p_name=>'P82_LOV_QUERY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_prompt=>'Select List Query'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The select list query for a flex column must select a display and a return value and resemble this construct:',
'<br><br>',
'<pre>',
'select ename d, empno r',
'from   emp',
'order by 1',
'</pre>'))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880143521627204195)
,p_name=>'P82_LOV_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_item_default=>'STATIC'
,p_prompt=>'Select List Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FLEX_LOV_TYPE'
,p_lov=>'.'||wwv_flow_api.id(14880050133653744195)||'.'
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Choose whether your "List of Values" (LOV) is defined by a static list or a dynamic SQL query.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15089254220733300402)
,p_name=>'P82_LOV_DISPLAY_COL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15089254414694303252)
,p_name=>'P82_LOV_RETURN_COL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14876084124108857348)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14877130926614004325)
,p_validation_name=>'P82_LOV_QUERY Valid'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_disp_col varchar2(30);',
'    l_ret_col  varchar2(30);',
'    l_error    varchar2(4000);',
'begin',
'    if eba_cust_flex_fw.validate_lov_query( :P82_LOV_QUERY,',
'                l_disp_col, l_ret_col, l_error ) then',
'        :P82_LOV_DISPLAY_COL := l_disp_col;',
'        :P82_LOV_RETURN_COL  := l_ret_col;',
'        return null;',
'    else',
'        return l_error;',
'    end if;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P82_LOV_TYPE'
,p_validation_condition2=>'DYNAMIC'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(14876084828792857351)
,p_associated_item=>wwv_flow_api.id(14877130613254995327)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14877008219594424194)
,p_name=>'Show/Hide Format Mask'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_FORM_ELEMENT_TYPE'
,p_condition_element=>'P82_FORM_ELEMENT_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'DATE,NUMBER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877008502192424195)
,p_event_id=>wwv_flow_api.id(14877008219594424194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_FORMAT_MASK'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877008713280424196)
,p_event_id=>wwv_flow_api.id(14877008219594424194)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_FORMAT_MASK'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15090855922486265705)
,p_event_id=>wwv_flow_api.id(14877008219594424194)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14877013804450476589)
,p_name=>'Change width/height for textarea'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_FORM_ELEMENT_TYPE'
,p_condition_element=>'P82_FORM_ELEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'TEXTAREA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877014129023476590)
,p_event_id=>wwv_flow_api.id(14877013804450476589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_WIDTH'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'80'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877050011075494981)
,p_event_id=>wwv_flow_api.id(14877013804450476589)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_WIDTH'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'30'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877014412813478920)
,p_event_id=>wwv_flow_api.id(14877013804450476589)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_HEIGHT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'5'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877050207840496484)
,p_event_id=>wwv_flow_api.id(14877013804450476589)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_HEIGHT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14877131016290009867)
,p_name=>'Show/Hide LOV Type'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_FORM_ELEMENT_TYPE'
,p_condition_element=>'P82_FORM_ELEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SELECT_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15090856411474286012)
,p_event_id=>wwv_flow_api.id(14877131016290009867)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'STATIC'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877131332763009870)
,p_event_id=>wwv_flow_api.id(14877131016290009867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14877131502923009873)
,p_event_id=>wwv_flow_api.id(14877131016290009867)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14880144410458231019)
,p_name=>'Show/Hide Dynamic LOV Query Item'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_LOV_TYPE'
,p_condition_element=>'P82_LOV_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DYNAMIC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14880144705278231023)
,p_event_id=>wwv_flow_api.id(14880144410458231019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14880144929251231026)
,p_event_id=>wwv_flow_api.id(14880144410458231019)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_LOV_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1636940275822321818)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14876084517945857351)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1636940312843321819)
,p_event_id=>wwv_flow_api.id(1636940275822321818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/

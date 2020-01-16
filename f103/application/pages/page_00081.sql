prompt --application/pages/page_00081
begin
wwv_flow_api.create_page(
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Assign Flexible Column - Flex Column'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Flexible Column - Flex Column'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_step_template=>wwv_flow_api.id(14882962244344818383)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'<p>Select the flex column you would like to start storing data in. Enter the label text that will be displayed next to this flex column''s form element. Select the whether the flex column value is required or not and assign an appropriate label templa'
||'te (e.g. if you set "Is Required" to "Yes" then you should assign a "Required" label template).</p>'
,p_last_upd_yyyymmddhh24miss=>'20190918085941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1636939425893321810)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965756371818392)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1750709000123504311)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Select the flex column you would like to start storing data in. Enter the label text that will be displayed next to this flex column''s form element. Select the whether the flex column value is required or not and assign an appropriate label templa'
||'te (e.g. if you set "Is Required" to "Yes" then you should assign a "Required" label template).</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876082116883857346)
,p_plug_name=>'Flex Column'
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
 p_id=>wwv_flow_api.id(14876858121131185122)
,p_plug_name=>'Create Flex Field Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14877494416268676776)
,p_name=>'Existing Assigned Flex Columns'
,p_template=>wwv_flow_api.id(14882976055929818407)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    flexible_column, decode(active_yn,''Y'',''Yes'',''N'',''No'', active_yn) active_yn, display_as',
'from',
'    eba_cust_flex_registry',
'where',
'    flexible_table = :P80_FLEX_TABLE',
'and',
'    assigned_yn = ''Y''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No flex columns have been assigned in this data source yet'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14877494708976676811)
,p_query_column_id=>1
,p_column_alias=>'FLEXIBLE_COLUMN'
,p_column_display_sequence=>1
,p_column_heading=>'Flexible Column'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14877494819987676813)
,p_query_column_id=>2
,p_column_alias=>'ACTIVE_YN'
,p_column_display_sequence=>2
,p_column_heading=>'Active'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14877494931421676813)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>3
,p_column_heading=>'Display As'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876082520420857347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1636939425893321810)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876082827742857347)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1636939425893321810)
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
 p_id=>wwv_flow_api.id(14876082717862857347)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1636939425893321810)
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
 p_id=>wwv_flow_api.id(14876083529591857348)
,p_branch_action=>'f?p=&APP_ID.:82:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876082827742857347)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14876083213313857348)
,p_branch_action=>'f?p=&APP_ID.:80:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876082717862857347)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14876082408103857347)
,p_name=>'P81_FLEX_COLUMN'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_prompt=>'Flex Column Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIZ_FLEX_COLUMNS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with cols as (',
'    select flexible_column,',
'        case',
'             when flexible_column like ''%FLEX_N%'' then ''Number''',
'             when flexible_column like ''%FLEX_D%'' then ''Date''',
'             when flexible_column like ''%FLEX_CLOB'' then ''Large Text''',
'             else ''Text''',
'        end as col_type',
'    from eba_cust_flex_registry',
'    where flexible_table = :P80_FLEX_TABLE',
'        and assigned_yn = ''N''',
')',
'select col_type as dv,',
'    min( flexible_column ) as rv',
'from cols',
'group by col_type',
'order by col_type'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'The options in this select list consist of all unassigned flex columns in the data source that was selected on the previous page.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880221110905847035)
,p_name=>'P81_FORM_LABEL_TEXT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_prompt=>'Form Label Text'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the label text that will be displayed on forms that capture the data that is stored in this flex column.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880232405139047198)
,p_name=>'P81_REQUIRED_YN'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_item_default=>'N'
,p_prompt=>'Is Required'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose whether this flex column can be left null or not. Selecting, ''No'' will allow forms that update this flex column''s value to accept null. Selecting, ''Yes'' will force the end-user to provide data for this flex column. This value is set to "No" by'
||' default.'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880234122151069738)
,p_name=>'P81_LABEL_TEMPLATE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tl.label_template_id',
'from apex_application_themes thm,',
'    apex_application_temp_label tl',
'where thm.application_id = :APP_ID',
'    and thm.ui_type_name = ''DESKTOP''',
'    and tl.application_id = thm.application_id',
'    and tl.theme_number = thm.theme_number',
'    and rownum = 1',
'    and ((:P81_REQUIRED_YN = ''Y''',
'            and tl.theme_class = ''Required Label''',
'            and tl.template_name not like ''%Above'')',
'        or (:P81_REQUIRED_YN = ''N''',
'            and tl.theme_class = ''Optional Label''',
'            and tl.template_name not like ''%Above''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Select the label template that this flex column''s form label text should use. This value is unassigned by default.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15013605411153833422)
,p_name=>'P81_HELP_TEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_prompt=>'Help Text'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the help text you want the end-user to see when they click on the label text of this flex column''s form element.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15013612230894945786)
,p_name=>'P81_HELP_TEMPLATES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_tmplt_id_list varchar2(32767);',
'begin',
'    for c in',
'    (',
'		select',
'		    label_template_id',
'		from',
'		    apex_application_temp_label',
'		where',
'		    application_id = :APP_ID',
'		and',
'		    instr(upper(template_name),''HELP'') > 0',
'		and',
'		    theme_number in (select max(u.theme_number)',
'		                       from apex_application_themes t, apex_appl_user_interfaces u',
'		                      where t.ui_type_id = u.ui_type_id',
'		                        and t.application_id = u.application_id',
'		                        and t.application_id = :APP_ID)',
'    )',
'    loop',
'        l_tmplt_id_list := l_tmplt_id_list || c.label_template_id || '','';',
'    end loop;',
'    l_tmplt_id_list := rtrim(l_tmplt_id_list,'','');',
'    return l_tmplt_id_list;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15014229232622513950)
,p_name=>'P81_HAS_HELP_TEXT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14876082116883857346)
,p_item_default=>'N'
,p_prompt=>'Has Help Text'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15014419013490775080)
,p_validation_name=>'P81_HELP_TEXT'
,p_validation_sequence=>10
,p_validation=>'P81_HELP_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P81_HAS_HELP_TEXT'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(14876082827742857347)
,p_associated_item=>wwv_flow_api.id(15013605411153833422)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15013603708287810347)
,p_name=>'Set Label template'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_REQUIRED_YN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013604021069810354)
,p_event_id=>wwv_flow_api.id(15013603708287810347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_LABEL_TEMPLATE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tl.label_template_id',
'from apex_application_themes thm,',
'    apex_application_temp_label tl',
'where thm.application_id = :APP_ID',
'    and thm.ui_type_name = ''DESKTOP''',
'    and tl.application_id = thm.application_id',
'    and tl.theme_number = thm.theme_number',
'    and ((:P81_REQUIRED_YN = ''Y''',
'            and tl.theme_class = ''Required Label''',
'            and tl.template_name not like ''%Above'')',
'        or (:P81_REQUIRED_YN = ''N''',
'            and tl.theme_class = ''Optional Label''',
'            and tl.template_name not like ''%Above''))'))
,p_attribute_07=>'P81_REQUIRED_YN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15013610915568888192)
,p_name=>'Show/Hide Help Text'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_HAS_HELP_TEXT'
,p_condition_element=>'P81_HAS_HELP_TEXT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013611225761888192)
,p_event_id=>wwv_flow_api.id(15013610915568888192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_HELP_TEXT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013611610455894542)
,p_event_id=>wwv_flow_api.id(15013610915568888192)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_HELP_TEXT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(357991378501317634)
,p_event_id=>wwv_flow_api.id(15013610915568888192)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P81_HELP_TEXT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1636939590796321811)
,p_name=>'Cancel Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14876082520420857347)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1636939620749321812)
,p_event_id=>wwv_flow_api.id(1636939590796321811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/

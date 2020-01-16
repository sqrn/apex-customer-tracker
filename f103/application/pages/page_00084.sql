prompt --application/pages/page_00084
begin
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Assign Flexible Column - Confirmation'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Flexible Column - Confirmation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_step_template=>wwv_flow_api.id(14882962244344818383)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918090636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1636940399494321820)
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
 p_id=>wwv_flow_api.id(14880197426489345455)
,p_plug_name=>'Confirmation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14880282024118390380)
,p_name=>'Static List Options'
,p_parent_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_template=>wwv_flow_api.id(14882976055929818407)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as display_sequence,',
'    c001 as display_value,',
'    c002 as return_value',
'from',
'    apex_collections',
'where',
'    collection_name = ''STATIC_LOV_OPTS''',
'and',
'    c001 is not null',
'order by 1'))
,p_display_when_condition=>'P82_LOV_TYPE'
,p_display_when_cond2=>'STATIC'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No list options have been assigned'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(14880282308646390383)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY_SEQUENCE'
,p_column_display_sequence=>1
,p_column_heading=>'Display Sequence'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880282425014390384)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Display Value'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880282504341390384)
,p_query_column_id=>3
,p_column_alias=>'RETURN_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Return Value'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14880200614906345481)
,p_plug_name=>'About'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Confirm the Flex Column assignment and it''s settings. If everything looks correct and you''re ready to start storing data in this flex column, click "Finish". If you''re not ready to use this flex column quite yet, change the "Is Active" value to "N'
||'o" and then click "Finish" or just click the "Cancel" button.</p>'
,p_list_template_id=>wwv_flow_api.id(14882995205297818451)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14880200826882345483)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14880413823857834156)
,p_name=>'Race Condition Error'
,p_template=>wwv_flow_api.id(14089224701242841397)
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'<div id="report_791189122614992759_catch" style="margin:10px 16px 0 16px;">   <div class="alertMessage red">     <img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">     <div class="innerMessage">         <h3>Error</h3>         <p>This flex column ha'
||'s just been assigned by someone else. Please select a different flex column.</p>     </div> </div>  </div>'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null as id,',
'    ''red'' as NOTIFICATION_TYPE,',
'    ''Error'' as NOTIFICATION_NAME,',
'    ''This flex column has been assigned. Please <a href="''',
'        ||apex_util.prepare_url(''f?p=&APP_ID.:81:&APP_SESSION.::NO::P81_FLEX_COLUMN::'')',
'        ||''">select a different flex column</a>.'' as NOTIFICATION_DESCRIPTION',
'from',
'    dual',
'order by id'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_cust_flex_registry',
'where',
'    flexible_table = :P80_FLEX_TABLE',
'and',
'    flexible_column = :P81_FLEX_COLUMN',
'and',
'    assigned_yn = ''Y'';'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(14880419009725992072)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880414109927834175)
,p_query_column_id=>2
,p_column_alias=>'NOTIFICATION_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'NOTIFICATION_TYPE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880414215798834175)
,p_query_column_id=>3
,p_column_alias=>'NOTIFICATION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NOTIFICATION_NAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880414302747834175)
,p_query_column_id=>4
,p_column_alias=>'NOTIFICATION_DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'NOTIFICATION_DESCRIPTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14880201227811345486)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1636940399494321820)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14880201603603345490)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1636940399494321820)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14880283004673414952)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1636940399494321820)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_button_condition=>':P82_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P82_LOV_TYPE = ''STATIC'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14880201413207345490)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1636940399494321820)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_button_condition=>'not (:P82_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P82_LOV_TYPE = ''STATIC'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880197827473345477)
,p_name=>'P84_SELECT_LIST_QUERY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'&P82_LOV_QUERY.'
,p_prompt=>'Select List Query'
,p_source=>'nvl(:P82_LOV_QUERY, ''N/A'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P82_LOV_TYPE'
,p_display_when2=>'DYNAMIC'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880198629595345479)
,p_name=>'P84_ACTIVE_YN'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'Y'
,p_prompt=>'Is Active'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y_OR_N'
,p_lov=>'.'||wwv_flow_api.id(17826171223649277706)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880198828255345479)
,p_name=>'P84_REQUIRED_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P81_REQUIRED_YN = ''Y'' then',
'    return ''Yes'';',
'else',
'    return ''No'';',
'end if;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Is Required'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880199013245345479)
,p_name=>'P84_DATA_SOURCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'replace(:P80_FLEX_TABLE, ''EBA_CUST_'', null)'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Data Source'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880199222034345479)
,p_name=>'P84_FLEX_COLUMN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'&P81_FLEX_COLUMN.'
,p_prompt=>'Flex Column'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880199419890345479)
,p_name=>'P84_LABEL_TEMPLATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label Template'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    template_name || '' ('' || decode(theme_number, 50, ''Mobile Theme'', 42, ''Desktop Theme'') || '')'' template_name',
'from',
'    apex_application_temp_label',
'where',
'    application_id = :APP_ID',
'and',
'    label_template_id = to_number(substr(:P81_LABEL_TEMPLATE_ID,1,case when instr(:P81_LABEL_TEMPLATE_ID,'','') > 0 then instr(:P81_LABEL_TEMPLATE_ID,'','') - 1 else length(:P81_LABEL_TEMPLATE_ID) end));'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P81_LABEL_TEMPLATE_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880199608127345480)
,p_name=>'P84_FORM_LABEL_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'&P81_FORM_LABEL_TEXT.'
,p_prompt=>'Form Label Text'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880200214115345481)
,p_name=>'P84_FORM_ELEMENT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'replace(initcap(:P82_FORM_ELEMENT_TYPE), ''_'', '' '')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Form Element Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14880200415984345481)
,p_name=>'P84_FORMAT_MASK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14880197426489345455)
,p_item_default=>'&P82_FORMAT_MASK.'
,p_prompt=>'Format Mask'
,p_source=>'nvl(:P82_FORMAT_MASK, ''N/A'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P82_FORM_ELEMENT_TYPE'
,p_display_when2=>'NUMBER:DATE'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14880480019781352047)
,p_validation_name=>'Flex Column Still Available for Assignment'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_cust_flex_registry',
'where',
'    flexible_table = :P80_FLEX_TABLE',
'and',
'    flexible_column = :P81_FLEX_COLUMN',
'and',
'    assigned_yn = ''Y'';'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This flex column has been assigned. Please <a href="f?p=&APP_ID.:81:&APP_SESSION.::NO::P81_FLEX_COLUMN::">select a different flex column</a>.'
,p_when_button_pressed=>wwv_flow_api.id(14880201603603345490)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1636940504519321821)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14880201227811345486)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1636940649020321822)
,p_event_id=>wwv_flow_api.id(1636940504519321821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14880202518829345522)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Flex Registry Record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt number := 0;',
'begin',
'    -- If this is a static LOV flex column assignment then',
'    -- insert the rows to eba_cust_flex_static_lovs table',
'    -- and create the select statement for the form element',
'    for c1 in',
'    (',
'        select n001, c001, c002',
'          from apex_collections',
'         where collection_name = ''STATIC_LOV_OPTS'' and c001 is not null',
'         order by 1',
'    )',
'    loop',
'        insert into eba_cust_flex_static_lovs',
'        (flex_table, flex_column, display_sequence, display_value, return_value)',
'        values',
'        (:P80_FLEX_TABLE, :P81_FLEX_COLUMN, c1.n001, c1.c001, c1.c002);',
'',
'        if l_cnt = 0 then  ',
'            :P82_LOV_QUERY := ''select ''|| sys.dbms_assert.enquote_literal(replace( c1.c001 , '''''''', '''''''''''')) ||'' dv, ''|| sys.dbms_assert.enquote_literal(replace( c1.c002 , '''''''', '''''''''''')) ||'' rv from dual'';',
'        else',
'            :P82_LOV_QUERY := :P82_LOV_QUERY || chr(10) || ''union all'' || chr(10);',
'            :P82_LOV_QUERY := :P82_LOV_QUERY || ''select ''|| sys.dbms_assert.enquote_literal(replace( c1.c001 , '''''''', '''''''''''')) ||'' dv, ''|| sys.dbms_assert.enquote_literal(replace( c1.c002 , '''''''', '''''''''''')) ||'' rv from dual'';',
'        end if;',
'        l_cnt := l_cnt + 1;',
'    end loop;',
'',
'    -- Save the new flex column assignment',
'    update eba_cust_flex_registry',
'       set flexible_table = :P80_FLEX_TABLE,',
'           flexible_column = :P81_FLEX_COLUMN,',
'           active_yn = :P84_ACTIVE_YN,',
'           is_required_yn = :P81_REQUIRED_YN,',
'           label_template_id = case when instr(:P81_LABEL_TEMPLATE_ID,'','') > 0 then substr(:P81_LABEL_TEMPLATE_ID, 1, instr(:P81_LABEL_TEMPLATE_ID,'','') - 1) else :P81_LABEL_TEMPLATE_ID end,',
'           label_alignment = ''RIGHT-CENTER'',',
'           form_label_text = :P81_FORM_LABEL_TEXT,',
'           display_as = :P82_FORM_ELEMENT_TYPE,',
'           format_mask = :P82_FORMAT_MASK,',
'           lov_type = :P82_LOV_TYPE,',
'           lov_sql_query = :P82_LOV_QUERY,',
'           lov_display_col = :P82_LOV_DISPLAY_COL,',
'           lov_return_col = :P82_LOV_RETURN_COL,',
'           is_displayed_on_ir = ''Y'',',
'           width = :P82_WIDTH,',
'           max_width = :P82_MAX_WIDTH,',
'           height = :P82_HEIGHT,',
'           assigned_yn = ''Y'',',
'           report_label_text = null,',
'           rpt_hdr_alignment = ''CENTER'',',
'           help_text = :P81_HELP_TEXT,',
'           default_value = null',
'     where flexible_table = :P80_FLEX_TABLE',
'       and flexible_column = :P81_FLEX_COLUMN',
'       and assigned_yn = ''N'';',
'',
'    -- Make sure the page map is up to date.',
'    eba_cust_flex_fw.populate_page_map_table();',
'',
'    -- Set the new flex column to be displayed in IRRs',
'    for c1 in',
'    (',
'        select',
'            m.flex_table,',
'            m.page_id,',
'            m.region_static_id,',
'            m.flex_column_prefix,',
'            m.region_type',
'        from',
'            eba_cust_flex_page_map m,',
'            eba_cust_flex_registry r',
'        where',
'            m.flex_table = :P80_FLEX_TABLE',
'        and',
'            m.flex_table = r.flexible_table',
'        and',
'            m.region_type in (''IR'',''CR'')',
'    )',
'    loop',
'        eba_cust_flex_fw.flex_report_update (',
'            p_flex_table_name      => c1.flex_table,',
'            p_irr_region_static_id => c1.region_static_id,',
'            p_flex_column_prefix   => c1.flex_column_prefix,',
'            p_app_id               => :APP_ID,',
'            p_page_id              => c1.page_id,',
'            p_region_type          => c1.region_type',
'        );',
'    end loop;',
'',
'    -- delete the static LOV collection',
'    if apex_collection.collection_exists(''STATIC_LOV_OPTS'') then',
'        apex_collection.delete_collection(p_collection_name => ''STATIC_LOV_OPTS'');',
'    end if;',
'    ',
'    -- Null the flex column data in the table containing the flex column to make sure there is no old data',
'    execute immediate( ''update '' || sys.dbms_assert.enquote_name(:P80_FLEX_TABLE)',
'                      ||'' set '' || sys.dbms_assert.enquote_name(:P81_FLEX_COLUMN) || '' = null''',
'                      ||'' where '' || sys.dbms_assert.enquote_name(:P81_FLEX_COLUMN) || '' is not null''',
'                     );',
'',
'end;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14880201603603345490)
,p_process_success_message=>'Flex column added.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1636940793816321823)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/

prompt --application/pages/page_00083
begin
wwv_flow_api.create_page(
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Assign Flexible Column - Select List Options'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Flexible Column - Select List Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_inline_css=>'.num_hdrs{width:20px;float:left;text-align:right;padding-right:10px;}'
,p_step_template=>wwv_flow_api.id(14882962244344818383)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918111755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14877139024049097259)
,p_plug_name=>'Create Flex Field Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(14882982395609818418)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(14876854413971041054)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14882995205297818451)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(15699467515544778094)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14877138812621094018)
,p_plug_name=>'About'
,p_parent_plug_id=>wwv_flow_api.id(14877139024049097259)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Create the static list of options that will be displayed in this flex column''s select list form element. You can create up to 15 list items in this static list of values.</p>'
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
 p_id=>wwv_flow_api.id(15013786407741489621)
,p_plug_name=>'List Items'
,p_parent_plug_id=>wwv_flow_api.id(14877139024049097259)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15013796618073088649)
,p_name=>'Items in Collection'
,p_parent_plug_id=>wwv_flow_api.id(15013786407741489621)
,p_template=>wwv_flow_api.id(14882965472431818390)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''<div class="num_hdrs">'' || rownum || ''</div>'' || apex_item.text(',
'     p_idx => rownum, ',
'     p_value => c001, ',
'     p_size => 30, ',
'     p_maxlength => 255, ',
'     p_item_id => ''P83_ITEM_'' || rownum, ',
'     p_item_label => ''List Option '' || rownum) as list_item',
'from',
'    apex_collections',
'where',
'    collection_name = ''STATIC_LOV_OPTS''',
'order by',
'    seq_id'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>2
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15077897612567470637)
,p_query_column_id=>1
,p_column_alias=>'LIST_ITEM'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14877146427306183378)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14880269312222103158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14877138812621094018)
,p_button_name=>'ADD_MORE_ITEMS'
,p_button_static_id=>'addMoreItemsBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Add More List Items'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876086531820857355)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14877139024049097259)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876086628963857355)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14877139024049097259)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14882996442242818458)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876086711302857355)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14877139024049097259)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14876087501914857356)
,p_branch_name=>'Go To Confirmation Page'
,p_branch_action=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876086628963857355)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14876087232548857356)
,p_branch_action=>'f?p=&APP_ID.:82:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14876086711302857355)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15013792418048817485)
,p_name=>'P83_NUM_ITEMS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15013786407741489621)
,p_source=>'5'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15013867432396751859)
,p_name=>'P83_ITEM_VALUES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15013796618073088649)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15086615914318541535)
,p_validation_name=>'List isn''t empty'
,p_validation_sequence=>5
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_carr1 apex_application_global.vc_arr2;',
'begin',
'    l_carr1 := apex_util.string_to_table(:P83_ITEM_VALUES,''&'');',
'',
'    for i in 1..l_carr1.COUNT loop',
'        if length( l_carr1(i) ) > instr( l_carr1(i),''='' ) then',
'            return true;',
'        end if;',
'    end loop;',
'    return false;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'At least one value must be provided.'
,p_when_button_pressed=>wwv_flow_api.id(14876086628963857355)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15013884208517750568)
,p_validation_name=>'No html characters allowed'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_carr1     apex_application_global.vc_arr2;',
'begin',
'    l_carr1 := apex_util.string_to_table(:P83_ITEM_VALUES,''&'');',
'',
'    for i in 1..l_carr1.count',
'    loop',
'        if instr(substr(l_carr1(i),instr(l_carr1(i),''='') + 1),''%3C'') > 0 or',
'           instr(substr(l_carr1(i),instr(l_carr1(i),''='') + 1),''%3E'') > 0 then',
'            return false;',
'        end if;',
'    end loop;',
'    return true;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'List item values cannot contain html markup brackets (less than and/or greater than signs).'
,p_when_button_pressed=>wwv_flow_api.id(14876086628963857355)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15086604230961956441)
,p_validation_name=>'Numeric fields only numeric'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_carr1 apex_application_global.vc_arr2;',
'    l_num   number;',
'begin',
'    l_carr1 := apex_util.string_to_table(:P83_ITEM_VALUES,''&'');',
'',
'    for i in 1..l_carr1.COUNT loop',
'        l_num := to_number( substr(l_carr1(i), instr(l_carr1(i),''='')+1) );',
'    end loop;',
'    return true;',
'exception',
'    when others then',
'        return false;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Numeric flex fields must use numeric values.'
,p_validation_condition=>':P81_FLEX_COLUMN like ''%FLEX_N%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(14876086628963857355)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15013797425607109761)
,p_name=>'Add List Items'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14880269312222103158)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013797727821109764)
,p_event_id=>wwv_flow_api.id(15013797425607109761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_seq       apex_application_global.vc_arr2;',
'    l_carr1     apex_application_global.vc_arr2;',
'    l_narr      apex_application_global.n_arr;',
'    l_num_items pls_integer := apex_collection.collection_member_count(p_collection_name => ''STATIC_LOV_OPTS'');',
'begin',
'    l_carr1 := apex_util.string_to_table(:P83_ITEM_VALUES,''&'');',
'',
'    for i in 1..l_num_items',
'    loop',
'        l_seq(i)   := to_char(i);',
'        l_narr(i)  := i;',
'        if l_carr1.EXISTS(i) then',
'            l_carr1(i) := replace(utl_url.unescape(substr(l_carr1(i),instr(l_carr1(i),''='') + 1)),''+'','' '');',
'        else',
'            l_carr1(i) := '''';',
'        end if;',
'    end loop;',
'    apex_collection.update_members(',
'        p_collection_name => ''STATIC_LOV_OPTS'',',
'        p_seq             => l_seq,',
'        p_n001            => l_narr,',
'        p_c001            => l_carr1,',
'        p_c002            => l_carr1);',
'    for i in 1 .. 5',
'    loop',
'        apex_collection.add_member(',
'            p_collection_name => ''STATIC_LOV_OPTS'',',
'            p_n001            => l_num_items + i,',
'            p_c001            => null,',
'            p_c002            => null);',
'    end loop;',
'',
'    :P83_NUM_ITEMS := to_char(l_num_items + 5);',
'end;'))
,p_attribute_02=>'P83_ITEM_VALUES'
,p_attribute_03=>'P83_NUM_ITEMS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013797926211117570)
,p_event_id=>wwv_flow_api.id(15013797425607109761)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15013796618073088649)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15013803930306300406)
,p_name=>'Disable Add More Items Button'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(15013796618073088649)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''input[name="f15"]'').html() != null'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013804215732300411)
,p_event_id=>wwv_flow_api.id(15013803930306300406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14880269312222103158)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013804430220300411)
,p_event_id=>wwv_flow_api.id(15013803930306300406)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14880269312222103158)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15013869615321820165)
,p_name=>'Store Item Values'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name^="f"]'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15013869918275820168)
,p_event_id=>wwv_flow_api.id(15013869615321820165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_ITEM_VALUES'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''input[name^="f"]'').serialize();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15013736614940835820)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''STATIC_LOV_OPTS'');',
'for i in 1 .. 5',
'loop',
'    apex_collection.add_member(',
'        p_collection_name => ''STATIC_LOV_OPTS'',',
'        p_n001            => i,',
'        p_c001            => null,',
'        p_c002            => null);',
'end loop;',
':P83_NUM_ITEMS := ''5'';'))
,p_process_error_message=>'#SQLERRM#'
,p_process_when=>'apex_collection.collection_exists(p_collection_name => ''STATIC_LOV_OPTS'') = false'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15013880109611556520)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_seq       apex_application_global.vc_arr2;',
'    l_carr1     apex_application_global.vc_arr2;',
'    l_narr      apex_application_global.n_arr;',
'    l_num_items pls_integer := apex_collection.collection_member_count(p_collection_name => ''STATIC_LOV_OPTS'');',
'begin',
'    l_carr1 := apex_util.string_to_table(:P83_ITEM_VALUES,''&'');',
'',
'    for i in 1..l_num_items',
'    loop',
'        l_seq(i)   := to_char(i);',
'        l_narr(i)  := i;',
'        if l_carr1.EXISTS(i) then',
'            l_carr1(i) := replace(utl_url.unescape(substr(l_carr1(i),instr(l_carr1(i),''='') + 1)),''+'','' '');',
'        else',
'            l_carr1(i) := '''';',
'        end if;',
'    end loop;',
'    apex_collection.update_members(',
'        p_collection_name => ''STATIC_LOV_OPTS'',',
'        p_seq             => l_seq,',
'        p_n001            => l_narr,',
'        p_c001            => l_carr1,',
'        p_c002            => l_carr1);',
'end;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14876086628963857355)
);
end;
/

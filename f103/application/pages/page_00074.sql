prompt --application/pages/page_00074
begin
wwv_flow_api.create_page(
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Add Multiple Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893830423417032)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190322110202'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1679887706464887820)
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
 p_id=>wwv_flow_api.id(14839109019592822469)
,p_plug_name=>'Bulk Load Users - Step 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14839109201875822472)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_api.id(14839109019592822469)
,p_template=>wwv_flow_api.id(14882976055929818407)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_INVALID''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No invalid new users found'
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
 p_id=>wwv_flow_api.id(14839109506038822472)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14839109427280822472)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Why Invalid'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14839109602052822472)
,p_name=>'Users to be added'
,p_parent_plug_id=>wwv_flow_api.id(14839109019592822469)
,p_template=>wwv_flow_api.id(14882976055929818407)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(c001) username',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_VALID''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_headings_type=>'QUERY_COLUMNS_INITCAP'
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No valid new users found'
,p_query_row_count_max=>10000
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
 p_id=>wwv_flow_api.id(14839109809368822472)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'USERNAME'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14839109930456822472)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<p>'');',
'sys.htp.p(apex_lang.message(''ABOUT_TO_CREATE'', :P74_VALID_COUNT, :P74_ROLE));',
'if :P74_INVALID_COUNT > 0 then',
'    sys.htp.p(apex_lang.message(''INVALID_USERS_NOT_CREATED'', :P74_INVALID_COUNT));',
'end if;',
'sys.htp.p(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_VALID'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14839110105825822473)
,p_plug_name=>'Hidden Items'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
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
 p_id=>wwv_flow_api.id(14839110911650822473)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The username list on the previous page found no valid usernames and &P74_INVALID_COUNT.. Please go back and verify the username list you provided.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_VALID'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14839111309876822474)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1679887706464887820)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14839111712470822476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1679887706464887820)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14839111502481822476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1679887706464887820)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14839112912572822480)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:73,&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14839111712470822476)
,p_branch_sequence=>10
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14839110329251822473)
,p_name=>'P74_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14839110105825822473)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P73_ROLE = 3 then',
'    return ''Administrator'';',
'elsif :P73_ROLE = 2 then',
'    return ''Contributor'';',
'elsif :P73_ROLE = 1 then',
'    return ''Reader'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14839110521733822473)
,p_name=>'P74_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14839110105825822473)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14839110711637822473)
,p_name=>'P74_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14839110105825822473)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_CUST_BULK_USER_INVALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1679887883974887821)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14839111309876822474)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1679887932296887822)
,p_event_id=>wwv_flow_api.id(1679887883974887821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14839112623719822479)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to ACL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c in',
'(',
'    select',
'        c001      as username,',
'        :P73_ROLE as access_level_id',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''EBA_CUST_BULK_USER_VALID''',
')',
'loop',
'    insert into eba_cust_users',
'    (username, access_level_id)',
'    values',
'    (c.username, c.access_level_id);',
'end loop;',
'',
'---------------------',
'-- delete collections',
'--',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CUST_BULK_USER_INVALID'');',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CUST_BULK_USER_VALID'');',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CUST_BULK_USER_CREATE'');'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14839111712470822476)
,p_process_success_message=>'User(s) added.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1679888028644887823)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/

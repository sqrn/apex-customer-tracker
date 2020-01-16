prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Flex Column'
,p_step_title=>'Flex Column'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(14882948748921818367)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190322093654'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14879996433091336775)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>190
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14879997028014336782)
,p_plug_name=>'Right Side'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'<div class="uniqueKey">Row Key: <span>&P41_ROW_KEY.</span></div>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14879997207940336783)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14880001819895336805)
,p_name=>'Page References'
,p_parent_plug_id=>wwv_flow_api.id(14879997207940336783)
,p_template=>wwv_flow_api.id(14882976055929818407)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    r.region_name,',
'    m.page_id,',
'    p.page_name page_title, ',
'    case',
'        when m.region_type = ''CR'' then',
'            ''Classic Report''',
'        when m.region_type = ''IR'' then',
'            ''Interactive Report''',
'        when m.region_type = ''FORM'' then',
'            initcap(m.region_type)',
'    end as region_type,',
'    nvl(initcap(replace(p.authorization_scheme,''_'','' '')),''No Role Required'') authorization_scheme,',
'    p.page_requires_authentication requires_auth',
'from',
'    apex_application_page_regions r,',
'    apex_application_pages p,',
'    eba_cust_flex_page_map m',
'where',
'    r.application_id = :APP_ID',
'and',
'    r.application_id = p.application_id',
'and',
'    r.page_id = p.page_id',
'and',
'    m.page_id = p.page_id',
'and',
'    m.flex_table = (select flexible_table from eba_cust_flex_registry where id = :P41_ID)',
'and',
'    r.source_type_code in (''DYNAMIC_QUERY'',''SQL_QUERY'',''STATIC_TEXT'')',
'and',
'    r.static_id in (''CUSTOMERS'',''CONTACTS'',''CUSTOMERS_PRODUCTS'',''PRODUCTS'')',
'order by 2,4;'))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No application forms affected by this flex column assignment'
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
 p_id=>wwv_flow_api.id(14881089829137838206)
,p_query_column_id=>1
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Region Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881084033670635375)
,p_query_column_id=>2
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Page'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881084129396635376)
,p_query_column_id=>3
,p_column_alias=>'PAGE_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Page Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881092610152120473)
,p_query_column_id=>4
,p_column_alias=>'REGION_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Region Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881084417586635376)
,p_query_column_id=>5
,p_column_alias=>'AUTHORIZATION_SCHEME'
,p_column_display_sequence=>5
,p_column_heading=>'Authorization'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881084505120635376)
,p_query_column_id=>6
,p_column_alias=>'REQUIRES_AUTH'
,p_column_display_sequence=>6
,p_column_heading=>'Authentication'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14880005208719336811)
,p_name=>'Flex Column'
,p_region_name=>'FLEX_COLUMN'
,p_template=>wwv_flow_api.id(14089224701242841397)
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    r.id,',
'    r.row_version_number,',
'    r.row_key,',
'    r.flexible_table,',
'    r.flexible_column,',
'    decode(r.active_yn,''Y'',''Yes'',''N'',''No'') active_yn,',
'    r.form_label_text,',
'    nvl(r.report_label_text,r.form_label_text) report_label_text,',
'    (select l.template_name from apex_application_temp_label l where l.application_id = :APP_ID and l.label_template_id = r.label_template_id) as label_template,',
'    decode(r.is_required_yn,''Y'',''Yes'',''N'',''No'') is_required_yn,',
'    case',
'        when r.display_as = ''NUMBER'' then',
'            ''Number Field''',
'        when r.display_as = ''TEXT'' then',
'            ''Text Field''',
'        when r.display_as = ''DATE'' then',
'            ''Date Picker''',
'        when r.display_as = ''TEXTAREA'' then',
'            ''Text Area''',
'        when r.display_as = ''SELECT_LIST'' then',
'            ''Select List''',
'    end display_as,',
'    r.lov_type select_list_type,',
'    r.lov_sql_query,',
'    r.width,',
'    r.max_width,',
'    r.height,',
'    r.format_mask,',
'    initcap(r.label_alignment) label_alignment,',
'    r.help_text,',
'    decode(r.is_displayed_on_ir,''Y'',''Yes'',''N'',''No'') is_displayed_on_ir,',
'    initcap(nvl(r.updated_by,r.created_by)) last_updated_by,',
'    nvl(r.updated,r.created) last_updated    ',
'from',
'    eba_cust_flex_registry r',
'where r.id = :P41_ID',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(14882987723781818432)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016212308345668)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016310624345668)
,p_query_column_id=>2
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Row Version Number'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016415673345668)
,p_query_column_id=>3
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>3
,p_column_heading=>'Row Key'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016505357345668)
,p_query_column_id=>4
,p_column_alias=>'FLEXIBLE_TABLE'
,p_column_display_sequence=>5
,p_column_heading=>'Flexible Table'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016622638345669)
,p_query_column_id=>5
,p_column_alias=>'FLEXIBLE_COLUMN'
,p_column_display_sequence=>4
,p_column_heading=>'Flexible Column'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016720633345669)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE_YN'
,p_column_display_sequence=>6
,p_column_heading=>'Active'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016819282345669)
,p_query_column_id=>7
,p_column_alias=>'FORM_LABEL_TEXT'
,p_column_display_sequence=>13
,p_column_heading=>'Form Label Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880016907772345669)
,p_query_column_id=>8
,p_column_alias=>'REPORT_LABEL_TEXT'
,p_column_display_sequence=>16
,p_column_heading=>'Report Label Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881109914885930024)
,p_query_column_id=>9
,p_column_alias=>'LABEL_TEMPLATE'
,p_column_display_sequence=>12
,p_column_heading=>'Form Label Template'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017005303345670)
,p_query_column_id=>10
,p_column_alias=>'IS_REQUIRED_YN'
,p_column_display_sequence=>11
,p_column_heading=>'Is Required'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017109505345670)
,p_query_column_id=>11
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>7
,p_column_heading=>'Display As'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14881113310628129495)
,p_query_column_id=>12
,p_column_alias=>'SELECT_LIST_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Select List Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017201275345670)
,p_query_column_id=>13
,p_column_alias=>'LOV_SQL_QUERY'
,p_column_display_sequence=>10
,p_column_heading=>'Select List  SQL Query'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where id = :P41_ID',
'   and lov_type = ''DYNAMIC'''))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017318167345670)
,p_query_column_id=>14
,p_column_alias=>'WIDTH'
,p_column_display_sequence=>18
,p_column_heading=>'Width'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017403215345670)
,p_query_column_id=>15
,p_column_alias=>'MAX_WIDTH'
,p_column_display_sequence=>19
,p_column_heading=>'Max Width'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017526116345670)
,p_query_column_id=>16
,p_column_alias=>'HEIGHT'
,p_column_display_sequence=>20
,p_column_heading=>'Height'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017625228345670)
,p_query_column_id=>17
,p_column_alias=>'FORMAT_MASK'
,p_column_display_sequence=>8
,p_column_heading=>'Format Mask'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where id = :P41_ID',
'   and display_as in (''DATE'',''NUMBER'')'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017733951345670)
,p_query_column_id=>18
,p_column_alias=>'LABEL_ALIGNMENT'
,p_column_display_sequence=>14
,p_column_heading=>'Form Label Alignment'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017816801345670)
,p_query_column_id=>19
,p_column_alias=>'HELP_TEXT'
,p_column_display_sequence=>15
,p_column_heading=>'Help Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880017912851345670)
,p_query_column_id=>20
,p_column_alias=>'IS_DISPLAYED_ON_IR'
,p_column_display_sequence=>17
,p_column_heading=>'Displayed in Interactive Reports'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880018004039345670)
,p_query_column_id=>21
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>21
,p_column_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14880018120919345670)
,p_query_column_id=>22
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>22
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14880014114913336837)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14898513015297488747)
,p_plug_name=>'Flex Column Assigned'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14882979167825818413)
,p_plug_display_sequence=>200
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created, ''Flex Column Assigned'' lbl',
'from eba_cust_flex_registry',
'where id = :P41_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'CREATED'
,p_attribute_02=>'LBL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14879995210858336771)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(14880014114913336837)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Flex Column'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP,71:P71_ID:&P41_ID.'
,p_security_scheme=>wwv_flow_api.id(15699467515544778094)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14880015924635336855)
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::P41_ID:&P41_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-JAN-2012 16:02 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14879996614089336776)
,p_name=>'P41_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(14879996433091336775)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14879996828876336781)
,p_name=>'P41_ROW_KEY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(14879996433091336775)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key',
'from eba_cust_flex_registry',
'where id = :P41_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14880014529776336843)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
end;
/

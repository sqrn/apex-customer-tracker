prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Flex Columns'
,p_step_title=>'Flex Columns'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'<p>Flex columns allow additional attributes to be added to this application.  This page shows the assigned flex columns and allows you to assign additional flex columns.</p>'
,p_last_upd_yyyymmddhh24miss=>'20180221094542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876073202510813592)
,p_plug_name=>'Flex Columns'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    row_version_number,',
'    row_key,',
'    flexible_table,',
'    flexible_column,',
'    active_yn,',
'    assigned_yn,',
'    form_label_text,',
'    report_label_text,',
'    is_required_yn,',
'    display_as,',
'    lov_sql_query,',
'    width,',
'    max_width,',
'    height,',
'    format_mask,',
'    label_alignment,',
'    help_text,',
'    is_displayed_on_ir,',
'    nvl(updated_by,created_by) last_updated_by,',
'    nvl(updated,created) last_updated,',
'    rpt_hdr_alignment,',
'    condition_type,',
'    condition1,',
'    condition2',
'from eba_cust_flex_registry',
'where',
'--    active_yn = ''Y''',
'--and',
'    assigned_yn = ''Y''',
'order by',
'    5'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14876073432789813593)
,p_name=>'Active Flex Columns'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No flex columns assigned'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP,71:P71_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_condition_type=>'EXISTS'
,p_detail_link_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_cust_flex_registry',
'where',
'    assigned_yn = ''Y''',
'and',
'    assigned_yn = ''Y'''))
,p_owner=>'ALLAN'
,p_internal_uid=>786848731546972196
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876073524096813597)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876073623911813599)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876073730851813599)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Row Key'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876073815723813599)
,p_db_column_name=>'FLEXIBLE_TABLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876073931502813599)
,p_db_column_name=>'FLEXIBLE_COLUMN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Column'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_ID:#ID#'
,p_column_linktext=>'#FLEXIBLE_COLUMN#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074004119813599)
,p_db_column_name=>'ACTIVE_YN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(17826171223649277706)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074102587813600)
,p_db_column_name=>'IS_REQUIRED_YN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Required'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(17826171223649277706)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074220094813600)
,p_db_column_name=>'DISPLAY_AS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Display As'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074322237813600)
,p_db_column_name=>'LOV_SQL_QUERY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'List of Values Query'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074413106813600)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074502214813600)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074626843813600)
,p_db_column_name=>'WIDTH'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Width'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074728577813600)
,p_db_column_name=>'MAX_WIDTH'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Max Width'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074805138813600)
,p_db_column_name=>'HEIGHT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876074930808813601)
,p_db_column_name=>'FORMAT_MASK'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Format Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876075015779813601)
,p_db_column_name=>'LABEL_ALIGNMENT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Label Alignment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876075133953813601)
,p_db_column_name=>'HELP_TEXT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Help Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876075232962813601)
,p_db_column_name=>'FORM_LABEL_TEXT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Form Label Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14876075320936813601)
,p_db_column_name=>'REPORT_LABEL_TEXT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Report Label Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879838803567408659)
,p_db_column_name=>'IS_DISPLAYED_ON_IR'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Displayed in IRR'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14880336320407744769)
,p_db_column_name=>'ASSIGNED_YN'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Assigned'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(17826171223649277706)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14920741231070705550)
,p_db_column_name=>'RPT_HDR_ALIGNMENT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Report Heading Alignment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14920741315409705554)
,p_db_column_name=>'CONDITION_TYPE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Report Display Condition'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14920741429824705554)
,p_db_column_name=>'CONDITION1'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Condition1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14920741505744705554)
,p_db_column_name=>'CONDITION2'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Condition2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14876075403287813601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7868508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FLEXIBLE_TABLE:FLEXIBLE_COLUMN:ASSIGNED_YN:ACTIVE_YN:IS_REQUIRED_YN:CONDITION_TYPE:FORM_LABEL_TEXT:REPORT_LABEL_TEXT:LAST_UPDATED_BY:LAST_UPDATED:'
,p_sort_column_1=>'LAST_UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14876076206328813609)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15087914829610360816)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14876076206328813609)
,p_button_name=>'CLEAR_FLEX_FIELDS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Remove All Flex Fields'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876075822228813604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14876076206328813609)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Flex Column'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:RP,80,81,82,83::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_avail_flex_cols number;',
'begin',
'    select',
'        count(*)',
'    into',
'        l_avail_flex_cols',
'    from',
'        user_tab_columns c,',
'        eba_cust_flex_registry r',
'    where',
'        c.table_name = r.flexible_table',
'    and',
'        r.assigned_yn = ''N''',
'    and',
'        (select count(*) from eba_cust_flex_registry where flexible_table = c.table_name and assigned_yn = ''Y'') < (select count(*) from user_tab_columns where table_name = c.table_name and lower(column_name) like ''%flex%'');',
'    if l_avail_flex_cols > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'exception',
'    when others then',
'        l_avail_flex_cols := 0;',
'        return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14876075615631813603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14876073202510813592)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15087915324893368926)
,p_name=>'Confirm Reset'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15087914829610360816)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15087915613591368928)
,p_event_id=>wwv_flow_api.id(15087915324893368926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to remove all flex field definitions from this application?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15087915826728371199)
,p_event_id=>wwv_flow_api.id(15087915324893368926)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CLEAR_FLEX_FIELDS'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1636938633241321802)
,p_name=>'Refresh Report'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1636938768184321803)
,p_event_id=>wwv_flow_api.id(1636938633241321802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14876073202510813592)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1636938805439321804)
,p_event_id=>wwv_flow_api.id(1636938633241321802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15087915930350389462)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove All Flex Fields'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_flex_fw.reset_flex_registry();',
'',
'    for c1 in ( select distinct m.flex_table,',
'                    m.page_id,',
'                    m.region_static_id,',
'                    m.flex_column_prefix,',
'                    m.region_type',
'                from eba_cust_flex_page_map m,',
'                    eba_cust_flex_registry r',
'                where m.flex_table = r.flexible_table',
'                    and m.region_type in (''IR'',''CR'')',
'            ) loop',
'        eba_cust_flex_fw.flex_report_update (',
'            p_flex_table_name      => c1.flex_table,',
'            p_irr_region_static_id => c1.region_static_id,',
'            p_flex_column_prefix   => c1.flex_column_prefix,',
'            p_app_id               => :APP_ID,',
'            p_page_id              => c1.page_id,',
'            p_region_type          => c1.region_type',
'        );',
'    end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15087914829610360816)
,p_process_success_message=>'All defined flex fields removed.'
);
end;
/

prompt --application/pages/page_00121
begin
wwv_flow_api.create_page(
 p_id=>121
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Email Log'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_required_patch=>wwv_flow_api.id(18755055328776627006)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this Interactive Report to view the log of emails sent from this application. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, f'
||'ilter, format, download, and/or save the interactive report.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190724102605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18759092490131563996)
,p_plug_name=>'Status Update Requests'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email_from, email_to, email_first_to, ',
'    body_size, created, initcap(replace(email_type,''_'','' '')) as email_type',
'from eba_cust_email_log',
'where created is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18759092793279563997)
,p_name=>'Status Update Requests'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No sent emails found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>17678314000680038760
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759092921037564004)
,p_db_column_name=>'EMAIL_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759093340910564008)
,p_db_column_name=>'EMAIL_TO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Full Email To List'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759093700672564008)
,p_db_column_name=>'EMAIL_FIRST_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759094169522564009)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Update Request'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759094592523564009)
,p_db_column_name=>'BODY_SIZE'
,p_display_order=>18
,p_column_identifier=>'L'
,p_column_label=>'Message Length (bytes)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18759094951673564010)
,p_db_column_name=>'EMAIL_TYPE'
,p_display_order=>28
,p_column_identifier=>'M'
,p_column_label=>'Email Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18759095298986564013)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'176783166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMAIL_FIRST_TO:BODY_SIZE:CREATED:EMAIL_TYPE'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18759105795253564017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18759092490131563996)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:56,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/

prompt --application/pages/page_00119
begin
wwv_flow_api.create_page(
 p_id=>119
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Review Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Review Feedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_required_patch=>wwv_flow_api.id(18755055328776627006)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'<p>All user-provided feedback can be reviewed and managed here. If <a href="f?p=&APP_ID.:28:&APP_SESSION.">feedback recipients</a> have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list'
||'. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or save the interactive report.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190913121926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18755438201948700661)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       APPLICATION_ID,',
'       PAGE_ID,',
'       FEEDBACK,',
'       RESPONSE,',
'       TYPE_ID,',
'       STATUS,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from EBA_CUST_FEEDBACK'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18755438580935700664)
,p_name=>'Feedback'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No feedback submissions found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_email_from=>'&P203_EMAIL_FROM_ADDRESS.'
,p_owner=>'ALLAN'
,p_internal_uid=>17674659788336175427
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755438667975700670)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:RP,204:P120_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755439028583700672)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755439465729700673)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755441492459700678)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755441866620700679)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755442232750700681)
,p_db_column_name=>'UPDATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18755442648512700681)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143973478306641564)
,p_db_column_name=>'STATUS'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(18755446997767700747)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143973526793641565)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>31
,p_column_identifier=>'M'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(18754503223596506258)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143973708470641566)
,p_db_column_name=>'RESPONSE'
,p_display_order=>41
,p_column_identifier=>'N'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143973771416641567)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>51
,p_column_identifier=>'O'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18755442998489700684)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'176746643'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PAGE_ID:TYPE_ID:FEEDBACK:STATUS:RESPONSE:UPDATED_BY:UPDATED:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18755443584748700691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18755438201948700661)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18755444263239700700)
,p_name=>'P119_EMAIL_FROM_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18755438201948700661)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18755446017398700728)
,p_name=>'Refresh on close after edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(18755438201948700661)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18755446670880700735)
,p_event_id=>wwv_flow_api.id(18755446017398700728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18755438201948700661)
);
end;
/

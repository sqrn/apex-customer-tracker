prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_tab_set=>'TS1'
,p_name=>'Customer Contacts'
,p_step_title=>'Customer Contacts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743894307005419781)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918111909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16617866933118560835)
,p_plug_name=>'Customer Contacts'
,p_region_name=>'CONTACTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    name,',
'    title,',
'    phone,',
'    email,',
'    created date_added,',
'    lower(created_by) added_by,',
'    tags,',
'    eba_cust_flex_fw.fetch_n(''CONTACT_FLEX_N01'',contact_flex_n01) contact_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''CONTACT_FLEX_N02'',contact_flex_n02) contact_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''CONTACT_FLEX_N03'',contact_flex_n03) contact_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''CONTACT_FLEX_N04'',contact_flex_n04) contact_flex_n04,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_01'', contact_flex_01)  contact_flex_01,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_02'', contact_flex_02)  contact_flex_02,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_03'', contact_flex_03)  contact_flex_03,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_04'', contact_flex_04)  contact_flex_04,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_05'', contact_flex_05)  contact_flex_05,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_06'', contact_flex_06)  contact_flex_06,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_07'', contact_flex_07)  contact_flex_07,',
'    eba_cust_flex_fw.fetch_v(''CONTACT_FLEX_08'', contact_flex_08)  contact_flex_08,',
'    contact_flex_d01,',
'    contact_flex_d02,',
'    contact_flex_d03,',
'    contact_flex_d04,',
'    contact_flex_clob',
'from eba_cust_contacts',
'where customer_id = :P25_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16617867118856560837)
,p_name=>'Customer Contacts'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
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
,p_detail_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::P37_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_api.id(15990395708594320440)
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CBCHO'
,p_internal_uid=>2528642417613719440
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617867206126560840)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617867422884560842)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617867504193560842)
,p_db_column_name=>'TITLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617868315308560844)
,p_db_column_name=>'EMAIL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617868404662560845)
,p_db_column_name=>'PHONE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16618593605933365289)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16618593711946365291)
,p_db_column_name=>'ADDED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16618594312990376756)
,p_db_column_name=>'TAGS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816014569808261)
,p_db_column_name=>'CONTACT_FLEX_01'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'CONTACT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816115230808262)
,p_db_column_name=>'CONTACT_FLEX_02'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'CONTACT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816209225808262)
,p_db_column_name=>'CONTACT_FLEX_03'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'CONTACT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816307966808262)
,p_db_column_name=>'CONTACT_FLEX_04'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'CONTACT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816409305808262)
,p_db_column_name=>'CONTACT_FLEX_05'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'CONTACT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816523637808262)
,p_db_column_name=>'CONTACT_FLEX_06'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'CONTACT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816616773808262)
,p_db_column_name=>'CONTACT_FLEX_07'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'CONTACT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879816720140808263)
,p_db_column_name=>'CONTACT_FLEX_08'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'CONTACT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879817201873808264)
,p_db_column_name=>'CONTACT_FLEX_D01'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'CONTACT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879817306660808264)
,p_db_column_name=>'CONTACT_FLEX_D02'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'CONTACT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879817410802808264)
,p_db_column_name=>'CONTACT_FLEX_D03'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'CONTACT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879817525174808264)
,p_db_column_name=>'CONTACT_FLEX_D04'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'CONTACT_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879817609577808264)
,p_db_column_name=>'CONTACT_FLEX_CLOB'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'CONTACT_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090799102212421439)
,p_db_column_name=>'CONTACT_FLEX_N01'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'CONTACT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090799228859421439)
,p_db_column_name=>'CONTACT_FLEX_N02'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'CONTACT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090799320522421439)
,p_db_column_name=>'CONTACT_FLEX_N03'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'CONTACT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090799411714421439)
,p_db_column_name=>'CONTACT_FLEX_N04'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'CONTACT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CONTACTS'' and flexible_column = ''CONTACT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16617873220769565295)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25286486'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NAME:TITLE:EMAIL:PHONE:TAGS:ADDED_BY:DATE_ADDED'
,p_sort_column_1=>'DATE_ADDED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16617871326266560856)
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
 p_id=>wwv_flow_api.id(16617871216990560855)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16617871326266560856)
,p_button_name=>'ADD_CONTACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Contact'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37:P37_CUSTOMER_ID:&P25_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16617884420947603158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16617866933118560835)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14896865945792167991)
,p_name=>'P25_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16617866933118560835)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(16618599827676466178)
,p_computation_sequence=>10
,p_computation_item=>'P50_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P25_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13550517555310809072)
,p_name=>'Refresh IRR on Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16617871216990560855)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13550517653577809073)
,p_event_id=>wwv_flow_api.id(13550517555310809072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16617866933118560835)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14301591519952718078)
,p_name=>'Refresh IRR on Edit Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16617866933118560835)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14301591660818718079)
,p_event_id=>wwv_flow_api.id(14301591519952718078)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16617866933118560835)
);
end;
/

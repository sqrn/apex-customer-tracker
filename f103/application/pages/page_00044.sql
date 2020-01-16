prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Products'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743894510468420787)
,p_step_template=>wwv_flow_api.id(14882936055368818350)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(14979909416351740085)
,p_protection_level=>'C'
,p_help_text=>'<p>This page summarizes product use by customer.  Each customer can use zero or more products.  Click the <strong>product name</strong> column to drill-down to a report of customer products.  Products can be managed for each customer from the custome'
||'r details page.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190918090807'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828743849133499177)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828744449648614337)
,p_plug_name=>'Customer Product Usage'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name, ',
'    description, ',
'    id, ',
'    created created,',
'    lower(created_by) created_by, ',
'    updated updated, ',
'    lower(updated_by) updated_by ,',
'    (select name from eba_cust_product_families f where f.id = p.product_family_id) family,',
'    (   select count(*)',
'        from eba_cust_product_uses u',
'        where u.product_id = p.id ) customer_uses,',
'    tags,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N01'',product_flex_n01) product_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N02'',product_flex_n02) product_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N03'',product_flex_n03) product_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N04'',product_flex_n04) product_flex_n04,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_01'',product_flex_01) product_flex_01,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_02'',product_flex_02) product_flex_02,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_03'',product_flex_03) product_flex_03,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_04'',product_flex_04) product_flex_04,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_05'',product_flex_05) product_flex_05,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_06'',product_flex_06) product_flex_06,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_07'',product_flex_07) product_flex_07,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_08'',product_flex_08) product_flex_08,',
'    product_flex_d01,',
'    product_flex_d02,',
'    product_flex_d03,',
'    product_flex_d04,',
'    product_flex_clob',
'from eba_cust_products p'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17828744540781614337)
,p_name=>'Customer Product Usage'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>3739519839538772940
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828744724325614341)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product / Service Name'
,p_column_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19,RIR,CIR:IR_PRODUCT_NAME:#PRODUCT_NAME#'
,p_column_linktext=>'#PRODUCT_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828744824119614341)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828744950521614342)
,p_db_column_name=>'ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828745026138614342)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828745146730614342)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828745241175614343)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828745342424614343)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828745438491614344)
,p_db_column_name=>'CUSTOMER_USES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Customer Uses'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17833225129191827316)
,p_db_column_name=>'TAGS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_cust_tags_type_sum',
' where content_type = ''PRODUCT''',
'   and tag_count > 0'))
,p_rpt_show_filter_lov=>'C'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879489911800616909)
,p_db_column_name=>'PRODUCT_FLEX_01'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'PRODUCT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490023179616909)
,p_db_column_name=>'PRODUCT_FLEX_02'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'PRODUCT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490120986616909)
,p_db_column_name=>'PRODUCT_FLEX_03'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'PRODUCT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490225599616909)
,p_db_column_name=>'PRODUCT_FLEX_04'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'PRODUCT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490309992616909)
,p_db_column_name=>'PRODUCT_FLEX_05'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'PRODUCT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490431117616910)
,p_db_column_name=>'PRODUCT_FLEX_06'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'PRODUCT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490509036616910)
,p_db_column_name=>'PRODUCT_FLEX_07'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'PRODUCT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490608800616910)
,p_db_column_name=>'PRODUCT_FLEX_08'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'PRODUCT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490706438616910)
,p_db_column_name=>'PRODUCT_FLEX_D01'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'PRODUCT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490830649616910)
,p_db_column_name=>'PRODUCT_FLEX_D02'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'PRODUCT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879490907974616910)
,p_db_column_name=>'PRODUCT_FLEX_D03'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'PRODUCT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879491003707616911)
,p_db_column_name=>'PRODUCT_FLEX_D04'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'PRODUCT_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879491126706616912)
,p_db_column_name=>'PRODUCT_FLEX_CLOB'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'PRODUCT_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15088558207463121417)
,p_db_column_name=>'PRODUCT_FLEX_N01'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'PRODUCT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15088558320908121417)
,p_db_column_name=>'PRODUCT_FLEX_N02'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'PRODUCT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15088558409372121417)
,p_db_column_name=>'PRODUCT_FLEX_N03'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'PRODUCT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15088558515761121419)
,p_db_column_name=>'PRODUCT_FLEX_N04'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'PRODUCT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17809770906340883506)
,p_db_column_name=>'FAMILY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Family'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17828745537251614603)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9117208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PRODUCT_NAME:FAMILY:CUSTOMER_USES:UPDATED'
,p_sort_column_1=>'CUSTOMER_USES'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2038863183721028331)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828743849133499177)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16618610504024676952)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828744449648614337)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/

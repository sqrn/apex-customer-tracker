prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Products'
,p_page_mode=>'MODAL'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'<p>Products are used to associate with customers. A customer can be associated with multiple products. The product association is very important when you are searching for specific customers that use a given product. Click the <strong>Add Product ></'
||'strong> button to create a new product.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190918090807'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828329623419351077)
,p_plug_name=>'Products'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ID, ',
'    PRODUCT_NAME,',
'    product_family_id,',
'    DESCRIPTION,',
'    decode(is_active,''Y'',''Yes'',null,''No'',''N'',''No'') IS_ACTIVE,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_01'',product_flex_01) product_flex_01,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_02'',product_flex_02) product_flex_02,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_03'',product_flex_03) product_flex_03,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_04'',product_flex_04) product_flex_04,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_05'',product_flex_05) product_flex_05,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_06'',product_flex_06) product_flex_06,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_07'',product_flex_07) product_flex_07,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_08'',product_flex_08) product_flex_08,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N01'',product_flex_n01) product_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N02'',product_flex_n02) product_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N03'',product_flex_n03) product_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N04'',product_flex_n04) product_flex_n04,',
'    product_flex_d01,',
'    product_flex_d02,',
'    product_flex_d03,',
'    product_flex_d04,',
'    product_flex_clob,',
'    nvl(updated,created) last_updated,',
'    nvl(updated_by,created_by) last_updated_by',
'from EBA_CUST_PRODUCTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17828329824728351078)
,p_name=>'Products'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
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
,p_internal_uid=>3739105123485509681
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828329950213351081)
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
 p_id=>wwv_flow_api.id(17828330041590351082)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_ID:#ID#'
,p_column_linktext=>'#PRODUCT_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828330122247351082)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828330243640351083)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879168127520645646)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879168205652645652)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461006599432724)
,p_db_column_name=>'PRODUCT_FLEX_01'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'PRODUCT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461111326432725)
,p_db_column_name=>'PRODUCT_FLEX_02'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'PRODUCT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461211103432725)
,p_db_column_name=>'PRODUCT_FLEX_03'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'PRODUCT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461305920432725)
,p_db_column_name=>'PRODUCT_FLEX_04'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'PRODUCT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461416887432725)
,p_db_column_name=>'PRODUCT_FLEX_05'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'PRODUCT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461523170432725)
,p_db_column_name=>'PRODUCT_FLEX_06'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'PRODUCT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461603895432726)
,p_db_column_name=>'PRODUCT_FLEX_07'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'PRODUCT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879461712514432726)
,p_db_column_name=>'PRODUCT_FLEX_08'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'PRODUCT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879462226459432726)
,p_db_column_name=>'PRODUCT_FLEX_D01'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'PRODUCT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879462318499432726)
,p_db_column_name=>'PRODUCT_FLEX_D02'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'PRODUCT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879462408737432726)
,p_db_column_name=>'PRODUCT_FLEX_D03'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'PRODUCT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879462511517432727)
,p_db_column_name=>'PRODUCT_FLEX_D04'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'PRODUCT_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879462632400432727)
,p_db_column_name=>'PRODUCT_FLEX_CLOB'
,p_display_order=>40
,p_column_identifier=>'AN'
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
 p_id=>wwv_flow_api.id(15090794931801088574)
,p_db_column_name=>'PRODUCT_FLEX_N01'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'PRODUCT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090795024161088574)
,p_db_column_name=>'PRODUCT_FLEX_N02'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'PRODUCT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090795108449088574)
,p_db_column_name=>'PRODUCT_FLEX_N03'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'PRODUCT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090795208778088574)
,p_db_column_name=>'PRODUCT_FLEX_N04'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'PRODUCT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17772452459685748758)
,p_db_column_name=>'PRODUCT_FAMILY_ID'
,p_display_order=>54
,p_column_identifier=>'AS'
,p_column_label=>'Product Family'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(17786462002480156944)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17828331325748355887)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9113066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_FAMILY_ID:PRODUCT_NAME:DESCRIPTION:IS_ACTIVE:LAST_UPDATED_BY:LAST_UPDATED'
,p_sort_column_1=>'LAST_UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'IS_ACTIVE'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'PRODUCT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14782604720851579532)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828329623419351077)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17828330330673351083)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17828329623419351077)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:43::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(362125326762092504)
,p_name=>'Refresh on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17828330330673351083)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(362125430230092505)
,p_event_id=>wwv_flow_api.id(362125326762092504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17828329623419351077)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(362125589260092506)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17828329623419351077)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(362125625135092507)
,p_event_id=>wwv_flow_api.id(362125589260092506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17828329623419351077)
);
end;
/

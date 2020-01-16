prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Customer Product Use'
,p_step_title=>'Customer Product Use'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743894510468420787)
,p_step_template=>wwv_flow_api.id(14882936055368818350)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918090807'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828770435237084978)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828770848309084980)
,p_plug_name=>'Customer Product Use'
,p_region_name=>'CUSTOMERS_PRODUCTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_name,',
'    c.customer_name,',
'    c.row_key customer_row_key,',
'    c.referencable,',
'    c.tags,',
'    u.customer_id,',
'    u.product_id,',
'    u.reference_status_id,',
'    (',
'        select listagg(rt.reference_type,'', '') within group (order by rt.reference_type)',
'          from eba_cust_reference_types rt',
'         where '':''||u.reference_type_ids||'':'' like ''%:''||rt.id||'':%''',
'    ) as reference_types,',
'    decode( u.customer_contact_id, null, null,',
'        (select decode(email, null, name, ''<a href="mailto:'' || apex_escape.html(email) || ''">''',
'                       || apex_escape.html(name) || ''</a>'')',
'         from EBA_CUST_CONTACTS where id = u.customer_contact_id) ) as customer_contact,',
'    case when instr(nvl(u.internal_contact,''xxx''), ''@'') = 0 then',
'            apex_escape.html(u.internal_contact)',
'         else ''<a href="mailto:'' || apex_escape.html(u.internal_contact) || ''">''',
'             || apex_escape.html(u.internal_contact) || ''</a>'' end as internal_contact,',
'    u.valid_from,',
'    u.valid_to,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N01'',c.customer_flex_n01) customer_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N02'',c.customer_flex_n02) customer_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N03'',c.customer_flex_n03) customer_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N04'',c.customer_flex_n04) customer_flex_n04,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'', c.customer_flex_01)  customer_flex_01,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_02'', c.customer_flex_02)  customer_flex_02,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_03'', c.customer_flex_03)  customer_flex_03,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_04'', c.customer_flex_04)  customer_flex_04,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_05'', c.customer_flex_05)  customer_flex_05,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_06'', c.customer_flex_06)  customer_flex_06,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_07'', c.customer_flex_07)  customer_flex_07,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_08'', c.customer_flex_08)  customer_flex_08,',
'    c.customer_flex_d01,',
'    c.customer_flex_d02,',
'    c.customer_flex_d03,',
'    c.customer_flex_d04,',
'    c.customer_flex_clob,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_01'',p.product_flex_01) product_flex_01,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_02'',p.product_flex_02) product_flex_02,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_03'',p.product_flex_03) product_flex_03,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_04'',p.product_flex_04) product_flex_04,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_05'',p.product_flex_05) product_flex_05,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_06'',p.product_flex_06) product_flex_06,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_07'',p.product_flex_07) product_flex_07,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_08'',p.product_flex_08) product_flex_08,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N01'',p.product_flex_n01) product_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N02'',p.product_flex_n02) product_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N03'',p.product_flex_n03) product_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N04'',p.product_flex_n04) product_flex_n04,',
'    p.product_flex_d01,',
'    p.product_flex_d02,',
'    p.product_flex_d03,',
'    p.product_flex_d04,',
'    p.product_flex_clob',
'from eba_cust_customers c,',
'    eba_cust_product_uses u,',
'    eba_cust_products p',
'where p.id = u.product_id',
'    and c.id = u.customer_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17828770949958084980)
,p_name=>'Customer Product Use'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>3739546248715243583
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828771129950084981)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product / Service'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828771246801084982)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50,RP:P50_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828771339976084982)
,p_db_column_name=>'CUSTOMER_ROW_KEY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Row Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828771431837084983)
,p_db_column_name=>'REFERENCABLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Publicly Referenceable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828771547925084983)
,p_db_column_name=>'TAGS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828772138609088053)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17828772243659088053)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Product'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879425601270827492)
,p_db_column_name=>'CUSTOMER_FLEX_01'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Additional Flex Column'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879425724777827492)
,p_db_column_name=>'PRODUCT_FLEX_01'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'PRODUCT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879425818772827492)
,p_db_column_name=>'CUSTOMER_FLEX_02'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'lov'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879425914237827492)
,p_db_column_name=>'PRODUCT_FLEX_02'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'PRODUCT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426032161827492)
,p_db_column_name=>'CUSTOMER_FLEX_03'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'CUSTOMER_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426106295827492)
,p_db_column_name=>'PRODUCT_FLEX_03'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'PRODUCT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426211901827493)
,p_db_column_name=>'CUSTOMER_FLEX_04'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'CUSTOMER_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426309205827493)
,p_db_column_name=>'PRODUCT_FLEX_04'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'PRODUCT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426433822827493)
,p_db_column_name=>'CUSTOMER_FLEX_05'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'CUSTOMER_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426529220827493)
,p_db_column_name=>'PRODUCT_FLEX_05'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'PRODUCT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426601644827493)
,p_db_column_name=>'CUSTOMER_FLEX_06'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'CUSTOMER_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426717568827493)
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
 p_id=>wwv_flow_api.id(14879426803552827493)
,p_db_column_name=>'CUSTOMER_FLEX_07'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'CUSTOMER_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879426933203827494)
,p_db_column_name=>'PRODUCT_FLEX_07'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'PRODUCT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879427028162827494)
,p_db_column_name=>'CUSTOMER_FLEX_08'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'CUSTOMER_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879427129602827494)
,p_db_column_name=>'PRODUCT_FLEX_08'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'PRODUCT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428016496827495)
,p_db_column_name=>'CUSTOMER_FLEX_D01'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'CUSTOMER_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428108155827495)
,p_db_column_name=>'PRODUCT_FLEX_D01'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'PRODUCT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428220548827495)
,p_db_column_name=>'CUSTOMER_FLEX_D02'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'CUSTOMER_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428322843827495)
,p_db_column_name=>'PRODUCT_FLEX_D02'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'PRODUCT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428407146827495)
,p_db_column_name=>'CUSTOMER_FLEX_D03'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'CUSTOMER_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428505979827495)
,p_db_column_name=>'PRODUCT_FLEX_D03'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'PRODUCT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428607951827495)
,p_db_column_name=>'CUSTOMER_FLEX_D04'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'CUSTOMER_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428726502827497)
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
 p_id=>wwv_flow_api.id(14879428829029827497)
,p_db_column_name=>'CUSTOMER_FLEX_CLOB'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'CUSTOMER_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879428918919827497)
,p_db_column_name=>'PRODUCT_FLEX_CLOB'
,p_display_order=>41
,p_column_identifier=>'AO'
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
 p_id=>wwv_flow_api.id(15090793916070080787)
,p_db_column_name=>'CUSTOMER_FLEX_N01'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'CUSTOMER_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794018831080790)
,p_db_column_name=>'CUSTOMER_FLEX_N02'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'CUSTOMER_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794103466080790)
,p_db_column_name=>'CUSTOMER_FLEX_N03'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'CUSTOMER_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794226047080791)
,p_db_column_name=>'CUSTOMER_FLEX_N04'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'CUSTOMER_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794330653080791)
,p_db_column_name=>'PRODUCT_FLEX_N01'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'PRODUCT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794406341080791)
,p_db_column_name=>'PRODUCT_FLEX_N02'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'PRODUCT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794518627080791)
,p_db_column_name=>'PRODUCT_FLEX_N03'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'PRODUCT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090794619559080791)
,p_db_column_name=>'PRODUCT_FLEX_N04'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'PRODUCT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590110051718064)
,p_db_column_name=>'REFERENCE_STATUS_ID'
,p_display_order=>59
,p_column_identifier=>'AX'
,p_column_label=>'Reference Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(14304919605733554080)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590284773718065)
,p_db_column_name=>'REFERENCE_TYPES'
,p_display_order=>69
,p_column_identifier=>'AY'
,p_column_label=>'Reference Assets'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590371794718066)
,p_db_column_name=>'CUSTOMER_CONTACT'
,p_display_order=>79
,p_column_identifier=>'AZ'
,p_column_label=>'Customer Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590417406718067)
,p_db_column_name=>'INTERNAL_CONTACT'
,p_display_order=>89
,p_column_identifier=>'BA'
,p_column_label=>'Internal Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590498576718068)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>99
,p_column_identifier=>'BB'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14301590658674718069)
,p_db_column_name=>'VALID_TO'
,p_display_order=>109
,p_column_identifier=>'BC'
,p_column_label=>'Valid Until'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17828771628912085260)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9117469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_NAME:PRODUCT_NAME:REFERENCE_STATUS_ID:REFERENCE_TYPES:CUSTOMER_CONTACT:VALID_FROM:VALID_TO:TAGS:CUSTOMER_FLEX_01:CUSTOMER_FLEX_02'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2038863019394028330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828770435237084978)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14746139617231472609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828770848309084980)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/

prompt --application/pages/page_00067
begin
wwv_flow_api.create_page(
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_tab_set=>'TS1'
,p_name=>'Products'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743894307005419781)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918090806'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16617731024930583901)
,p_plug_name=>'Products'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id,',
'    p.id id2,',
'    u.product_id,',
'    p.product_name,',
'    p.description,',
'    p.tags,',
'    p.is_active,',
'    u.valid_from,',
'    u.valid_to,',
'    nvl(u.updated, u.created) last_updated,',
'    lower(nvl(u.updated_by, u.created_by)) last_updated_by,',
'    u.reference_status_id,',
'    ''#'' delete_link,',
'    (',
'        select listagg(rt.reference_type,'', '') within group (order by rt.reference_type)',
'          from eba_cust_reference_types rt',
'         where '':''||u.reference_type_ids||'':'' like ''%:''||rt.id||'':%''',
'    ) as reference_types,',
'    decode( u.customer_contact_id, null, null, (select decode(email, null, name, ''<a href="mailto:''',
'                                                              || apex_escape.html(email) || ''">''',
'                                                              || apex_escape.html(name) || ''</a>'')',
'                                                from EBA_CUST_CONTACTS where id = u.customer_contact_id) ) as customer_contact,',
'       case when instr(nvl(u.internal_contact,''xxx''), ''@'') = 0 then apex_escape.html(u.internal_contact)',
'           else ''<a href="mailto:'' || apex_escape.html(u.internal_contact) || ''">''',
'                   || apex_escape.html(u.internal_contact) || ''</a>'' end as internal_contact,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_01'', p.product_flex_01)  product_flex_01,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_02'', p.product_flex_02)  product_flex_02,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_03'', p.product_flex_03)  product_flex_03,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_04'', p.product_flex_04)  product_flex_04,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_05'', p.product_flex_05)  product_flex_05,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_06'', p.product_flex_06)  product_flex_06,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_07'', p.product_flex_07)  product_flex_07,',
'    eba_cust_flex_fw.fetch_v(''PRODUCT_FLEX_08'', p.product_flex_08)  product_flex_08,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N01'',p.product_flex_n01) product_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N02'',p.product_flex_n02) product_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N03'',p.product_flex_n03) product_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''PRODUCT_FLEX_N04'',p.product_flex_n04) product_flex_n04,',
'    p.product_flex_d01,',
'    p.product_flex_d02,',
'    p.product_flex_d03,',
'    p.product_flex_d04,',
'    p.product_flex_clob',
'from eba_cust_product_uses u,',
'    eba_cust_products p',
'where u.customer_id = :P67_ID',
'    and u.product_id = p.id',
'order by u.created desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16617731220813583901)
,p_name=>'Products'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No products found'
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
,p_owner=>'CBCHO'
,p_internal_uid=>2528506519570742504
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14896865988911167992)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'AE'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16619216304957363128)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617731414511583906)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617731506248583906)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617731616146583906)
,p_db_column_name=>'TAGS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16617731713609583907)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17826171223649277706)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16619215531360351774)
,p_db_column_name=>'DELETE_LINK'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Remove'
,p_column_link=>'f?p=&APP_ID.:67:&SESSION.:DELETE_PRODUCT:&DEBUG.::P67_DELETE_PROD_ID:#PRODUCT_ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete Product: #PRODUCT_NAME#"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'&nbsp;'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879809529759421268)
,p_db_column_name=>'PRODUCT_FLEX_01'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'PRODUCT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879809605140421271)
,p_db_column_name=>'PRODUCT_FLEX_02'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'PRODUCT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879809707409421272)
,p_db_column_name=>'PRODUCT_FLEX_03'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'PRODUCT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879809823330421273)
,p_db_column_name=>'PRODUCT_FLEX_04'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'PRODUCT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879809907235421273)
,p_db_column_name=>'PRODUCT_FLEX_05'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'PRODUCT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879810018513421273)
,p_db_column_name=>'PRODUCT_FLEX_06'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'PRODUCT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879810119319421274)
,p_db_column_name=>'PRODUCT_FLEX_07'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'PRODUCT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879810215480421274)
,p_db_column_name=>'PRODUCT_FLEX_08'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'PRODUCT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14879810708810421274)
,p_db_column_name=>'PRODUCT_FLEX_D01'
,p_display_order=>180
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
 p_id=>wwv_flow_api.id(14879810807592421274)
,p_db_column_name=>'PRODUCT_FLEX_D02'
,p_display_order=>190
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
 p_id=>wwv_flow_api.id(14879810903173421274)
,p_db_column_name=>'PRODUCT_FLEX_D03'
,p_display_order=>200
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
 p_id=>wwv_flow_api.id(14879811012119421274)
,p_db_column_name=>'PRODUCT_FLEX_D04'
,p_display_order=>210
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
 p_id=>wwv_flow_api.id(14879811111041421275)
,p_db_column_name=>'PRODUCT_FLEX_CLOB'
,p_display_order=>220
,p_column_identifier=>'Z'
,p_column_label=>'PRODUCT_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090799929360439206)
,p_db_column_name=>'PRODUCT_FLEX_N01'
,p_display_order=>230
,p_column_identifier=>'AA'
,p_column_label=>'PRODUCT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090800027181439206)
,p_db_column_name=>'PRODUCT_FLEX_N02'
,p_display_order=>240
,p_column_identifier=>'AB'
,p_column_label=>'PRODUCT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090800129261439206)
,p_db_column_name=>'PRODUCT_FLEX_N03'
,p_display_order=>250
,p_column_identifier=>'AC'
,p_column_label=>'PRODUCT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15090800224651439207)
,p_db_column_name=>'PRODUCT_FLEX_N04'
,p_display_order=>260
,p_column_identifier=>'AD'
,p_column_label=>'PRODUCT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_PRODUCTS'' and flexible_column = ''PRODUCT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14311931089884291579)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>261
,p_column_identifier=>'AF'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14311931746857291582)
,p_db_column_name=>'VALID_TO'
,p_display_order=>262
,p_column_identifier=>'AG'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14311973257525351302)
,p_db_column_name=>'ID2'
,p_display_order=>263
,p_column_identifier=>'AH'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_CUSTOMER_ID,P68_ID,P68_PRODUCT_ID:&P67_ID.,#ID#,#PRODUCT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_allow_sorting=>'N'
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
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12023347782217968666)
,p_db_column_name=>'REFERENCE_STATUS_ID'
,p_display_order=>273
,p_column_identifier=>'AI'
,p_column_label=>'Status'
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
 p_id=>wwv_flow_api.id(12023347876822968667)
,p_db_column_name=>'REFERENCE_TYPES'
,p_display_order=>283
,p_column_identifier=>'AJ'
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
 p_id=>wwv_flow_api.id(12023347967591968668)
,p_db_column_name=>'CUSTOMER_CONTACT'
,p_display_order=>293
,p_column_identifier=>'AK'
,p_column_label=>'Customer Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12023348068214968669)
,p_db_column_name=>'INTERNAL_CONTACT'
,p_display_order=>303
,p_column_identifier=>'AL'
,p_column_label=>'Internal Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12023348550490968674)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>313
,p_column_identifier=>'AM'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12023348682954968675)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>323
,p_column_identifier=>'AN'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16617733730711667718)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25285091'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID2:PRODUCT_NAME:VALID_FROM:VALID_TO:REFERENCE_STATUS_ID:REFERENCE_TYPES:CUSTOMER_CONTACT:INTERNAL_CONTACT:LAST_UPDATED:LAST_UPDATED_BY:DELETE_LINK'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16617732528385583908)
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
 p_id=>wwv_flow_api.id(16617732422575583907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16617732528385583908)
,p_button_name=>'ADD_PRODUCT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:P68_CUSTOMER_ID:&P67_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16617735216428682494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16617731024930583901)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16617735031188677243)
,p_name=>'P67_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16617731024930583901)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16619329631969370924)
,p_name=>'P67_DELETE_PROD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16617731024930583901)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(16618600114647471853)
,p_computation_sequence=>10
,p_computation_item=>'P50_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P67_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13550518905433809086)
,p_name=>'Refresh IRR on close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16617732422575583907)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13550519000127809087)
,p_event_id=>wwv_flow_api.id(13550518905433809086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16617731024930583901)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12023348192147968670)
,p_name=>'Refresh IRR on Edit Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16617731024930583901)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12023348249070968671)
,p_event_id=>wwv_flow_api.id(12023348192147968670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16617731024930583901)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16619330209028383220)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete product'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_cust_product_uses',
'where product_id = :P67_DELETE_PROD_ID',
'and customer_id = :P67_ID;'))
,p_process_when=>'DELETE_PRODUCT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Product deleted'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
end;
/

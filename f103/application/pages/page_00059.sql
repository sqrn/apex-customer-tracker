prompt --application/pages/page_00059
begin
wwv_flow_api.create_page(
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743894307005419781)
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// standard, cacheable elements',
'var timeout = 0; // used for debounce on search',
'var CONTAINER_SEL = ''.t-Form-fieldContainer'';',
'var pagePrefix = ''P'' + $(''#pFlowStepId'').val();',
'var displayAsId = pagePrefix + ''_DISPLAY_AS'';',
'var $displayAs = $(''#'' + displayAsId);',
'var $body = $(''.t-PageBody'');',
'var $search = $(''#'' + pagePrefix + ''_SEARCH'');',
'var $sort = $(''#'' + pagePrefix + ''_SORT'');',
'var $reset = $(''#reset_button'');',
'var $cardsReg = $(''#cards_region'');',
'var $reportReg = $(''#report_region'');',
'var $logoReg = $(''#logo_region'');',
'',
'// custom items (will vary by page)',
'var $geo             = $(''#'' + pagePrefix + ''_GEO'');',
'var $industry        = $(''#'' + pagePrefix + ''_INDUSTRY'');',
'var $category        = $(''#'' + pagePrefix + ''_CATEGORY'');',
'var $product         = $(''#'' + pagePrefix + ''_PRODUCT'');',
'var $status          = $(''#'' + pagePrefix + ''_STATUS'');',
'var $max_rows        = $(''#'' + pagePrefix + ''_MAX_ROWS'');',
'var $reference_types = $(''#'' + pagePrefix + ''_REFERENCE_TYPES'');',
'var $marquee_cust    = $(''#'' + pagePrefix + ''_MARQUEE_CUST'');',
'var $scp_cust        = $(''#'' + pagePrefix + ''_SCP_CUST'');',
'var $type            = $(''#'' + pagePrefix + ''_TYPE'');',
'var $use_case        = $(''#'' + pagePrefix + ''_USE_CASE'');',
'var $referenceable   = $(''#'' + pagePrefix + ''_REFERENCEABLE'');',
'var $imp_partner     = $(''#'' + pagePrefix + ''_IMP_PARTNER'');',
'var $competitor      = $(''#'' + pagePrefix + ''_COMPETITOR'');',
'var $logo_size       = $(''#'' + pagePrefix + ''_LOGO_SIZE'');',
'',
'function showLeftColumn() {',
'    $body',
'        .removeClass(''t-PageBody--hideLeft'')',
'        .addClass(''t-PageBody--showLeft'');',
'',
'    // Takes 200ms to hide column',
'    setTimeout(function() {',
'        // Ensure column headers align correctly',
'        $(window).trigger(''apexwindowresized'');',
'    }, 250);',
'}',
'',
'function hideLeftColumn() {',
'    $body',
'        .removeClass(''t-PageBody--showLeft'')',
'        .addClass(''t-PageBody--hideLeft'');',
'',
'    // Takes 200ms to hide column',
'    setTimeout(function() {',
'        // Ensure column headers align correctly',
'        $(window).trigger(''apexwindowresized'');',
'    }, 250);',
'}',
'',
'// applyFilters triggers the refresh event on the correct region',
'function applyFilters() {',
'    var display = $v(displayAsId);',
'',
'    if (display === ''CARDS'') {',
'        $cardsReg.trigger(''apexrefresh'');',
'    } else if (display === ''REPORT'') {',
'        $reportReg.trigger(''apexrefresh'');',
'    } else if (display === ''LOGOS'') {',
'        $logoReg.trigger(''apexrefresh'');',
'    }',
'}',
'',
'// toggleRegionDisplay is similar to applyFilters except that it also',
'// takes into account what regions or items need to be displayed or hidden',
'function toggleRegionDisplay(refresh) {',
'    var display = $v(displayAsId);',
'',
'    refresh = (refresh === false) ? false : true;',
'',
'    if (display === ''CARDS'') {',
'        $reportReg.hide();',
'        $logoReg.hide();',
'        $logo_size.closest(CONTAINER_SEL).hide();',
'        showLeftColumn();',
'',
'        if (refresh) {',
'            $cardsReg.trigger(''apexrefresh'');',
'        }',
'',
'        $cardsReg.show();',
'    } else if (display === ''REPORT'') {',
'        $cardsReg.hide();',
'        $logoReg.hide();',
'        $logo_size.closest(CONTAINER_SEL).hide();',
'        hideLeftColumn();',
'        if (refresh) {',
'            $reportReg.trigger(''apexrefresh'');',
'        }',
'',
'        $reportReg.show();',
'    } else if (display === ''LOGOS'') {',
'        $cardsReg.hide();',
'        $reportReg.hide();',
'        $logo_size.closest(CONTAINER_SEL).show();',
'        showLeftColumn();',
'        if (refresh) {',
'            $logoReg.trigger(''apexrefresh'');',
'        }',
'        $logoReg.show();',
'    }',
'}',
'',
'function debounceSearch(e) {',
'    /* ',
'     * Prevent search for following keys:',
'     * TAB:     9',
'     * SHIFT:   16',
'     * LEFT:    37',
'     * RIGHT:   39',
'     */',
'    if ( e.which === 9 || e.which === 16 || e.which === 37 || e.which === 39 ) {',
'        return false;',
'    }',
'',
'    clearTimeout(timeout);',
'    timeout = setTimeout(applyFilters, 250);',
'}',
'',
'function preventSubmitOnEnter(e) {',
'    if (e.which === 13) {',
'        return false;',
'    }',
'}',
'',
'function resetFilters() {',
'    $search.val(null);',
'',
'    $sort.val(null);',
'    $geo.val(null);',
'    $industry.val(null);',
'    $category.val(null);',
'    $product.val(null);',
'    $status.val(null);',
'    $max_rows.val(null);',
'    $reference_types.val(null);',
'    $marquee_cust.val(null);',
'    $scp_cust.val(null);',
'    $type.val(null);',
'    $use_case.val(null);',
'    $referenceable.val(null);',
'    $imp_partner.val(null);',
'    $competitor.val(null);',
'    $logo_size.val(''S'');',
'',
'    applyFilters();',
'}',
'',
'// standard search event bindings',
'$search.keydown(preventSubmitOnEnter);',
'$search.keyup(debounceSearch);',
'',
'// dynamic event bindings (will vary by filter page)',
'$sort.change(applyFilters);',
'$geo.change(applyFilters);',
'$industry.change(applyFilters);',
'$category.change(applyFilters);',
'$product.change(applyFilters);',
'$status.change(applyFilters);',
'$max_rows.change(applyFilters);',
'$reference_types.change(applyFilters);',
'$marquee_cust.change(applyFilters);',
'$scp_cust.change(applyFilters);',
'$type.change(applyFilters);',
'$use_case.change(applyFilters);',
'$referenceable.change(applyFilters);',
'$imp_partner.change(applyFilters);',
'$competitor.change(applyFilters);',
'',
'// standard display, sort, reset event bindings',
'$displayAs.change(toggleRegionDisplay);',
'$reset.click(resetFilters);',
'',
'toggleRegionDisplay(false);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.logo-cards .t-Card-icon, .logo-cards .t-Card-titleWrap, .logo-cards .t-Card-info { display: none !important }',
'.logo-cards .t-Card .t-Card-body { padding: 0; border: none; margin: 0 }',
'.logo-cards .t-Card .t-Card-desc {position: relative;}',
'.logo-cards .t-Card img { width: 100%; vertical-align: middle; max-height: ; }',
'span.no-image { display: block; text-align: center; color: #909090; font-weight: 200; white-space: nowrap; padding: 0 12px; }',
'.t-Cards--float .t-Cards-item { max-width: 100% }',
'.t-Cards--float.large-logos .t-Cards-item { width: 480px }',
'.t-Cards--float.large-logos.logo-cards .t-Card .t-Card-desc { line-height: 300px; height: 300px}',
'.t-Cards--float.large-logos span.no-image {font-size: 24px;}',
'.t-Cards--float.medium-logos .t-Cards-item { width: 320px }',
'.t-Cards--float.medium-logos.logo-cards .t-Card .t-Card-desc { line-height: 180px; height: 180px}',
'.t-Cards--float.medium-logos span.no-image {font-size: 20px;}',
'.t-Cards--float.small-logos .t-Cards-item { width: 180px }',
'.t-Cards--float.small-logos.logo-cards .t-Card .t-Card-desc { line-height: 120px; height: 120px}',
'.t-Cards--float.small-logos span.no-image {font-size: 14px;}',
'',
'span.customer-logo {',
'    display: block;',
'    background-repeat: no-repeat;',
'    background-position: 50%;',
'    background-size: contain;',
'    margin: 10px;',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(14882938598312818354)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>Customer Tracker helps you improve your customer interactions by offering a centralized repository of information.</p>',
'<p>Each customer can have multiple contacts and be associated with multiple products.  Each contact has a variety of standard attributes, such as category, geography, industry and status, as well as the ability to add tags to a customer for further a'
||'d hoc classification.  You can indicate the reference status for a customer and enter free form text as a customer profile.</p>',
'<p>You can create activity records to log interactions with each customer.  Customer Tracker includes a variety of reports which let you view recent activities, status changes and tags.  You can also use interactive reports to give your users the abi'
||'lity to filter and shape customer, contact, activity and interaction data.</p>',
'<p>Customer Tracker gives you the ability to define your own standards for attributes such as categories, statuses, customer and activity types, and products, allowing you to create a customized version of Customer Tracker to meet your own needs.</p>'))
,p_last_upd_yyyymmddhh24miss=>'20190325153139'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14301592346564718086)
,p_name=>'Customer Logos'
,p_region_name=>'logo_region'
,p_template=>wwv_flow_api.id(14882965472431818390)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'logo-cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured force-fa-lg:t-Cards--float:t-Cards--animRaiseCard'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:P50_ID:''||a.id) card_link,',
'       a.customer_name card_title,',
'       case',
'         when logo_blob is null',
'         then ''<span class="no-image">''||apex_escape.html(a.customer_name)||''</span>''',
'         else ''<span class="customer-logo" style="background-image: url('''''' || apex_util.prepare_url(''f?p='' || :APP_ID',
'             || '':IMAGE::APPLICATION_PROCESS=GET_IMAGE:::GET_ID:'' || a.id) || '''''');" title="''',
'             ||apex_escape.html(a.customer_name)||''"></span>''',
'       end card_text,',
'       null card_subtext,',
'       null card_initials,',
'        a.id',
'from eba_cust_customers a,',
'    eba_cust_categories b,',
'    eba_cust_status c,',
'    eba_cust_geographies d,',
'    eba_cust_type e,',
'    eba_cust_use_case f',
'where a.category_id = b.id(+)',
'    and a.status_id = c.id(+)',
'    and a.geography_id = d.id(+)',
'    and a.type_id = e.id(+)',
'    and a.use_case_id = f.id(+)',
'    and (:P59_SEARCH is null or',
'            instr(upper(a.customer_name),upper(:P59_SEARCH)) > 0 or',
'                       instr(upper(a.summary),upper(:P59_SEARCH)) > 0 )',
'    and (NVL(:P59_GEO,0) = 0 or :P59_GEO = a.geography_id)',
'    and (NVL(:P59_COUNTRY,0) = 0 or :P59_COUNTRY = a.country_id)',
'    and (NVL(:P59_INDUSTRY,0) = 0 or  :P59_INDUSTRY = a.industry_id)',
'    and (NVL(:P59_CATEGORY,0) = 0 or :P59_CATEGORY = a.category_id)',
'    and (NVL(:P59_STATUS,0) = 0 or :P59_STATUS = a.status_id)',
'    and (NVL(:P59_TYPE,0) = 0 or :P59_TYPE = a.type_id)',
'    and (NVL(:P59_USE_CASE,0) = 0 or :P59_USE_CASE = a.use_case_id)',
'    and (:P59_MARQUEE_CUST is null or :P59_MARQUEE_CUST = a.marquee_customer_yn)',
'    and (:P59_IMP_PARTNER is null',
'        or exists ( select null',
'                    from eba_cust_cust_partner_ref rf',
'                    where rf.customer_id = a.id',
'                        and rf.partner_id = :P59_IMP_PARTNER ))',
'    and (:P59_COMPETITOR is null',
'        or exists ( select null',
'                    from eba_cust_cust_competitor_ref rf',
'                    where rf.customer_id = a.id',
'                        and rf.competitor_id = :P59_COMPETITOR ))',
'    and (:P59_REFERENCEABLE is null or :P59_REFERENCEABLE = a.referencable)',
'    and (:P59_SCP_CUST is null or :P59_SCP_CUST = a.strategic_customer_program_yn)',
'    and (',
'        exists (select 1 from eba_cust_customer_reftype_ref r',
'        where r.customer_id = a.id and',
'              instr('':''||:P59_REFERENCE_TYPES||'':'','':''||reference_type_id||'':'') > 0)',
'        or ',
'        :P59_REFERENCE_TYPES is null',
'        )',
'    and  NVL(:P59_DISPLAY_AS,''X'') = ''LOGOS''',
'    and (NVL(:P59_PRODUCT,0) = 0 or exists (select 1 from eba_cust_product_uses u where u.CUSTOMER_ID = a.id and u.PRODUCT_ID = :P59_PRODUCT))',
'order by',
'    case :P59_SORT',
'        when ''NAME'' then lower(a.customer_name)',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''UPDATED'' then localtimestamp - a.updated',
'        when ''OLDFIRST'' then a.created - localtimestamp',
'        when ''NEWFIRST'' then localtimestamp - a.created',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''NAME'' then localtimestamp - a.updated',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''UPDATED'' then lower(a.customer_name)',
'        when ''OLDFIRST'' then lower(a.customer_name)',
'        when ''NEWFIRST'' then lower(a.customer_name)',
'        else null',
'    end'))
,p_required_role=>wwv_flow_api.id(15990395708594320440)
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P59_SEARCH,P59_SORT,P59_GEO,P59_INDUSTRY,P59_CATEGORY,P59_STATUS,P59_MAX_ROWS,P59_REFERENCE_TYPES,P59_MARQUEE_CUST,P59_SCP_CUST,P59_TYPE,P59_USE_CASE,P59_LOGO_SIZE,P59_REFERENCEABLE,P59_IMP_PARTNER,P59_COMPETITOR,P59_DISPLAY_AS,P59_PRODUCT'
,p_query_row_template=>wwv_flow_api.id(15044987435702155232)
,p_query_num_rows=>5000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No customers found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15024099212311686545)
,p_query_column_id=>1
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15024099321052686546)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15024099416011686547)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15024099570729686548)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15024099625241686549)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15020443516253491138)
,p_query_column_id=>6
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14888299318040911999)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14888483880363016427)
,p_name=>'Customer Cards'
,p_region_name=>'cards_region'
,p_template=>wwv_flow_api.id(14882965472431818390)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--desc-2ln:u-colors:t-Cards--displayInitials:t-Cards--3cols:t-Cards--basic:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:P50_ID:''||a.id) card_link,',
'       a.customer_name card_title,',
'       NVL(substr(a.summary,1,255), DBMS_LOB.substr(a.customer_profile,255,1))      card_text,',
'       --nvl(c.status,''Unknown Status'')||'', ''||',
'       nvl((select INDUSTRY_NAME from EBA_CUST_INDUSTRIES i where i.id = a.INDUSTRY_ID),'''')||decode(geography_name,null,null,'', ''|| geography_name) card_subtext,',
'        upper(',
'          decode(instr(a.customer_name,'' ''),',
'                 0, ',
'                 substr(a.customer_name,1,2),',
'                 substr(a.customer_name,1,1)||substr(a.customer_name,instr(a.customer_name,'' '')+1,1)',
'           )) card_initials',
'from eba_cust_customers a,',
'    eba_cust_categories b,',
'    eba_cust_status c,',
'    eba_cust_geographies d,',
'    eba_cust_type e,',
'    eba_cust_use_case f',
'where a.category_id = b.id(+)',
'    and a.status_id = c.id(+)',
'    and a.geography_id = d.id(+)',
'    and a.type_id = e.id(+)',
'    and a.use_case_id = f.id(+)',
'    and (:P59_SEARCH is null or',
'            instr(upper(a.customer_name),upper(:P59_SEARCH)) > 0 or',
'                       instr(upper(a.summary),upper(:P59_SEARCH)) > 0 )',
'    and (NVL(:P59_GEO,0) = 0 or :P59_GEO = a.geography_id)',
'    and (NVL(:P59_COUNTRY,0) = 0 or :P59_COUNTRY = a.country_id)',
'    and (NVL(:P59_INDUSTRY,0) = 0 or  :P59_INDUSTRY = a.industry_id)',
'    and (NVL(:P59_CATEGORY,0) = 0 or :P59_CATEGORY = a.category_id)',
'    and (NVL(:P59_STATUS,0) = 0 or :P59_STATUS = a.status_id)',
'    and (NVL(:P59_TYPE,0) = 0 or :P59_TYPE = a.type_id)',
'    and (NVL(:P59_USE_CASE,0) = 0 or :P59_USE_CASE = a.use_case_id)',
'    and (:P59_MARQUEE_CUST is null or :P59_MARQUEE_CUST = a.marquee_customer_yn)',
'    and (:P59_IMP_PARTNER is null',
'        or exists ( select null',
'                    from eba_cust_cust_partner_ref rf',
'                    where rf.customer_id = a.id',
'                        and rf.partner_id = :P59_IMP_PARTNER ))',
'    and (:P59_COMPETITOR is null',
'        or exists ( select null',
'                    from eba_cust_cust_competitor_ref rf',
'                    where rf.customer_id = a.id',
'                        and rf.competitor_id = :P59_COMPETITOR ))',
'    and (:P59_REFERENCEABLE is null or :P59_REFERENCEABLE = a.referencable)',
'    and (:P59_SCP_CUST is null or :P59_SCP_CUST = a.strategic_customer_program_yn)',
'    and (',
'        exists (select 1 from eba_cust_customer_reftype_ref r',
'        where r.customer_id = a.id and',
'              instr('':''||:P59_REFERENCE_TYPES||'':'','':''||reference_type_id||'':'') > 0)',
'        or ',
'        :P59_REFERENCE_TYPES is null',
'        )',
'    and  NVL(:P59_DISPLAY_AS,''X'') = ''CARDS''',
'    and (NVL(:P59_PRODUCT,0) = 0 or exists (select 1 from eba_cust_product_uses u where u.CUSTOMER_ID = a.id and u.PRODUCT_ID = :P59_PRODUCT))',
'order by',
'    case :P59_SORT',
'        when ''NAME'' then lower(a.customer_name)',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''UPDATED'' then localtimestamp - a.updated',
'        when ''OLDFIRST'' then a.created - localtimestamp',
'        when ''NEWFIRST'' then localtimestamp - a.created',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''NAME'' then localtimestamp - a.updated',
'        else null',
'    end,',
'    case :P59_SORT',
'        when ''UPDATED'' then lower(a.customer_name)',
'        when ''OLDFIRST'' then lower(a.customer_name)',
'        when ''NEWFIRST'' then lower(a.customer_name)',
'        else null',
'    end'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P59_SEARCH,P59_SORT,P59_GEO,P59_INDUSTRY,P59_CATEGORY,P59_STATUS,P59_MAX_ROWS,P59_REFERENCE_TYPES,P59_MARQUEE_CUST,P59_SCP_CUST,P59_TYPE,P59_USE_CASE,P59_REFERENCEABLE,P59_IMP_PARTNER,P59_COMPETITOR,P59_DISPLAY_AS,P59_PRODUCT'
,p_query_row_template=>wwv_flow_api.id(15044987435702155232)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    --and (NVL(:P59_PRODUCT,0) = 0 or instr((select listagg(p.id,'','') within group (order by p.id) from eba_cust_products p, eba_cust_product_uses u where u.customer_id = a._id and u.product_id = p.id), :P59_PRODUCT) > 0)',
''))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16912605963015470359)
,p_query_column_id=>1
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>1
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16912606008691470360)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16912606185717470361)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16912606208601470362)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16912606303356470363)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14888499391898086417)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(14882979167825818413)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15777619837718006264)
,p_plug_name=>'Customers Report'
,p_region_name=>'report_region'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(14882978725053818410)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.row_key,',
'    a.id,',
'    a.parent_customer_id,',
'    a.customer_account_number,',
'    to_char(nvl(a.DISCOUNT_LEVEL,0),''999G999G999G999G999G999G990'') || ''%'' discount_level,',
'    ''$'' || to_char(nvl(a.TOTAL_CONTRACT_VALUE,0),''999G999G999G999G999G999G990'') total_contract_value,',
'    (select count(''x'') from eba_cust_activity_ref r where a.id = r.customer_id) activities,',
'    customer_name,',
'    a.STRATEGIC_CUSTOMER_PROGRAM_YN,',
'    (select country_name from eba_cust_countries c where id = a.country_id) as country,',
'    c.status,',
'    e.type,',
'    f.use_case,',
'    category,',
'    nvl(geography_name,''Not Defined'') geography_name,',
'    decode(referencable, null, ''No'', referencable) referencable,',
'    (select status from EBA_CUST_REF_PHASE p where p.id = a.reference_phase_id) ref_phase,',
'    a.REF_RECRUITMENT_OWNER,',
'    (select channel from EBA_CUST_SALES_CHANNEL sc where sc.id = a.SALES_CHANNEL_ID) sales_channel,',
'    number_of_users,',
'    decode(marquee_customer_yn, null, ''No'', ''N'', ''No'', ''Y'', ''Yes'') marquee_customer,',
'    decode(greatest(length(nvl(summary,'' '')),50),50,summary,substr(summary,1,50)||''...'') summary,',
'    web_site,',
'    (   select listagg(p.product_name, '', '') within group (order by p.product_name) product_uses',
'        from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p',
'        where c.id = u.customer_id',
'            and u.product_id = p.id',
'            and c.id = a.id',
'        group by c.customer_name',
'    ) product_uses,',
'    tags,',
'    nvl((select INDUSTRY_NAME from EBA_CUST_INDUSTRIES i where i.id = a.INDUSTRY_ID),''Not Defined'') industry,',
'    a.industry_id,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_01) customer_flex_01,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_02) customer_flex_02,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_03) customer_flex_03,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_04) customer_flex_04,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_05) customer_flex_05,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_06) customer_flex_06,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_07) customer_flex_07,',
'    eba_cust_flex_fw.fetch_v(''CUSTOMER_FLEX_01'',a.customer_flex_08) customer_flex_08,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N01'',a.customer_flex_n01) customer_flex_n01,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N02'',a.customer_flex_n02) customer_flex_n02,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N03'',a.customer_flex_n03) customer_flex_n03,',
'    eba_cust_flex_fw.fetch_n(''CUSTOMER_FLEX_N04'',a.customer_flex_n04) customer_flex_n04,',
'    a.customer_flex_d01,',
'    a.customer_flex_d02,',
'    a.customer_flex_d03,',
'    a.customer_flex_d04,',
'    a.customer_flex_clob,',
'    a.created,',
'    a.created_by,',
'    a.updated,',
'    a.updated_by,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) referencability',
'from eba_cust_customers a,',
'    eba_cust_categories b,',
'    eba_cust_status c,',
'    eba_cust_geographies d,',
'    eba_cust_type e,',
'    eba_cust_use_case f',
'where a.category_id = b.id(+)',
'    and a.status_id = c.id(+)',
'    and a.geography_id = d.id(+)',
'    and a.type_id = e.id(+)',
'    and a.use_case_id = f.id(+)',
'--',
'--    and (:P59_SEARCH is null or',
'--            instr(upper(a.customer_name),upper(:P59_SEARCH)) > 0 or',
'--                       instr(upper(a.summary),upper(:P59_SEARCH)) > 0 )',
'--    and (NVL(:P59_GEO,0) = 0 or :P59_GEO = a.geography_id)',
'--    and (NVL(:P59_COUNTRY,0) = 0 or :P59_COUNTRY = a.country_id)',
'--    and (NVL(:P59_INDUSTRY,0) = 0 or  :P59_INDUSTRY = a.industry_id)',
'--    and (NVL(:P59_CATEGORY,0) = 0 or :P59_CATEGORY = a.category_id)',
'--    and (NVL(:P59_STATUS,0) = 0 or :P59_STATUS = a.status_id)',
'--    and (NVL(:P59_TYPE,0) = 0 or :P59_TYPE = a.type_id)',
'--    and (NVL(:P59_USE_CASE,0) = 0 or :P59_USE_CASE = a.use_case_id)',
'--    and (:P59_MARQUEE_CUST is null or :P59_MARQUEE_CUST = a.marquee_customer_yn)',
'--    and (:P59_IMP_PARTNER is null',
'--        or exists ( select null',
'--                    from eba_cust_cust_partner_ref rf',
'--                    where rf.customer_id = a.id',
'--                        and rf.partner_id = :P59_IMP_PARTNER ))',
'--    and (:P59_COMPETITOR is null',
'--        or exists ( select null',
'--                    from eba_cust_cust_competitor_ref rf',
'--                    where rf.customer_id = a.id',
'--                        and rf.competitor_id = :P59_COMPETITOR ))',
'--    and (:P59_REFERENCEABLE is null or :P59_REFERENCEABLE = a.referencable)',
'--    and (:P59_SCP_CUST is null or :P59_SCP_CUST = a.strategic_customer_program_yn)',
'--    and (',
'--        exists (select 1 from eba_cust_customer_reftype_ref r',
'--        where r.customer_id = a.id and',
'--              instr('':''||:P59_REFERENCE_TYPES||'':'','':''||reference_type_id||'':'') > 0)',
'--        or ',
'--        :P59_REFERENCE_TYPES is null',
'--        )',
'    and NVL(:P59_DISPLAY_AS,''X'') = ''REPORT''',
'--    and (NVL(:P59_PRODUCT,0) = 0 or exists (select 1 from eba_cust_product_uses u where u.CUSTOMER_ID = a.id and u.PRODUCT_ID = :P59_PRODUCT))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_DISPLAY_AS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15777620076836006269)
,p_name=>'Customers'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>2328071018446133994
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777620201055006274)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Selected Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:P50_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#themes/theme_13/ed-item.gif" alt="Edit" />'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777627450202006286)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777628585119006290)
,p_db_column_name=>'REFERENCABLE'
,p_display_order=>3
,p_column_identifier=>'E'
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
 p_id=>wwv_flow_api.id(15777628968463006290)
,p_db_column_name=>'NUMBER_OF_USERS'
,p_display_order=>4
,p_column_identifier=>'F'
,p_column_label=>'# of Users'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>'return wwv_flow_utilities.is_build_option_enabled(''Number_of_users'');'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777629457189006291)
,p_db_column_name=>'SUMMARY'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Summary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777629853056006293)
,p_db_column_name=>'WEB_SITE'
,p_display_order=>6
,p_column_identifier=>'H'
,p_column_label=>'Web Site'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777630201104006293)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>13
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777630558958006293)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>15
,p_column_identifier=>'Q'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777628204254006288)
,p_db_column_name=>'CATEGORY'
,p_display_order=>16
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777627769993006286)
,p_db_column_name=>'STATUS'
,p_display_order=>17
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777631027893006294)
,p_db_column_name=>'TAGS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0'))
,p_rpt_show_filter_lov=>'C'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777631367082006296)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:P50_ID:#ID#'
,p_column_linktext=>'<span>#ROW_KEY#</span>'
,p_column_link_attr=>'class="t-Button t-Button--small t-Button--hot t-Button--simple t-Button--stretch"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777631844837006299)
,p_db_column_name=>'CREATED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777632210932006300)
,p_db_column_name=>'UPDATED'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777632597100006300)
,p_db_column_name=>'GEOGRAPHY_NAME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Geography'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>'wwv_flow_utilities.is_build_option_enabled(''Geography'')'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777632992865006302)
,p_db_column_name=>'PRODUCT_USES'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Products'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>'wwv_flow_utilities.is_build_option_enabled(''Products and Services'')'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777633373633006303)
,p_db_column_name=>'MARQUEE_CUSTOMER'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Marquee Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777633765876006305)
,p_db_column_name=>'INDUSTRY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Industry'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777634187523006305)
,p_db_column_name=>'INDUSTRY_ID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Selected Industry'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777620609824006277)
,p_db_column_name=>'CUSTOMER_FLEX_01'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'CUSTOMER_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777620986660006278)
,p_db_column_name=>'CUSTOMER_FLEX_02'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'CUSTOMER_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777621383414006278)
,p_db_column_name=>'CUSTOMER_FLEX_03'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'CUSTOMER_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777621764578006279)
,p_db_column_name=>'CUSTOMER_FLEX_04'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'CUSTOMER_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777622234480006280)
,p_db_column_name=>'CUSTOMER_FLEX_05'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'CUSTOMER_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777622621891006281)
,p_db_column_name=>'CUSTOMER_FLEX_06'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'CUSTOMER_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777623001962006282)
,p_db_column_name=>'CUSTOMER_FLEX_07'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'CUSTOMER_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777623383338006282)
,p_db_column_name=>'CUSTOMER_FLEX_08'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'CUSTOMER_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777623855297006283)
,p_db_column_name=>'CUSTOMER_FLEX_D01'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'CUSTOMER_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777624195536006283)
,p_db_column_name=>'CUSTOMER_FLEX_D02'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'CUSTOMER_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777624592577006284)
,p_db_column_name=>'CUSTOMER_FLEX_D03'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'CUSTOMER_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777624969387006284)
,p_db_column_name=>'CUSTOMER_FLEX_D04'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'CUSTOMER_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777625371497006284)
,p_db_column_name=>'CUSTOMER_FLEX_CLOB'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'CUSTOMER_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777625803578006285)
,p_db_column_name=>'CUSTOMER_FLEX_N01'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'CUSTOMER_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777626249408006285)
,p_db_column_name=>'CUSTOMER_FLEX_N02'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'CUSTOMER_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777626564951006286)
,p_db_column_name=>'CUSTOMER_FLEX_N03'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'CUSTOMER_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15777627032596006286)
,p_db_column_name=>'CUSTOMER_FLEX_N04'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'CUSTOMER_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_cust_flex_registry where flexible_table = ''EBA_CUST_CUSTOMERS'' and flexible_column = ''CUSTOMER_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15867937555010290996)
,p_db_column_name=>'REF_PHASE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Ref Phase'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15868267666983590155)
,p_db_column_name=>'SALES_CHANNEL'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Sales Channel'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15868269276939591679)
,p_db_column_name=>'REF_RECRUITMENT_OWNER'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Ref Recruitment Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15146564520879716954)
,p_db_column_name=>'REFERENCABILITY'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Referencability'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16955385655643760342)
,p_db_column_name=>'COUNTRY'
,p_display_order=>61
,p_column_identifier=>'AZ'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17025782316815371048)
,p_db_column_name=>'TYPE'
,p_display_order=>71
,p_column_identifier=>'BA'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17025782650279371051)
,p_db_column_name=>'USE_CASE'
,p_display_order=>81
,p_column_identifier=>'BB'
,p_column_label=>'Use Case'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17165438681248375141)
,p_db_column_name=>'STRATEGIC_CUSTOMER_PROGRAM_YN'
,p_display_order=>91
,p_column_identifier=>'BC'
,p_column_label=>'SCP Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17826171223649277706)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18484141854057328180)
,p_db_column_name=>'PARENT_CUSTOMER_ID'
,p_display_order=>101
,p_column_identifier=>'BD'
,p_column_label=>'Parent'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(16614663811922986365)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18484141957114328181)
,p_db_column_name=>'CUSTOMER_ACCOUNT_NUMBER'
,p_display_order=>111
,p_column_identifier=>'BE'
,p_column_label=>'Customer account number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1131109166274896511)
,p_db_column_name=>'DISCOUNT_LEVEL'
,p_display_order=>121
,p_column_identifier=>'BF'
,p_column_label=>'Discount Level'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1131109278420896512)
,p_db_column_name=>'TOTAL_CONTRACT_VALUE'
,p_display_order=>131
,p_column_identifier=>'BG'
,p_column_label=>'Total Contract Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1131109315329896513)
,p_db_column_name=>'ACTIVITIES'
,p_display_order=>141
,p_column_identifier=>'BH'
,p_column_label=>'Activities'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2070178122542510043)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'SORT_BY_UPD'
,p_report_seq=>10
,p_report_alias=>'20424235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_NAME:SUMMARY:REFERENCABLE:REFERENCABILITY:GEOGRAPHY_NAME:UPDATED::DISCOUNT_LEVEL:TOTAL_CONTRACT_VALUE:ACTIVITIES'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'CUSTOMER_NAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15777634622434006306)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'23280856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_NAME:SUMMARY:REFERENCABLE:REFERENCABILITY:GEOGRAPHY_NAME:UPDATED::DISCOUNT_LEVEL:TOTAL_CONTRACT_VALUE:ACTIVITIES'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15777635370392045811)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17959316704754412053)
,p_plug_name=>'More Filters'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20249861720040600551)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_icon_css_classes=>'app-customer-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882975473523818405)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'  begin',
'      t := EBA_CUST_FW.get_preference_value(''WELCOME_TEXT'');',
'  exception',
'      when others then ',
'      t := null;',
'  end;',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Track and Manage Customers</p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20249862084276600554)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(20249861720040600551)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>170
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20250586478569744254)
,p_name=>'Notifications'
,p_template=>wwv_flow_api.id(14882979167825818413)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    decode(lower(NOTIFICATION_TYPE),''yellow'',''warning'',''red'',''danger'',lower(NOTIFICATION_TYPE)) as ALERT_TYPE,',
'    NOTIFICATION_NAME as ALERT_TITLE,',
'    NOTIFICATION_DESCRIPTION as ALERT_DESC,',
'    '''' alert_action',
'  from EBA_CUST_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_CUST_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(14898736191599229490)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(20250586772725744259)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20250587116593744261)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20250587537261744262)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20250587900708744263)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20250588359552744263)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20250590181223745727)
,p_plug_name=>'ACL Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--warning:t-Alert--horizontal'
,p_plug_template=>wwv_flow_api.id(14882963742354818385)
,p_plug_display_sequence=>2
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_WARNING'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'eba_cust_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_attribute_01=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20250623618773960833)
,p_plug_name=>'Timezone'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="clear: both;"'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>180
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"TIMEZONE" ',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20250625194111962081)
,p_plug_name=>'Welcome to Customer Tracker'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info'
,p_component_template_options=>'#DEFAULT#:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_api.id(14882963742354818385)
,p_plug_display_sequence=>3
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(18003234121688109320)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14882992268104818439)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select 1 from eba_cust_customers'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14898076606512132500)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_button_name=>'RESET_REPORT'
,p_button_static_id=>'reset_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14882996442242818458)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15795717804008656931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20249861720040600551)
,p_button_name=>'ADD_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20250590452827745730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20250590181223745727)
,p_button_name=>'CONFIG_ACL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Configure ACL'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP,35::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17165438693134375142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15777619837718006264)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996168250818456)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1183275830717600503)
,p_branch_name=>'Go to Getting Started Page'
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>'eba_cust_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1121400619036278418)
,p_name=>'P59_DISPLAY_AS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20249862084276600554)
,p_item_default=>'CARDS'
,p_prompt=>'Display as'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'HOMEPAGE_DISPLAY_AS'
,p_lov=>'.'||wwv_flow_api.id(1173926844039813688)||'.'
,p_field_template=>wwv_flow_api.id(14882995897087818452)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12023349721071968686)
,p_name=>'P59_REFERENCE_TYPES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_prompt=>'Reference Types (any)'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'REFERENCE_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reference_type d, id r',
'from eba_cust_reference_types',
'where is_active = ''Y''',
'order by upper(reference_type)'))
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_css_classes=>'reference_types_checkbox'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Check all the boxes you would like to see.  If any customers have any of the reference types selected you will see the customer.'
,p_inline_help_text=>'<button class="t-Button t-Button--small" id="reference_check_box" type="button">Check All</button>'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888500757684097941)
,p_name=>'P59_GEO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_item_default=>'0'
,p_prompt=>'Geography'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GEOGRAPHY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GEOGRAPHY_NAME display_value, ID return_value ',
'from EBA_CUST_GEOGRAPHIES',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All - '
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888501975166103481)
,p_name=>'P59_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_prompt=>'Search'
,p_placeholder=>'Search Customers'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14882995897087818452)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888502657614108082)
,p_name=>'P59_INDUSTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_item_default=>'0'
,p_prompt=>'Industry'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P2_INDUSTRY_ID LOOKUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INDUSTRY_NAME display_value, ID return_value ',
'from EBA_CUST_INDUSTRIES',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All - '
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888503210315118267)
,p_name=>'P59_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_item_default=>'0'
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All - '
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888530925740175960)
,p_name=>'P59_MAX_ROWS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_item_default=>'20'
,p_prompt=>'Rows'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MAX ROWS'
,p_lov=>'.'||wwv_flow_api.id(14888543306127259928)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14888547556802360163)
,p_name=>'P59_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS '
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status d, id r',
'from   EBA_CUST_STATUS',
'where is_active = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(17163245089137738629)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15055761562347574459)
,p_name=>'P59_LOGO_SIZE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_item_default=>'S'
,p_prompt=>'Logo Sizes'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOGO SIZES'
,p_lov=>'.'||wwv_flow_api.id(15067864303915294808)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15055763871023574482)
,p_name=>'P59_MARQUEE_CUST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Marquee Customer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MARQUEE'
,p_lov=>'.'||wwv_flow_api.id(14782549628816231702)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15055763930408574483)
,p_name=>'P59_SCP_CUST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'SCP Customer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y_OR_N'
,p_lov=>'.'||wwv_flow_api.id(17826171223649277706)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(16912136794753326174)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16912608527513470385)
,p_name=>'P59_PRODUCT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_item_default=>'0'
,p_prompt=>'Product'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name as d,',
'       id as r',
'  from EBA_CUST_PRODUCTS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17025781659857371041)
,p_name=>'P59_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type d, id r',
'from   EBA_CUST_TYPE',
'where is_active = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17025782584126371050)
,p_name=>'P59_USE_CASE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Use Case'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USE_CASE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select use_case d, id r',
'from   EBA_CUST_USE_CASE',
'where is_active = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(17141443683121660407)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17025783469571371059)
,p_name=>'P59_REFERENCEABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_prompt=>'Publicly Referenceable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REFERENCABLE'
,p_lov=>'.'||wwv_flow_api.id(14782547412886227080)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17165441253443375167)
,p_name=>'P59_COUNTRY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRIES_P59'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name as d,',
'       id as r',
'  from EBA_CUST_COUNTRIES',
' where display_yn = ''Y''',
'   and (',
'           (nvl(:P59_GEO,0) = 0 and id is not null)',
'           or',
'           (nvl(:P59_GEO,0)  > 0 and region_id = :P59_GEO)',
'       )',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P59_GEO'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(16951501451837988268)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17772452604673748760)
,p_name=>'P59_IMP_PARTNER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Partner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_impl_partners',
'order by lower(name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17772453279036748766)
,p_name=>'P59_COMPETITOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17959316704754412053)
,p_prompt=>'Competitor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_competitors',
'order by lower(name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17772454220429748776)
,p_name=>'P59_SORT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14888499391898086417)
,p_prompt=>'Sort By'
,p_source=>'UPDATED'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Name;NAME,Last Updated;UPDATED,Oldest to Newest;OLDFIRST,Newest to Oldest;NEWFIRST'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14888541779992253447)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15701164049261781509)
,p_name=>'Perform Search on Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15701164156621781510)
,p_event_id=>wwv_flow_api.id(15701164049261781509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14888483880363016427)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15020444336158491146)
,p_event_id=>wwv_flow_api.id(15701164049261781509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14301592346564718086)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15701164177396781511)
,p_event_id=>wwv_flow_api.id(15701164049261781509)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15055760213392574446)
,p_name=>'Toggle Reference Type Checkboxes'
,p_event_sequence=>224
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reference_check_box'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).text() === "Check All"'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15055760328805574447)
,p_event_id=>wwv_flow_api.id(15055760213392574446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".reference_types_checkbox input[type=checkbox]").prop(''checked'',true);',
'$(this.triggeringElement).text(''Uncheck All'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15055760560012574449)
,p_event_id=>wwv_flow_api.id(15055760213392574446)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".reference_types_checkbox input[type=checkbox]").prop(''checked'',false);',
'$(this.triggeringElement).text(''Check All'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15055760951799574453)
,p_event_id=>wwv_flow_api.id(15055760213392574446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#CARDS, #LOGOS, #CUSTOMERS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15055761221503574456)
,p_event_id=>wwv_flow_api.id(15055760213392574446)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#CARDS, #LOGOS, #CUSTOMERS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15024099837553686551)
,p_name=>'Reset Search Filters'
,p_event_sequence=>234
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14898076606512132500)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15024099970894686552)
,p_event_id=>wwv_flow_api.id(15024099837553686551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_SEARCH,P59_GEO,P59_INDUSTRY,P59_CATEGORY,P59_STATUS,P59_MAX_ROWS,P59_REFERENCE_TYPES,P59_LOGO_SIZE,P59_PRODUCT,P59_MARQUEE_CUST,P59_SCP_CUST,P59_TYPE,P59_USE_CASE,P59_REFERENCEABLE,P59_COUNTRY,P59_IMP_PARTNER,P59_COMPETITOR'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15024100732126686560)
,p_name=>'Set Logo Sizes'
,p_event_sequence=>254
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_LOGO_SIZE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15024100802765686561)
,p_event_id=>wwv_flow_api.id(15024100732126686560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_LOGO_SIZE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var logo_cards$ = $("#logo_region_cards");',
'var logo_select_val = $v(''P59_LOGO_SIZE'');',
'',
'if (logo_select_val === ''S'') {',
'  logo_cards$.addClass("small-logos");',
'  logo_cards$.removeClass("medium-logos large-logos"); ',
'} else if (logo_select_val === ''M'') {',
'  logo_cards$.addClass("medium-logos");',
'  logo_cards$.removeClass("small-logos large-logos");',
'} else {',
'  logo_cards$.addClass("large-logos");',
'  logo_cards$.removeClass("small-logos medium-logos");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1121400792094278419)
,p_name=>'Set Logo Sizes on Region Refresh'
,p_event_sequence=>264
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14301592346564718086)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1121400801745278420)
,p_event_id=>wwv_flow_api.id(1121400792094278419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_LOGO_SIZE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var logo_cards$ = $("#logo_region_cards");',
'var logo_select_val = $v(''P59_LOGO_SIZE'');',
'',
'if (logo_select_val === ''S'') {',
'  logo_cards$.addClass("small-logos");',
'  logo_cards$.removeClass("medium-logos large-logos"); ',
'} else if (logo_select_val === ''M'') {',
'  logo_cards$.addClass("medium-logos");',
'  logo_cards$.removeClass("small-logos large-logos");',
'} else {',
'  logo_cards$.addClass("large-logos");',
'  logo_cards$.removeClass("small-logos medium-logos");',
'}'))
);
end;
/

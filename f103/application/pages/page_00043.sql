prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Product'
,p_page_mode=>'MODAL'
,p_step_title=>'Product'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190710091055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828326330644351023)
,p_plug_name=>'Product'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15721446895538694320)
,p_plug_name=>'Additional Attributes'
,p_parent_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14882976055929818407)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17828330725770351085)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965756371818392)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17828326850675351025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17828330725770351085)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17828326746055351025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17828330725770351085)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17828326646589351025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17828330725770351085)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17828326528654351025)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17828330725770351085)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877383018681010840)
,p_name=>'P43_PRODUCT_FLEX_N01'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Required Number'
,p_source=>'PRODUCT_FLEX_N01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_N01''',
''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Some help on a required number for products.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877383213505013295)
,p_name=>'P43_PRODUCT_FLEX_N02'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex N02'
,p_source=>'PRODUCT_FLEX_N02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_N02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877383409408015129)
,p_name=>'P43_PRODUCT_FLEX_N03'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex N03'
,p_source=>'PRODUCT_FLEX_N03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_N03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877383605526017006)
,p_name=>'P43_PRODUCT_FLEX_N04'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex N04'
,p_source=>'PRODUCT_FLEX_N04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_N04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877384220179025381)
,p_name=>'P43_PRODUCT_FLEX_D01'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex D01'
,p_source=>'PRODUCT_FLEX_D01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_D01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877384416512027022)
,p_name=>'P43_PRODUCT_FLEX_D02'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex D02'
,p_source=>'PRODUCT_FLEX_D02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_D02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877384612415028974)
,p_name=>'P43_PRODUCT_FLEX_D03'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex D03'
,p_source=>'PRODUCT_FLEX_D03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_D03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877384808317030830)
,p_name=>'P43_PRODUCT_FLEX_D04'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex D04'
,p_source=>'PRODUCT_FLEX_D04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_D04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877385804207047925)
,p_name=>'P43_PRODUCT_FLEX_CLOB'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex Clob'
,p_source=>'PRODUCT_FLEX_CLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_CLOB'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877386126408052843)
,p_name=>'P43_PRODUCT_FLEX_01'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 01'
,p_source=>'PRODUCT_FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877386322095054884)
,p_name=>'P43_PRODUCT_FLEX_02'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deliverable as a Cloud Service?'
,p_source=>'PRODUCT_FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose whether you think this product could be offered as a cloud-provided service.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877386518429056540)
,p_name=>'P43_PRODUCT_FLEX_03'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 03'
,p_source=>'PRODUCT_FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877386712390059345)
,p_name=>'P43_PRODUCT_FLEX_04'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 04'
,p_source=>'PRODUCT_FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877387328984066837)
,p_name=>'P43_PRODUCT_FLEX_05'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 05'
,p_source=>'PRODUCT_FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877387524455068997)
,p_name=>'P43_PRODUCT_FLEX_06'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 06'
,p_source=>'PRODUCT_FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877387719926071093)
,p_name=>'P43_PRODUCT_FLEX_07'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 07'
,p_source=>'PRODUCT_FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14877387913456074056)
,p_name=>'P43_PRODUCT_FLEX_08'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15721446895538694320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flex 08'
,p_source=>'PRODUCT_FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_flex_registry',
' where flexible_table = ''EBA_CUST_PRODUCTS''',
'   and active_yn = ''Y''',
'   and flexible_column = ''PRODUCT_FLEX_08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17772452296453748757)
,p_name=>'P43_PRODUCT_FAMILY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Family'
,p_source=>'PRODUCT_FAMILY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCT FAMILIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_product_families',
'order by lower(name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- No Product Family -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828327740825351034)
,p_name=>'P43_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828327931288351052)
,p_name=>'P43_PRODUCT_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_colspan=>10
,p_field_template=>wwv_flow_api.id(290501118550896410)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The product name'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828328145787351053)
,p_name=>'P43_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(290501484459896415)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Detailed description for this product'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828328337653351055)
,p_name=>'P43_IS_ACTIVE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Is Active'
,p_source=>'IS_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'IS ACTIVE'
,p_lov=>'.'||wwv_flow_api.id(14311790506442261339)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(290501484459896415)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'The current status of this product'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17832673521173553660)
,p_name=>'P43_TAGS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(17828326330644351023)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_cust_tags_type_sum',
' where content_type = ''PRODUCT''',
' order by 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>96
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(15044989333730155247)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'The list of tags for this product'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12023347618485968665)
,p_computation_sequence=>10
,p_computation_item=>'P43_IS_ACTIVE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'nvl(:P43_IS_ACTIVE,''N'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15086577417771476341)
,p_validation_name=>'P43_PRODUCT_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_products',
'where upper(product_name) = upper(:P43_PRODUCT_NAME)',
'    and (:P43_ID is null or id <> :P43_ID )'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'#LABEL# already exists.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(17828327931288351052)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(299089981135567632)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>20
,p_validation=>'not regexp_like( :P43_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(17832673521173553660)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(362125116682092502)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17828326850675351025)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(362125227755092503)
,p_event_id=>wwv_flow_api.id(362125116682092502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17828328535614351058)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CUST_PRODUCTS'
,p_attribute_02=>'EBA_CUST_PRODUCTS'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to load product data'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17828328744671351061)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CUST_PRODUCTS'
,p_attribute_02=>'EBA_CUST_PRODUCTS'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CUST_PRODUCTS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17828328942134351062)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(17828326746055351025)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(362125744941092508)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/

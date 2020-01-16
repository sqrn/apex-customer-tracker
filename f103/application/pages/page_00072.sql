prompt --application/pages/page_00072
begin
wwv_flow_api.create_page(
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Edit Static List Option'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Static List Option'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743893729038416653)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(14882962244344818383)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15699467515544778094)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190325140310'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14396248944091434386)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(14882965756371818392)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14396249519672434389)
,p_plug_name=>'Edit Static List Option'
,p_region_name=>'editListOption'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(14882985828492818426)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>500
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14396249070535434388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14396248944091434386)
,p_button_name=>'DELETE_LIST_OPTION'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE_LIST_OPTION'');'
,p_button_condition=>'P72_EDIT_OPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14396249305499434388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14396248944091434386)
,p_button_name=>'SAVE_LIST_OPTION'
,p_button_static_id=>'SLO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save List Option'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15721446224771694313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14396248944091434386)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15721446445984694315)
,p_branch_name=>'Close Modal Branch'
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396249662481434389)
,p_name=>'P72_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14396249519672434389)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396249896255434390)
,p_name=>'P72_EDIT_OPTION_ID'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(14396249519672434389)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396250149111434390)
,p_name=>'P72_EDIT_DISPLAY_SEQUENCE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(14396249519672434389)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Sequence'
,p_format_mask=>'9999999'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_sequence',
'from eba_cust_flex_static_lovs',
'where :P72_EDIT_OPTION_ID is not null',
'    and id = :P72_EDIT_OPTION_ID',
'union all',
'select nvl(max(fsl.display_sequence),0) + 10',
'from eba_cust_flex_static_lovs fsl,',
'    eba_cust_flex_registry fr',
'where fr.id = :P72_ID',
'    and :P72_EDIT_OPTION_ID is null',
'    and fsl.flex_table(+) = fr.flexible_table',
'    and fsl.flex_column(+) = fr.flexible_column;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_tag_attributes=>'style="width: 100px;"'
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396250293700434391)
,p_name=>'P72_EDIT_DISPLAY_VALUE'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(14396249519672434389)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Value'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value',
'from eba_cust_flex_static_lovs',
'where id = :P72_EDIT_OPTION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396250538118434391)
,p_name=>'P72_EDIT_RETURN_VALUE'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(14396249519672434389)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Return Value'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select return_value',
'from eba_cust_flex_static_lovs',
'where id = :P72_EDIT_OPTION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14882996102989818455)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14396250843533434392)
,p_validation_name=>'P72_EDIT_RETURN_VALUE Numeric'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_num number;',
'begin',
'    l_num := to_number( :P72_EDIT_RETURN_VALUE );',
'    return true;',
'exception',
'    when others then',
'        return false;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must be numeric for this flex field.'
,p_validation_condition=>':P72_FLEXIBLE_COLUMN like ''%FLEX_N%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(14396249305499434388)
,p_associated_item=>wwv_flow_api.id(14396250538118434391)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14396251546757434395)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Static List Option'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Delete the list option record',
'delete from eba_cust_flex_static_lovs',
'where id = :P72_EDIT_OPTION_ID;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14396249070535434388)
,p_process_when=>'P72_EDIT_OPTION_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Static list option deleted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14396251747591434395)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Static List Option'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Update the list option record',
'update eba_cust_flex_static_lovs',
'set display_sequence = :P72_EDIT_DISPLAY_SEQUENCE,',
'    display_value = :P72_EDIT_DISPLAY_VALUE,',
'    return_value = :P72_EDIT_RETURN_VALUE',
'where id = :P72_EDIT_OPTION_ID;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14396249305499434388)
,p_process_when=>':P72_EDIT_OPTION_ID is not null'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Static list option updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14396251146775434395)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Static List Option'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Insert the new list option record',
'insert into eba_cust_flex_static_lovs (',
'    flex_table,',
'    flex_column,',
'    display_sequence,',
'    display_value,',
'    return_value )',
'select flexible_table,',
'    flexible_column,',
'    :P72_EDIT_DISPLAY_SEQUENCE,',
'    :P72_EDIT_DISPLAY_VALUE,',
'    :P72_EDIT_RETURN_VALUE',
'from eba_cust_flex_registry',
'where id = :P72_ID;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14396249305499434388)
,p_process_when=>'P72_EDIT_OPTION_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Static list option created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14396250930581434392)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rebuild LOV Query'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt       number := 0;',
'    l_lov_query varchar2(32767);',
'begin',
'    -- Prepare the lov query from dual that will be used to generate the form element',
'    for c1 in ( select fsl.display_value, fsl.return_value',
'                from eba_cust_flex_registry fr,',
'                    eba_cust_flex_static_lovs fsl',
'                where fr.id = :P72_ID',
'                order by display_sequence ) loop',
'        if l_cnt = 0 then',
'            l_lov_query := ''select q''''['' || c1.display_value || '']'''' dv, q''''['' || c1.return_value || '']'''' rv from dual'';',
'        else',
'            l_lov_query := l_lov_query || chr(10) || ''union all'' || chr(10);',
'            l_lov_query := l_lov_query || ''select q''''['' || c1.display_value || '']'''' dv, q''''['' || c1.return_value || '']'''' rv from dual'';',
'        end if;',
'        l_cnt := l_cnt + 1;',
'    end loop;',
'',
'    -- Update the lov query column in the flex registry table',
'    update eba_cust_flex_registry',
'    set lov_sql_query = l_lov_query',
'    where id = :P72_ID;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15721446275026694314)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Cancel Modal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15721446224771694313)
);
end;
/

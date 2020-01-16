prompt --application/pages/page_00096
begin
wwv_flow_api.create_page(
 p_id=>96
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Customer Referenceability'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Referenceability'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14743894307005419781)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15990395708594320440)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190325162813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16851259203078498555)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965756371818392)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16885850518020400963)
,p_plug_name=>'Referenceability'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14882979167825818413)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16886114053252494987)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16851259203078498555)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16886110003981492316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16851259203078498555)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14882996971412818459)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P96_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16851259114358498554)
,p_name=>'P96_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16885850518020400963)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16885850852190400968)
,p_name=>'P96_REFERENCABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16885850518020400963)
,p_use_cache_before_default=>'NO'
,p_item_default=>'No'
,p_prompt=>'Publicly Referenceable'
,p_source=>'REFERENCABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REFERENCABLE'
,p_lov=>'.'||wwv_flow_api.id(14782547412886227080)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
,p_help_text=>'Would this customer give us a good reference?'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16885851768376400973)
,p_name=>'P96_REFERENCE_TYPES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16885850518020400963)
,p_prompt=>'Reference Types'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(rt.id,'':'') within group (order by rt.reference_type) types',
'from eba_cust_reference_types rt,',
'    eba_cust_customer_reftype_ref ref',
'where rt.id = ref.reference_type_id',
'    and ref.customer_id = :P96_ID'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'REFERENCE_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reference_type d, id r',
'from eba_cust_reference_types',
'where is_active = ''Y''',
'order by upper(reference_type)'))
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
,p_help_text=>'In what ways would this customer be willing to be a reference?'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16885852624649400975)
,p_name=>'P96_REFERENCE_PHASE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16885850518020400963)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reference Phase'
,p_source=>'REFERENCE_PHASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REFERENCE PHASE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status||'' - ''||description, id ',
'from EBA_CUST_REF_PHASE order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16885853028303400975)
,p_name=>'P96_REF_RECRUITMENT_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16885850518020400963)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recruitment Owner'
,p_source=>'REF_RECRUITMENT_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(14882996027614818454)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16851259351792498556)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16886114053252494987)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16851259420750498557)
,p_event_id=>wwv_flow_api.id(16851259351792498556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16885897457721408199)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CUST_CUSTOMERS'
,p_attribute_02=>'EBA_CUST_CUSTOMERS'
,p_attribute_03=>'P96_ID'
,p_attribute_04=>'ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16885982461514430471)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CUST_CUSTOMERS'
,p_attribute_02=>'EBA_CUST_CUSTOMERS'
,p_attribute_03=>'P96_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P96_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CUST_CUSTOMERS.'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_return_key_into_item1=>'P2_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16885997384421431786)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Reference Types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from eba_cust_customer_reftype_ref',
'    where customer_id = :P96_ID',
'        and '':''||:P96_REFERENCE_TYPES||'':'' not like ''%:''||reference_type_id||'':%'';',
'',
'    merge into eba_cust_customer_reftype_ref dest using (',
'        select :P96_ID customer_id, rt.id reference_type_id',
'        from eba_cust_reference_types rt',
'        where '':''||:P96_REFERENCE_TYPES||'':'' like ''%:''||rt.id||'':%''',
'    ) src',
'    on (dest.customer_id = src.customer_id and dest.reference_type_id = src.reference_type_id)',
'    when not matched then',
'        insert( customer_id, reference_type_id )',
'        values( src.customer_id, src.reference_type_id );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_security_scheme=>wwv_flow_api.id(15990395708594320440)
,p_required_patch=>wwv_flow_api.id(14312069034688329563)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16851259527183498558)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/

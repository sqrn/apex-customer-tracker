prompt --application/shared_components/data_loading/tables/eba_cust_contacts
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(15911466413271058693)
,p_name=>'contacts'
,p_owner=>'#OWNER#'
,p_table_name=>'EBA_CUST_CONTACTS'
,p_unique_column_1=>'CUSTOMER_ID'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'NAME'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_api.create_load_table_lookup(
 p_id=>wwv_flow_api.id(15911466723768058710)
,p_load_table_id=>wwv_flow_api.id(15911466413271058693)
,p_load_column_name=>'CONTACT_TYPE_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_CUST_CONTACT_TYPES'
,p_key_column=>'ID'
,p_display_column=>'CONTACT_TYPE'
,p_insert_new_value=>'N'
);
wwv_flow_api.create_load_table_lookup(
 p_id=>wwv_flow_api.id(15911466531157058708)
,p_load_table_id=>wwv_flow_api.id(15911466413271058693)
,p_load_column_name=>'CUSTOMER_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_CUST_CUSTOMERS'
,p_key_column=>'ID'
,p_display_column=>'CUSTOMER_NAME'
,p_insert_new_value=>'N'
);
end;
/

prompt --application/shared_components/user_interface/lovs/customers
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16614663811922986365)
,p_lov_name=>'CUSTOMERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name d, id r ',
'from EBA_CUST_CUSTOMERS',
'order by upper(customer_name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

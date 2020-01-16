prompt --application/shared_components/user_interface/lovs/products
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16954746760096404351)
,p_lov_name=>'PRODUCTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name as d,',
'       id as r',
'  from EBA_CUST_PRODUCTS',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/p50_product
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16619195006417268934)
,p_lov_name=>'P50_PRODUCT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name d, id r',
'from   eba_cust_products',
'where id not in (select product_id',
'from eba_cust_product_uses',
'where customer_id = :P50_ID)',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

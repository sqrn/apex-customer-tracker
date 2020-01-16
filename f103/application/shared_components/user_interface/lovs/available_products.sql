prompt --application/shared_components/user_interface/lovs/available_products
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16617739526780732771)
,p_lov_name=>'AVAILABLE_PRODUCTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name d, id r',
'from   eba_cust_products',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

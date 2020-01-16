prompt --application/shared_components/user_interface/lovs/product_families
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17786462002480156944)
,p_lov_name=>'PRODUCT FAMILIES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from eba_cust_product_families',
'order by lower(name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

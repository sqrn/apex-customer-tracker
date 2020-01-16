prompt --application/shared_components/user_interface/lovs/product_statuses
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14304919605733554080)
,p_lov_name=>'PRODUCT STATUSES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status as d,',
'       id as r',
'  from eba_cust_product_statuses',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/deployment/install/upgrade_industry_view
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14872071433878590381)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'industry view'
,p_sequence=>80
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view eba_cust_customers_v as',
'select ',
'   a.row_key, ',
'   a.id,',
'   customer_name,',
'   status,',
'   a.status_id,',
'   category,',
'   geography_name,',
'   referencable,',
'   number_of_users,',
'   summary,',
'   web_site,',
'   (select listagg(p.product_name, '', '') within group (order by p.product_name) product_uses',
'    from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p',
'    where c.id = u.customer_id',
'    and u.product_id = p.id',
'    and c.id = a.id',
'    group by c.customer_name',
'   ) product_uses,',
'   nvl((select industry_name from eba_cust_industries i where i.id = a.industry_id),''Not Defined'') industry,',
'   tags,',
'   customer_flex_n01,',
'   customer_flex_n02,',
'   customer_flex_n03,',
'   customer_flex_n04,',
'   customer_flex_d01,',
'   customer_flex_d02,',
'   customer_flex_d03,',
'   customer_flex_d04,',
'   customer_flex_01,',
'   customer_flex_02,',
'   customer_flex_03,',
'   customer_flex_04,',
'   customer_flex_05,',
'   customer_flex_06,',
'   customer_flex_07,',
'   customer_flex_08,',
'   customer_flex_clob,',
'   a.created,',
'   a.created_by,',
'   a.updated,',
'   a.updated_by',
'from   ',
'   eba_cust_customers a, ',
'   eba_cust_categories b, ',
'   eba_cust_status c, ',
'   eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+)',
';',
'',
''))
);
end;
/

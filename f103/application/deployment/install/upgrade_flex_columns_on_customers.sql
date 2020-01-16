prompt --application/deployment/install/upgrade_flex_columns_on_customers
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14878358311474529950)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Flex Columns on Customers'
,p_sequence=>150
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name like ''%CUSTOMER_FLEX%'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers',
'add (',
'    customer_flex_n01       number,',
'    customer_flex_n02       number,',
'    customer_flex_n03       number,',
'    customer_flex_n04       number,',
'    customer_flex_d01       timestamp with local time zone,',
'    customer_flex_d02       timestamp with local time zone,',
'    customer_flex_d03       timestamp with local time zone,',
'    customer_flex_d04       timestamp with local time zone,',
'    customer_flex_01        varchar2(4000),',
'    customer_flex_02        varchar2(4000),',
'    customer_flex_03        varchar2(4000),',
'    customer_flex_04        varchar2(4000),',
'    customer_flex_05        varchar2(4000),',
'    customer_flex_06        varchar2(4000),',
'    customer_flex_07        varchar2(4000),',
'    customer_flex_08        varchar2(4000),',
'    customer_flex_clob      clob',
');',
''))
);
end;
/

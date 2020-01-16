prompt --application/deployment/install/install_products
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684357116364877875)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'products'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_products (',
'    id                      number       not NULL,',
'    row_version_number      number,',
'    product_family_id       number,',
'    product_name            varchar2(255) not null,',
'    description             varchar2(4000) ,',
'    tags                    varchar2(4000),',
'    is_active               varchar2(1) default ''Y'',',
'    price_list_part_number  varchar2(255),',
'    --',
'    created               timestamp with local time zone not null,',
'    created_by            varchar2(255) not null,',
'    updated               timestamp with local time zone,',
'    updated_by            varchar2(255),',
'    --',
'    product_flex_n01      number,',
'    product_flex_n02      number,',
'    product_flex_n03      number,',
'    product_flex_n04      number,',
'    product_flex_d01      timestamp with local time zone,',
'    product_flex_d02      timestamp with local time zone,',
'    product_flex_d03      timestamp with local time zone,',
'    product_flex_d04      timestamp with local time zone,',
'    product_flex_01       varchar2(4000),',
'    product_flex_02       varchar2(4000),',
'    product_flex_03       varchar2(4000),',
'    product_flex_04       varchar2(4000),',
'    product_flex_05       varchar2(4000),',
'    product_flex_06       varchar2(4000),',
'    product_flex_07       varchar2(4000),',
'    product_flex_08       varchar2(4000),',
'    product_flex_clob     clob,',
'    --',
'    constraint eba_cust_products_pk primary key (id),',
'    constraint eba_cust_prod_fam_fk foreign key (product_family_id) references eba_cust_product_families(id) on delete cascade',
')',
'/',
'create unique index eba_cust_products_uk on eba_cust_products(product_name)',
'/',
'alter table eba_cust_products',
'    add constraint eba_cust_products_uk',
'       unique (product_name)',
'       using index eba_cust_products_uk',
'/'))
);
end;
/

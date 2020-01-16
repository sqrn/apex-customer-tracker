prompt --application/deployment/install/upgrade_product_families
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17779759665189882834)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Product Families'
,p_sequence=>100
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_PRODUCT_FAMILIES'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_product_families (',
'    id                  number       not null,',
'    row_version_number  number,',
'    name                varchar2(60) not null,',
'    description         varchar2(4000),',
'    --',
'    created             timestamp with local time zone not null,',
'    created_by          varchar2(255) not null,',
'    updated             timestamp with local time zone,',
'    updated_by          varchar2(255),',
'    --',
'    constraint eba_cust_prod_families_pk primary key (id)',
')',
'/',
'create unique index eba_cust_prod_families_uk on eba_cust_product_families(name)',
'/',
'',
'create or replace trigger biu_eba_cust_product_families',
'    before insert or update on eba_cust_product_families',
'    for each row',
'begin',
'    if inserting then',
'        if :new.id is null then',
'            :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'        end if;',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(v(''APP_USER''),user);',
'        :new.row_version_number := 1;',
'    else',
'        :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(v(''APP_USER''),user);',
'end biu_eba_cust_product_families;',
'/',
'alter trigger biu_eba_cust_product_families enable;',
'/',
'',
'alter table eba_cust_products',
'add (',
'    product_family_id number,',
'    constraint eba_cust_prod_fam_fk foreign key (product_family_id) references eba_cust_product_families(id) on delete cascade',
');',
'/'))
);
end;
/

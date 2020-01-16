prompt --application/deployment/install/install_product_statuses
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14304046425288309672)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'product statuses'
,p_sequence=>250
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_product_statuses (',
'    id            number         not NULL,',
'    status        varchar2(255),',
'    description   varchar2(512),',
'    is_current_yn varchar2(1),',
'    --',
'    created     timestamp with local time zone not null,',
'    created_by  varchar2(255) not null,',
'    updated     timestamp with local time zone,',
'    updated_by  varchar2(255)',
'   )',
'/',
'alter table eba_cust_product_statuses',
'   add constraint eba_cust_product_statuses_pk',
'       primary key (id)',
'/',
'',
''))
);
end;
/

prompt --application/deployment/install/install_flex_page_map_table_and_trigger
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14887938421113716468)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Flex Page Map Table and Trigger'
,p_sequence=>480
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_flex_page_map',
'(',
'    id                 number        primary key,',
'    flex_table         varchar2(128) not null,',
'    page_id            number        not null,',
'    region_static_id   varchar2(30)  not null,',
'    flex_column_prefix varchar2(30)  not null,',
'    region_type        varchar2(30)  not null,',
'    created_by         varchar2(255),',
'    created            timestamp with local time zone,',
'    updated_by         varchar2(255),',
'    updated            timestamp with local time zone',
');',
'',
'create or replace trigger eba_cust_flex_page_map_biu',
'    before insert or update on eba_cust_flex_page_map',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        :new.id := eba_cust.gen_id();',
'    end if;',
'    if inserting then',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.created := localtimestamp;',
'    end if;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.updated := localtimestamp;',
'end eba_cust_flex_page_map_biu;',
'/',
'show errors',
'',
'alter trigger eba_cust_flex_page_map_biu enable;',
''))
);
end;
/

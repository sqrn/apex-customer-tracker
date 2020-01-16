prompt --application/deployment/install/install_flex_static_lovs_table_and_trigger
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14887938633580720133)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Flex Static LOVs Table and Trigger'
,p_sequence=>490
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_flex_static_lovs (',
'    id                 number primary key,',
'    row_version_number integer,',
'    flex_table         varchar2(128)  not null,',
'    flex_column        varchar2(128)  not null,',
'    display_sequence   number,',
'    display_value      varchar2(255)  not null,',
'    return_value       varchar2(4000) not null,',
'    --',
'    created_by         varchar2(255),',
'    created            timestamp with local time zone,',
'    updated_by         varchar2(255),',
'    updated            timestamp with local time zone',
');',
'',
'create or replace trigger eba_cust_flex_static_lovs_biu',
'    before insert or update on eba_cust_flex_static_lovs',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        :new.id := eba_cust.gen_id();',
'    end if;',
'    if inserting then',
'        :new.row_version_number := 1;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.created := localtimestamp;',
'    end if;',
'    if updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.updated := localtimestamp;',
'end eba_cust_flex_static_lovs_biu;',
'/',
'show errors',
'',
'alter trigger eba_cust_flex_static_lovs_biu enable;'))
);
end;
/

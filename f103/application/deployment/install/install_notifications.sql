prompt --application/deployment/install/install_notifications
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16311808803485266140)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'notifications'
,p_sequence=>400
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_notifications (',
'    id                        number            not null',
'                                                constraint eba_cust_notif_pk',
'                                                primary key,',
'    row_version_number        number,',
'    notification_name         varchar2(255)     not null,',
'    notification_description  varchar2(4000)    null,',
'    --',
'    notification_type         varchar2(30)      not null',
'                                                constraint eba_cust_notif_tp_cc',
'                                                check (notification_type in (''RED'',''YELLOW'')),',
'    --',
'    display_sequence          number,',
'    display_from              timestamp with local time zone,',
'    display_until             timestamp with local time zone,',
'    --',
'    created_by                varchar2(255)       not null,',
'    created                   timestamp with local time zone,',
'    updated_by                varchar2(255)       not null,',
'    updated                   timestamp with local time zone);',
'',
'create unique index eba_cust_notif_uk on eba_cust_notifications (notification_name);',
'',
'create or replace trigger eba_cust_notif_biu',
'before insert or update on eba_cust_notifications',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'        into :new.id',
'        from dual;',
'    end if;',
'    if inserting then',
'        :new.created_by := nvl(v(''APP_USER''),USER);',
'        :new.created := localtimestamp;',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated := localtimestamp;',
'        :new.row_version_number := 1;',
'    end if;',
'    if updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated    := localtimestamp;',
'    end if;',
'    if :new.notification_type is null then',
'       :new.notification_type := ''MANUAL'';',
'    end if;',
'end;',
'/',
'show errors',
'',
'alter trigger eba_cust_notif_biu enable;',
'/',
''))
);
end;
/

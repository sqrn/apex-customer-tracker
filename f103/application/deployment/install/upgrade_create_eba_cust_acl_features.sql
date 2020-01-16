prompt --application/deployment/install/upgrade_create_eba_cust_acl_features
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(1384266636031620968)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'create eba_cust_acl_features'
,p_sequence=>540
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_ACL_FEATURES'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_acl_features (',
'    id                      number              not null',
'                                                constraint eba_cust_acl_features_pk',
'                                                primary key,',
'    authorization_name      varchar2(255)       not null,',
'    access_level_id         number              not null',
'                                                constraint eba_cust_acl_features_fk',
'                                                references eba_cust_access_levels,',
'    feature                 varchar2(255)       not null,',
'    row_version             number,',
'    created_by              varchar2(255)       not null,',
'    created                 timestamp with local time zone,',
'    updated_by              varchar2(255),',
'    updated                 timestamp with local time zone )',
'/',
'create unique index eba_cust_acl_features_uk on eba_cust_acl_features (authorization_name);',
'',
'create or replace trigger eba_cust_acl_features_biu',
'    before insert or update on eba_cust_acl_features',
'    for each row',
'begin',
'  -- Always store authorization_name as upper case',
'  :new.authorization_name := upper(:new.authorization_name);',
'',
'  if inserting then',
'    if :new.id is null then',
'      :new.id := eba_cust.gen_id();',
'    end if;',
'    :new.created_by         := nvl(v(''APP_USER''), USER);',
'    :new.created            := localtimestamp;',
'    :new.row_version        := 1;',
'  elsif updating then',
'    :new.row_version        := nvl(:old.row_version,1) + 1;                                ',
'  end if;',
'  :new.updated_by         := nvl(v(''APP_USER''), USER);',
'  :new.updated            := localtimestamp;',
'end;',
'/',
'show errors',
'',
''))
);
end;
/

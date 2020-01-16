prompt --application/deployment/install/install_preferences
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16684356108960866244)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'preferences'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_preferences (',
'    id                      number              not null',
'                                                constraint eba_cust_preferences_pk',
'                                                primary key,',
'    preference_name         varchar2(255)       not null',
'                                                constraint eba_cust_prefs_prefname_ck',
'                                                check (upper(preference_name)=preference_name),',
'    preference_value        varchar2(255),',
'    created_by              varchar2(255)       not null,',
'    created_on              timestamp with local time zone,',
'    updated_by              varchar2(255),',
'    updated_on              timestamp with local time zone )',
'/',
'create unique index eba_cust_preferences_uk on eba_cust_preferences (preference_name)',
'/',
'',
'',
''))
);
end;
/

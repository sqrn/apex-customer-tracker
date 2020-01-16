prompt --application/deployment/install/upgrade_username_format_preference
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14839080522353739147)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Username Format Preference'
,p_sequence=>50
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_cust_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'exception when others then null;',
'end;',
'/',
''))
);
end;
/

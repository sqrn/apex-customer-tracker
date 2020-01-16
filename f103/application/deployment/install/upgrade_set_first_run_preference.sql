prompt --application/deployment/install/upgrade_set_first_run_preference
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(1187727815116701063)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Set First Run Preference'
,p_sequence=>530
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_preferences',
' where preference_name = ''FIRST_RUN'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_fw.set_preference_value( p_preference_name => ''FIRST_RUN'', p_preference_value => ''NO'' );',
'end;'))
);
end;
/

prompt --application/deployment/install/install_set_first_run_preference
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(1187727642225698360)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Set First Run Preference'
,p_sequence=>620
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_fw.set_preference_value( p_preference_name => ''FIRST_RUN'', p_preference_value => ''YES'' );',
'end;'))
);
end;
/

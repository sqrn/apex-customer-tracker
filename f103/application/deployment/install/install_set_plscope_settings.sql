prompt --application/deployment/install/install_set_plscope_settings
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16788143502896684116)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Set plscope_settings'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/

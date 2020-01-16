prompt --application/deployment/install/install_reset_flex_registry
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15017403502661852539)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Reset Flex Registry'
,p_sequence=>560
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- Make sure we''re starting with a clean slate.',
'    eba_cust_flex_fw.reset_flex_registry();',
'end;',
''))
);
end;
/

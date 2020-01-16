prompt --application/deployment/install/upgrade_populate_page_map_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14881081613912463526)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Populate Page Map Table'
,p_sequence=>200
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_flex_fw.populate_page_map_table( );',
'end;',
'/',
'show errors'))
);
end;
/

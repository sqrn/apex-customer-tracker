prompt --application/deployment/install/install_populate_flex_page_map
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14884941719055817002)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Populate Flex Page Map'
,p_sequence=>530
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_flex_fw.populate_page_map_table();',
'end;',
''))
);
end;
/

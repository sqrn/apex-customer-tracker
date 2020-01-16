prompt --application/deployment/install/install_create_sequence
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(17818435840345924698)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'create sequence'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence eba_cust_seq;'
);
end;
/

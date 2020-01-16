prompt --application/deployment/install/install_eba_cust_email_package_spec
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18758865171021507178)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'eba_cust_email package spec'
,p_sequence=>600
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_cust_email as',
'',
'    procedure send_feedback_email',
'    (',
'        p_app_id        in number,',
'        p_page_id       in number,',
'        p_submitter     in varchar2,',
'        p_feedback_type in varchar2,',
'        p_feedback      in varchar2',
'    );',
'',
'end eba_cust_email;',
'/',
'show errors'))
);
end;
/

prompt --application/deployment/install/install_eba_cust_flex_fw_package_header
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14887809224005651087)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'eba_cust_flex_fw package header'
,p_sequence=>500
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_cust_flex_fw as',
'    procedure flex_report_update (',
'        p_flex_table_name      in     varchar2,',
'        p_irr_region_static_id in     varchar2,',
'        p_flex_column_prefix   in     varchar2,',
'        p_app_id               in     number,',
'        p_page_id              in     number,',
'        p_region_type          in     varchar2',
'    );',
'',
'    function validate_lov_query ( p_query in varchar2,',
'        p_display_column out varchar2,',
'        p_return_column out varchar2,',
'        p_error out varchar2',
'    ) return boolean;',
'',
'    procedure populate_page_map_table;',
'',
'    procedure reset_flex_registry;',
'',
'    function fetch_v( p_column in varchar2,',
'                      p_input in varchar2 ) return varchar2;',
'',
'    function fetch_n( p_column in varchar2,',
'                      p_input in number ) return varchar2;',
'',
'end eba_cust_flex_fw;',
'/',
'show errors'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(15109397661228858944)
,p_script_id=>wwv_flow_api.id(14887809224005651087)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_CUST_FLEX_FW'
,p_last_updated_on=>to_date('20141219062059','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062059','YYYYMMDDHH24MISS')
);
end;
/

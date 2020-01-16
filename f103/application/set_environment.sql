prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>1600396410064625
,p_default_application_id=>103
,p_default_id_offset=>25243826314048557
,p_default_owner=>'SKORAM'
);
end;
/
 
prompt APPLICATION 103 - Customer Tracker
--
-- Application Export:
--   Application:     103
--   Name:            Customer Tracker
--   Date and Time:   10:06 Czwartek Styczeń 16, 2020
--   Exported By:     SKORAM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                    141
--       Items:                  532
--       Computations:            31
--       Validations:             50
--       Processes:              233
--       Regions:                432
--       Buttons:                353
--       Dynamic Actions:        188
--     Shared Components:
--       Logic:
--         Items:                 29
--         Processes:              4
--         Computations:          10
--         Build Options:         23
--         Data Loading:           2
--       Navigation:
--         Lists:                 23
--         Breadcrumbs:            2
--           Entries:            123
--         NavBar Entries:         1
--       Security:
--         Authentication:         1
--         Authorization:          6
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                  66
--         Shortcuts:              2
--         Plug-ins:              12
--       Globalization:
--         Messages:              53
--       Reports:
--         Layouts:                1
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:        126
--   Version:         19.2.0.00.18
--   Instance ID:     300168763109765
--


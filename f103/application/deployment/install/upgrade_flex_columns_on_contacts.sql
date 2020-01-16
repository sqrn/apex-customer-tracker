prompt --application/deployment/install/upgrade_flex_columns_on_contacts
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14879454320373312201)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Flex Columns on Contacts'
,p_sequence=>160
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CONTACTS''',
'    and column_name like ''%CONTACT_FLEX%'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_contacts',
'add (',
'    contact_flex_n01        number,',
'    contact_flex_n02        number,',
'    contact_flex_n03        number,',
'    contact_flex_n04        number,',
'    contact_flex_d01        timestamp with local time zone,',
'    contact_flex_d02        timestamp with local time zone,',
'    contact_flex_d03        timestamp with local time zone,',
'    contact_flex_d04        timestamp with local time zone,',
'    contact_flex_01         varchar2(4000),',
'    contact_flex_02         varchar2(4000),',
'    contact_flex_03         varchar2(4000),',
'    contact_flex_04         varchar2(4000),',
'    contact_flex_05         varchar2(4000),',
'    contact_flex_06         varchar2(4000),',
'    contact_flex_07         varchar2(4000),',
'    contact_flex_08         varchar2(4000),',
'    contact_flex_clob       clob',
');',
''))
);
end;
/

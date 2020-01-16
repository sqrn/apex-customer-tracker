prompt --application/deployment/install/upgrade_allow_null_preference_values
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(20250539864853920926)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Allow NULL Preference Values'
,p_sequence=>40
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_PREFERENCES''',
'    and column_name = ''PREFERENCE_VALUE''',
'    and nullable = ''N'''))
,p_script_clob=>'alter table eba_cust_preferences modify (preference_value null);'
);
end;
/

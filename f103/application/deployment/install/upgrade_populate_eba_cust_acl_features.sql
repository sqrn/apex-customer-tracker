prompt --application/deployment/install/upgrade_populate_eba_cust_acl_features
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(1384311716060711419)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'populate eba_cust_acl_features'
,p_sequence=>560
,p_script_type=>'UPGRADE'
,p_condition_type=>'FUNCTION_BODY'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt    pls_integer;',
'    l_retval boolean := true;',
'begin',
'    select count(*)',
'      into l_cnt',
'      from eba_cust_acl_features',
'     where authorization_name in (''EDIT_COMPETITORS'', ''VIEW_COMPETITORS'');',
'',
'    if l_cnt > 0 then',
'        l_retval := false;',
'    end if;',
'',
'    return l_retval;',
'end;'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''EDIT_COMPETITORS'',''Specify what access level is required to maintain competitors.'',2);',
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''VIEW_COMPETITORS'',''Specify what level can view competiors, and add them to customers.'',2);',
'commit;',
''))
);
end;
/

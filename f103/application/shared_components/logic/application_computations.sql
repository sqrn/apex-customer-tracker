prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(14761050109337866592)
,p_computation_sequence=>10
,p_computation_item=>'APPLICATION_TITLE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_app_name varchar2(255);',
'begin',
'    select nvl(preference_value,:APP_NAME)',
'      into l_app_name',
'      from eba_cust_preferences',
'     where preference_name = ''APPLICATION_TITLE'';',
'    return l_app_name;',
'exception',
'    when others then',
'        return :APP_NAME;',
'end;'))
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17025758268345410149)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER_TYPE_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CUSTOMER_TYPE_HELP'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17150404773856893860)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER_USE_CASE_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CONTACT_USE_CASE_HELP'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17856645772541430269)
,p_computation_sequence=>10
,p_computation_item=>'CREATE_MSG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CREATE'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17858771467349492790)
,p_computation_sequence=>10
,p_computation_item=>'UNLINK_CONFIRM_MSG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''UNLINK_CONFIRMATION'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17859505068326296767)
,p_computation_sequence=>10
,p_computation_item=>'ACTIVE_MSG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''ACTIVE'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17859505777676299424)
,p_computation_sequence=>10
,p_computation_item=>'INACTIVE_MSG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''INACTIVE'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17859529464797466005)
,p_computation_sequence=>10
,p_computation_item=>'CATEGORY_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CATEGORY_HELP'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17859530180035470401)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER_STATUS_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CUSTOMER_STATUS_HELP'');'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17859530585576471994)
,p_computation_sequence=>10
,p_computation_item=>'CONTACT_TYPES_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CONTACT_TYPES_HELP'');'
);
end;
/

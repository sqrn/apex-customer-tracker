prompt --application/shared_components/security/authorizations/edit_competitors
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(1384226501860271167)
,p_name=>'Edit Competitors'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_cust.get_feature_level(:APP_USER, ''EDIT_COMPETITORS'');'
,p_error_message=>'Insufficient privileges, user is not allowed to edit competitors.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/

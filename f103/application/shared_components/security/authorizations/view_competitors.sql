prompt --application/shared_components/security/authorizations/view_competitors
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(1384263960656570275)
,p_name=>'View Competitors'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_cust.get_feature_level(:APP_USER, ''VIEW_COMPETITORS'');'
,p_error_message=>'Insufficient privileges, user is not allowed to view competitors.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/

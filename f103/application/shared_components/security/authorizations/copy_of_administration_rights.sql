prompt --application/shared_components/security/authorizations/copy_of_administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(1371498276745520125)
,p_name=>'Copy of ADMINISTRATION RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_cust.get_authorization_level(:APP_USER) = 3;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/

prompt --application/shared_components/logic/application_processes/timezone
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(16635118830304310603)
,p_process_sequence=>3
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'timezone'
,p_process_sql_clob=>'eba_cust_tz_init;'
,p_process_error_message=>'Unable to set time zone.'
);
end;
/

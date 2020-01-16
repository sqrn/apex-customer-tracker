prompt --application/shared_components/logic/application_processes/set_globals
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(14883356554021283271)
,p_process_sequence=>4
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CUSTOMERS from eba_cust_customers;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :PRODUCTS from eba_cust_products;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CONTACTS from eba_cust_contacts;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :ACTIVITIES from eba_cust_activities;'))
);
end;
/

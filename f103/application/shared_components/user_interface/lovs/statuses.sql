prompt --application/shared_components/user_interface/lovs/statuses
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17824055305528778846)
,p_lov_name=>'STATUSES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status d, id r',
'from   EBA_CUST_STATUS',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

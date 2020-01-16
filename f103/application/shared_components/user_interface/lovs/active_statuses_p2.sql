prompt --application/shared_components/user_interface/lovs/active_statuses_p2
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17851726635379115188)
,p_lov_name=>'ACTIVE_STATUSES_P2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status d, id r',
'from   EBA_CUST_STATUS',
'where is_active = ''Y''',
'   or id = :P2_STATUS_ID',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

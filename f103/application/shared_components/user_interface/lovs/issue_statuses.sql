prompt --application/shared_components/user_interface/lovs/issue_statuses
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2590184404287729933)
,p_lov_name=>'ISSUE STATUSES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_cust_issue_statuses',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/reference_phase
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15867933817865280960)
,p_lov_name=>'REFERENCE PHASE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status||'' - ''||description, id ',
'from EBA_CUST_REF_PHASE order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

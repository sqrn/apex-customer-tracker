prompt --application/shared_components/user_interface/lovs/feedback_statuses
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18755446997767700747)
,p_lov_name=>'FEEDBACK STATUSES'
,p_lov_query=>'.'||wwv_flow_api.id(18755446997767700747)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18755447313260700754)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IN_PROGRESS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18755447716605700757)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'NO_ACTION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18755448147340700757)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18755448576998700758)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Resolved'
,p_lov_return_value=>'RESOLVED'
);
end;
/

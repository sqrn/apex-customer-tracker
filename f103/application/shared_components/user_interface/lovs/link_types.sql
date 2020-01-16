prompt --application/shared_components/user_interface/lovs/link_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17852687893311362193)
,p_lov_name=>'LINK_TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(17852687893311362193)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17852688774743362206)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Excel Worksheet'
,p_lov_return_value=>'EXL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17852688573310362206)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'HTML Page'
,p_lov_return_value=>'HTM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17852688383359362206)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PDF Document'
,p_lov_return_value=>'PDF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17852688990015362206)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Text Document'
,p_lov_return_value=>'TXT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17852688181680362206)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Word Document'
,p_lov_return_value=>'DOC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17821534354762897140)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTH'
);
end;
/

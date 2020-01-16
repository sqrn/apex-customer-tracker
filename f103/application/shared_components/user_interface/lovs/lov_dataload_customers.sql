prompt --application/shared_components/user_interface/lovs/lov_dataload_customers
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15823400800872062464)
,p_lov_name=>'LOV_DATALOAD_CUSTOMERS'
,p_lov_query=>'.'||wwv_flow_api.id(15823400800872062464)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823412949435062479)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unique ID'
,p_lov_return_value=>'ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823409712903062477)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Customer Name'
,p_lov_return_value=>'CUSTOMER_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823416503820062483)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Status'
,p_lov_return_value=>'STATUS_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823401670862062471)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Category'
,p_lov_return_value=>'CATEGORY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823412479501062478)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Geography'
,p_lov_return_value=>'GEOGRAPHY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823413325581062479)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Industry'
,p_lov_return_value=>'INDUSTRY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823417755992062484)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Tags'
,p_lov_return_value=>'TAGS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823414938018062481)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Referenceable Y/N'
,p_lov_return_value=>'REFERENCABLE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823414072427062481)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Marque Customer Y/N'
,p_lov_return_value=>'MARQUEE_CUSTOMER_YN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823414481612062481)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'Number of Users'
,p_lov_return_value=>'NUMBER_OF_USERS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823417322419062484)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'Summary'
,p_lov_return_value=>'SUMMARY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823416956849062483)
,p_lov_disp_sequence=>200
,p_lov_disp_value=>'Stock Symbol'
,p_lov_return_value=>'STOCK_SYMBOL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823411732825062478)
,p_lov_disp_sequence=>210
,p_lov_disp_value=>'DUNS #'
,p_lov_return_value=>'DUNS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823416149604062483)
,p_lov_disp_sequence=>220
,p_lov_disp_value=>'SIC'
,p_lov_return_value=>'SIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823419312071062485)
,p_lov_disp_sequence=>230
,p_lov_disp_value=>'Web Site'
,p_lov_return_value=>'WEB_SITE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823413703500062481)
,p_lov_disp_sequence=>240
,p_lov_disp_value=>'LinkedIn'
,p_lov_return_value=>'LINKEDIN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823410941345062477)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Customer Profile'
,p_lov_return_value=>'CUSTOMER_PROFILE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823412095019062478)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Facebook'
,p_lov_return_value=>'FACEBOOK'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823418109537062484)
,p_lov_disp_sequence=>260
,p_lov_disp_value=>'Twitter'
,p_lov_return_value=>'TWITTER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823402918968062471)
,p_lov_disp_sequence=>310
,p_lov_disp_value=>'Flex Text 01'
,p_lov_return_value=>'CUSTOMER_FLEX_01'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823403342605062471)
,p_lov_disp_sequence=>320
,p_lov_disp_value=>'Flex Text 02'
,p_lov_return_value=>'CUSTOMER_FLEX_02'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823403709781062471)
,p_lov_disp_sequence=>330
,p_lov_disp_value=>'Flex Text 03'
,p_lov_return_value=>'CUSTOMER_FLEX_03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823404095276062471)
,p_lov_disp_sequence=>340
,p_lov_disp_value=>'Flex Text 04'
,p_lov_return_value=>'CUSTOMER_FLEX_04'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823404528843062473)
,p_lov_disp_sequence=>350
,p_lov_disp_value=>'Flex Text 05'
,p_lov_return_value=>'CUSTOMER_FLEX_05'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823404943917062474)
,p_lov_disp_sequence=>360
,p_lov_disp_value=>'Flex Text 06'
,p_lov_return_value=>'CUSTOMER_FLEX_06'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823405289645062474)
,p_lov_disp_sequence=>370
,p_lov_disp_value=>'Flex Text 07'
,p_lov_return_value=>'CUSTOMER_FLEX_07'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823405716225062474)
,p_lov_disp_sequence=>380
,p_lov_disp_value=>'Flex Text 08'
,p_lov_return_value=>'CUSTOMER_FLEX_08'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823406064258062474)
,p_lov_disp_sequence=>399
,p_lov_disp_value=>'Flex CLOB'
,p_lov_return_value=>'CUSTOMER_FLEX_CLOB'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823408132532062476)
,p_lov_disp_sequence=>410
,p_lov_disp_value=>'Flex Number 01'
,p_lov_return_value=>'CUSTOMER_FLEX_N01'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823408516893062476)
,p_lov_disp_sequence=>420
,p_lov_disp_value=>'Flex Number 02'
,p_lov_return_value=>'CUSTOMER_FLEX_N02'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823408879553062476)
,p_lov_disp_sequence=>430
,p_lov_disp_value=>'Flex Number 03'
,p_lov_return_value=>'CUSTOMER_FLEX_N03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823409315337062477)
,p_lov_disp_sequence=>440
,p_lov_disp_value=>'Flex Number 04'
,p_lov_return_value=>'CUSTOMER_FLEX_N04'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823406499733062475)
,p_lov_disp_sequence=>510
,p_lov_disp_value=>'Flex Date 01'
,p_lov_return_value=>'CUSTOMER_FLEX_D01'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823406939408062475)
,p_lov_disp_sequence=>520
,p_lov_disp_value=>'Flex Date 02'
,p_lov_return_value=>'CUSTOMER_FLEX_D02'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823407261935062475)
,p_lov_disp_sequence=>530
,p_lov_disp_value=>'Flex Date 03'
,p_lov_return_value=>'CUSTOMER_FLEX_D03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15823407684080062476)
,p_lov_disp_sequence=>540
,p_lov_disp_value=>'Flex Date 04'
,p_lov_return_value=>'CUSTOMER_FLEX_D04'
);
end;
/

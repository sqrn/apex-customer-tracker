prompt --application/shared_components/navigation/breadcrumbs/breadcrumb1
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(17821792873173006496)
,p_name=>'Breadcrumb1'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15852830709816233585)
,p_parent_id=>wwv_flow_api.id(15714073707005489784)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17822002767464042678)
,p_parent_id=>wwv_flow_api.id(17822027476655158889)
,p_short_name=>'Customer Details'
,p_link=>'f?p=&APP_ID.:2:&SESSION.:HOME_CUSTOMER_DETAILS:&DEBUG.:RP,7::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17822027476655158889)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/

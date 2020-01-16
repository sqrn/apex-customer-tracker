prompt --application/pages/page_00046
begin
wwv_flow_api.create_page(
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Application Activity'
,p_step_title=>'Application Activity'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743894202850418508)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15990395708594320440)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct number of users and number of page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch be'
||'tween the calendar view to the list view by clicking the <strong>list</strong> button.'
,p_last_upd_yyyymmddhh24miss=>'20190322141740'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14989999515378221148)
,p_plug_name=>'Application Activity'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882965472431818390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(distinct_users) ||'' Users / ''||',
'       trim(to_char(page_events,''999G999G999G990'')) ||'' Views''  Page_Events,',
'       log_day the_day',
'  from apex_workspace_log_archive',
' where application_id = :app_id',
' union all',
'select to_char(count( distinct USERID) ) ||'' Users / ''||',
'       trim(to_char(count(*),''999G999G999G990'')) ||'' Views''  Page_Events,',
'       trunc(time_stamp) the_day',
'  from apex_activity_log l',
' where flow_id = :app_id ',
'   and userid is not null ',
'   and time_stamp > trunc(sysdate)',
' group by trunc(time_stamp)',
''))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'PAGE_EVENTS'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14990001528949221166)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14882981701312818415)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17863858070717352974)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14882997201411818460)
);
end;
/

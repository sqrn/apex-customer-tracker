prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(14567760419240676869)
,p_name=>'Image Download'
,p_alias=>'IMAGE'
,p_step_title=>'Image Download'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14743894307005419781)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'This page is only used as a placeholder for calling the get image URL on demand process.'
,p_last_upd_yyyymmddhh24miss=>'20190918111405'
);
end;
/

prompt --application/shared_components/user_interface/lovs/contacts
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16613830624202345687)
,p_lov_name=>'CONTACTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r',
'from   eba_cust_contacts',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

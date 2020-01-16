prompt --application/shared_components/user_interface/lovs/flex_field_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14876988307446919254)
,p_lov_name=>'FLEX_FIELD_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Date Picker'' dv, ''DATE'' rv',
'from dual',
'where -- Only date columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_D'') > 0',
'union all',
'select ''Large Text Input Field (Text Area)'' dv, ''TEXTAREA'' rv',
'from dual',
'where -- CLOB and varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_CLOB'') > 0',
'    or instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0',
'union all',
'select ''Number Field'' dv, ''NUMBER'' rv',
'from dual',
'where -- Only number columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_N'') > 0',
'union all',
'select ''Select List'' dv, ''SELECT_LIST'' rv',
'from dual',
'where -- Only number and varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0',
'    or instr(:P81_FLEX_COLUMN,''FLEX_N'') > 0',
'union all',
'select ''Text Field'' dv, ''TEXT'' rv',
'from dual',
'where -- Only varchar2 columns',
'    instr(:P81_FLEX_COLUMN,''FLEX_0'') > 0'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/

prompt --application/shared_components/user_interface/lovs/flex_condition_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14906119708958848770)
,p_lov_name=>'FLEX_CONDITION_TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(14906119708958848770)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906120028824848772)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Exists (SQL query returns at least one row)'
,p_lov_return_value=>'EXISTS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906120331718848774)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NOT Exists (SQL query returns no rows)'
,p_lov_return_value=>'NOT_EXISTS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906120610168848774)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SQL Expression'
,p_lov_return_value=>'SQL_EXPRESSION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906120927291848774)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'PL/SQL Expression'
,p_lov_return_value=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906121211728848774)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'PL/SQL Function Body Returning a Boolean'
,p_lov_return_value=>'FUNCTION_BODY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906121507692848774)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is Numeric'
,p_lov_return_value=>'ITEM_IS_NUMERIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906121813842848775)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is Not Numeric'
,p_lov_return_value=>'ITEM_IS_NOT_NUMERIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906122131882848775)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Value of Item / Column in Expression 1 = Expression 2'
,p_lov_return_value=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906122432857848775)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Value of Item / Column in Expression 1 != Expression 2'
,p_lov_return_value=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906122729196848775)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is NULL'
,p_lov_return_value=>'ITEM_IS_NULL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906123014641848775)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is NOT NULL'
,p_lov_return_value=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906123326878848775)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Value of Item / Column in Expression 1 = Zero'
,p_lov_return_value=>'ITEM_IS_ZERO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906123608680848776)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Value of Item / Column in Expression 1 != Zero'
,p_lov_return_value=>'ITEM_IS_NOT_ZERO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906123917720848776)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is Contained within Colon Delimited List in Expression 2'
,p_lov_return_value=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14906124208252848776)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Value of Item / Column in Expression 1 Is NOT Contained within Colon Delimited List in Expression 2'
,p_lov_return_value=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14920475721268299879)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Never'
,p_lov_return_value=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14920476033584299883)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'Always'
,p_lov_return_value=>'ALWAYS'
);
end;
/

prompt --application/deployment/install/install_click_counting_table
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14957258528385248013)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'Click Counting Table'
,p_sequence=>540
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_clicks (    ',
'    id                number primary key,',
'    cust_id           number,',
'    app_username      varchar2(255),',
'    view_timestamp    timestamp(6) with local time zone,',
'    app_session       varchar2(255)',
');',
'/',
'',
'',
'create index eba_cust_clicks_idx1 on eba_cust_clicks (cust_id);',
'create index eba_cust_clicks_idx2 on eba_cust_clicks (view_timestamp);',
'',
'create or replace trigger eba_cust_clicks_biu',
'    before insert on eba_cust_clicks',
'    for each row',
'begin',
'     if :new.id is null then',
'         :new.id := eba_cust_seq.nextval;',
'     end if;',
'     :new.view_timestamp := localtimestamp;',
'     :new.app_username := nvl(v(''APP_USER''),user);',
'     :new.app_session := v(''APP_SESSION'');',
'end;',
'/',
'',
'alter trigger eba_cust_clicks_biu enable;',
''))
);
end;
/

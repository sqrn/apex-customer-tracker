prompt --application/deployment/install/install_eba_cust_sales_channel
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(15921316744137804641)
,p_install_id=>wwv_flow_api.id(17817343456864234187)
,p_name=>'eba_cust_sales_channel'
,p_sequence=>200
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_sales_channel (',
'   id                      number       not null,',
'   channel                 varchar2(60) not null,',
'   description             varchar2(4000),',
'   --',
'   created               timestamp with local time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with local time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_sales_channel add ',
'constraint eba_cust_sales_channel_pk primary key (id)',
'/',
'',
'create unique index eba_cust_sales_channel_uk on eba_cust_sales_channel(channel)',
'/',
'',
'alter table eba_cust_sales_channel',
'   add constraint eba_cust_sales_channel_uk',
'       unique (channel)',
'       using index eba_cust_sales_channel_uk',
'/',
'',
'',
'create or replace trigger biu_eba_cust_sales_channel',
'   before insert or update on eba_cust_sales_channel',
'   for each row',
'begin',
'   if inserting then',
'      if :NEW.ID is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'      end if;',
'      :NEW.CREATED := localtimestamp;',
'      :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'   end if;',
'   :NEW.UPDATED := localtimestamp;',
'   :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'end;',
'/',
'show errors',
'',
'insert into eba_cust_sales_channel (id, channel) values (1, ''Direct'');',
'insert into eba_cust_sales_channel (id, channel) values (2, ''Field'');',
'insert into eba_cust_sales_channel (id, channel) values (3, ''Store'');',
'insert into eba_cust_sales_channel (id, channel) values (4, ''Partner'');',
'commit;'))
);
end;
/

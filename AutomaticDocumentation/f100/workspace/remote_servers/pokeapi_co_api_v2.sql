prompt --workspace/remote_servers/pokeapi_co_api_v2
begin
--   Manifest
--     REMOTE SERVER: pokeapi-co-api-v2
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(8606477968981951)
,p_name=>'pokeapi-co-api-v2'
,p_static_id=>'pokeapi_co_api_v2'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('pokeapi_co_api_v2'),'https://pokeapi.co/api/v2/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('pokeapi_co_api_v2'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('pokeapi_co_api_v2'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('pokeapi_co_api_v2'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('pokeapi_co_api_v2'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('pokeapi_co_api_v2'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('pokeapi_co_api_v2'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('pokeapi_co_api_v2'),'')
);
wwv_flow_imp.component_end;
end;
/

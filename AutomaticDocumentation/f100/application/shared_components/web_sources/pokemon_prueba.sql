prompt --application/shared_components/web_sources/pokemon_prueba
begin
--   Manifest
--     WEB SOURCE: POKEMON-PRUEBA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(8607498316981974)
,p_name=>'POKEMON-PRUEBA'
,p_static_id=>'pokemon_prueba'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(8606662866981957)
,p_remote_server_id=>wwv_flow_imp.id(8606477968981951)
,p_url_path_prefix=>'/pokemon/'
,p_openapi_url=>'https://pokeapi.co/api/v2/pokemon/'
,p_version_scn=>42119451942653
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(8607640176981992)
,p_web_src_module_id=>wwv_flow_imp.id(8607498316981974)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/

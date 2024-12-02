prompt --application/shared_components/data_profiles/pokemon_prueba
begin
--   Manifest
--     DATA PROFILE: POKEMON-PRUEBA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(8606662866981957)
,p_name=>'POKEMON-PRUEBA'
,p_format=>'JSON'
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(8606862545981969)
,p_data_profile_id=>wwv_flow_imp.id(8606662866981957)
,p_name=>'URL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(8607178062981971)
,p_data_profile_id=>wwv_flow_imp.id(8606662866981957)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp.component_end;
end;
/

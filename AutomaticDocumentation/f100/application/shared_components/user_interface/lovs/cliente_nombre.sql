prompt --application/shared_components/user_interface/lovs/cliente_nombre
begin
--   Manifest
--     CLIENTE.NOMBRE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9464293242837021)
,p_lov_name=>'CLIENTE.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CLIENTE'
,p_return_column_name=>'DNI'
,p_display_column_name=>'DNI'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DNI'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42157017422133
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9470265989848219)
,p_query_column_name=>'DNI'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9470635094848220)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9471014535848220)
,p_query_column_name=>'APELLIDO1'
,p_heading=>'Apellido1'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9471487460848220)
,p_query_column_name=>'APELLIDO2'
,p_heading=>'Apellido2'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Seleccionar Direccion'
,p_alias=>'SELECCIONAR-DIRECCION'
,p_page_mode=>'MODAL'
,p_step_title=>'Seleccionar Direccion'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8028963222968147)
,p_plug_name=>unistr('DIRECCI\00D3N')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(7721242398807307)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'INFO_CLIENTE'
,p_query_where=>'DNI = :P4_DNI'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ID:&ID.',
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&CALLE. &PORTAL., &PLANTA.º&PUERTA. - &CODIGO_POSTAL. &CIUDAD. (&PROVINCIA.)')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8222492026545705)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8222515338545706)
,p_event_id=>wwv_flow_imp.id(8222492026545705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_DNI'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>unistr('Emisi\00F3n de P\00F3liza')
,p_alias=>unistr('EMISI\00D3N-DE-P\00D3LIZA')
,p_step_title=>unistr('Emisi\00F3n de P\00F3liza')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26613611527650753)
,p_name=>'Coberturas'
,p_template=>wwv_flow_imp.id(7721242398807307)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'APEX_ITEM.RADIOGROUP(1, db."COD.CUENTA", NULL, NULL, '': '', '''') "Select",',
'    CASE',
'        WHEN dbms_lob.getlength(db.nombre) > 0 THEN db."COD.CUENTA"',
'        ELSE NULL',
'    END AS leader_code,',
'',
'db.domicilio,',
'db.banco,',
'db."D.C",',
'db."COD.CUENTA",',
'db.sucursal,',
'db.nombre,',
'db.apellido1,',
'db.apellido2',
'',
'from DATOS_BANCARIOS db'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7748050129807281)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9408176441376306)
,p_query_column_id=>1
,p_column_alias=>'Select'
,p_column_display_sequence=>1
,p_column_heading=>'Select'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9408551205376306)
,p_query_column_id=>2
,p_column_alias=>'LEADER_CODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221049374806621)
,p_query_column_id=>3
,p_column_alias=>'DOMICILIO'
,p_column_display_sequence=>13
,p_column_heading=>'Domicilio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221193402806622)
,p_query_column_id=>4
,p_column_alias=>'BANCO'
,p_column_display_sequence=>23
,p_column_heading=>'Banco'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221532050806626)
,p_query_column_id=>5
,p_column_alias=>'D.C'
,p_column_display_sequence=>43
,p_column_heading=>'D.C'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221660166806627)
,p_query_column_id=>6
,p_column_alias=>'COD.CUENTA'
,p_column_display_sequence=>53
,p_column_heading=>'Cod. Cuenta'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221220454806623)
,p_query_column_id=>7
,p_column_alias=>'SUCURSAL'
,p_column_display_sequence=>33
,p_column_heading=>'Sucursal'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9408994842376306)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>63
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221313741806624)
,p_query_column_id=>9
,p_column_alias=>'APELLIDO1'
,p_column_display_sequence=>73
,p_column_heading=>'Apellido 1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9221453626806625)
,p_query_column_id=>10
,p_column_alias=>'APELLIDO2'
,p_column_display_sequence=>83
,p_column_heading=>'Apellido 2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9405904388376292)
,p_button_sequence=>200
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Cancel'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9405556615376289)
,p_button_sequence=>210
,p_button_name=>'CONTINUAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continuar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9221728719806628)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26613611527650753)
,p_button_name=>'Crear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>unistr('Nueva Domiciliaci\00F3n')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9423070261376343)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9222073038806631)
,p_name=>'P11_PLAZO'
,p_item_sequence=>130
,p_prompt=>'Forma de Pago'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ANUAL;12,SEMESTRAL;6,TRIMESTRAL;3,MENSUAL;1'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9222115329806632)
,p_name=>'P11_RECIBO1'
,p_item_sequence=>140
,p_prompt=>'1er. Recibo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9222215106806633)
,p_name=>'P11_RECIBO2'
,p_item_sequence=>150
,p_prompt=>'Sgte. Recibo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9222328838806634)
,p_name=>'P11_PAGAR'
,p_item_sequence=>190
,p_prompt=>'Total a Pagar'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9523116519642601)
,p_name=>'P11_RADIOBUTTON'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18242118389685464)
,p_name=>'P11_TOMADOR'
,p_item_sequence=>90
,p_prompt=>'Nombre Tomador'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18242182718685465)
,p_name=>'P11_PRIMA_ANUAL'
,p_item_sequence=>160
,p_prompt=>'Prima Anual'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18242311994685466)
,p_name=>'P11_EXTORNO_APLICADO'
,p_item_sequence=>170
,p_prompt=>'Extorno Aplicado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18242431616685467)
,p_name=>'P11_FRACCIONAMIENTO'
,p_item_sequence=>180
,p_prompt=>'Recargo por fraccionamiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18629587539182939)
,p_name=>'P11_FECHA'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'VIGENCIA&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&emsp;&nbsp;AL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18629734546182940)
,p_name=>'P11_FECHA_V'
,p_item_sequence=>80
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26642735167762894)
,p_name=>'P11_NOMBRE'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9418319244376339)
,p_name=>'Cambio Mod'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9220758167806618)
,p_event_id=>wwv_flow_imp.id(9418319244376339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE',
'FROM MODALIDAD',
'WHERE :P10_MODALIDAD = CODIGO;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9220810628806619)
,p_name=>'Cambio Tomador'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9220903459806620)
,p_event_id=>wwv_flow_imp.id(9220810628806619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_TOMADOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE || '' '' || APELLIDO1 || '' '' || APELLIDO2',
'FROM CLIENTE',
'WHERE :P4_DNI = DNI;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9222451213806635)
,p_name=>'Cambio Total a Pagar'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9222527953806636)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_PRIMA_ANUAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P10_PF AS PF FROM DUAL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9222823257806639)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_EXTORNO_APLICADO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0,00'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9222994092806640)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_FRACCIONAMIENTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0,00'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9223443974806645)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_PAGAR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_PF * :P6_DURACION',
'FROM DUAL'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9223567462806646)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_RECIBO1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P10_PF * :P11_PLAZO / 12',
'FROM DUAL;'))
,p_attribute_07=>'P11_PLAZO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9223800130806649)
,p_event_id=>wwv_flow_imp.id(9222451213806635)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_RECIBO2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'CASE',
'    WHEN :P6_DURACION > 1 OR :P11_PLAZO < 12 THEN :P11_RECIBO1',
'    ELSE ''0.00''',
'END AS RECIBO2',
'FROM DUAL;'))
,p_attribute_07=>'P11_PLAZO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9420126917376341)
,p_name=>'Cambio Tabla'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9420665729376341)
,p_event_id=>wwv_flow_imp.id(9420126917376341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_CHECKBOX'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Inicializamos una variable para almacenar el nombre seleccionado',
'    var nombreSeleccionado = ''''; ',
unistr('    // Selecciona el primer radio button de la tabla (ajusta el selector seg\00FAn sea necesario)'),
'    $("input[name=''f01'']").first().prop("checked", true);',
'',
'    var nombreFila = $("input[name=''f01'']").first().closest("tr").find("td:nth-child(6)").text();',
'',
'    $s("P11_RADIOBUTTON", nombreFila);',
'    // Event listener para cuando se seleccione un radio button',
'    $("input[name=''f01'']").change(function() {',
'        // Obtenemos el texto de la columna deseada en la fila seleccionada',
unistr('        var nombreFila = $(this).closest("tr").find("td:nth-child(6)").text(); // Ajusta el \00EDndice si la columna cambia'),
'',
unistr('        // Mostramos el nombre seleccionado en la consola (opcional, para depuraci\00F3n)'),
'        console.log("Nombre fila seleccionada: ", nombreFila);',
'',
'        // Actualizamos la variable con el nombre seleccionado',
'        nombreSeleccionado = nombreFila;',
unistr('        // Enviamos el valor del nombre seleccionado al elemento de p\00E1gina P11_RADIOBUTTON'),
'        $s("P11_RADIOBUTTON", nombreSeleccionado);',
'        ',
'        ',
'    });',
'    ',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9412888534376334)
,p_name=>'Poner Fecha'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9413339730376336)
,p_event_id=>wwv_flow_imp.id(9412888534376334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_FECHA,P11_FECHA_V'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P6_DIA, ',
'TO_CHAR(ADD_MONTHS(SYSDATE, cast(:P6_DURACION AS INTEGER) * 12), ''DD-MM-YYYY'') ',
'FROM DUAL'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9223686257806647)
,p_name=>'Cambio Plazo'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_PLAZO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9223760180806648)
,p_event_id=>wwv_flow_imp.id(9223686257806647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_RECIBO1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROUND(:P10_PF * :P11_PLAZO / 12, 2)',
'FROM DUAL;'))
,p_attribute_07=>'P11_PLAZO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9223942913806650)
,p_event_id=>wwv_flow_imp.id(9223686257806647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_RECIBO2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'CASE',
'    WHEN :P6_DURACION > 1 OR :P11_PLAZO < 12 THEN :P11_RECIBO1',
'    ELSE ''0.00''',
'END AS RECIBO2',
'FROM DUAL;'))
,p_attribute_07=>'P11_PLAZO,P11_RECIBO1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9523992767642609)
,p_name=>'Crear Poliza'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9405556615376289)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9524010022642610)
,p_event_id=>wwv_flow_imp.id(9523992767642609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9524156927642611)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('INSERT INTO POLIZA (DNI, BANCO, DIRECCI\00D3N, PRODUCTO, MODALIDAD, AGENTE, INICIO, FIN, TOTAL)'),
'',
'--VALUES (1, :P4_DNI, TO_NUMBER(:P11_RADIOBUTTON), TO_NUMBER(:P6_ID), TO_NUMBER(:P6_CODIGO_1), TO_NUMBER(:P6_CODIGO_2), TO_NUMBER(:P6_CODIGO), TO_CHAR(:P6_DIA, ''MM-DD-YYYY''), TO_CHAR(:P6_DIA_V, ''MM-DD-YYYY''), CAST(:P11_PAGAR AS Float)); -- Usar valor'
||unistr('es de los elementos de p\00E1gina'),
'VALUES (:P4_DNI, TO_NUMBER(:P11_RADIOBUTTON), TO_NUMBER(:P6_ID), TO_NUMBER(:P6_CODIGO_1), TO_NUMBER(:P6_CODIGO_2), TO_NUMBER(:P6_CODIGO), TO_DATE(:P6_DIA, ''DD/MM/YYYY''), TO_DATE(:P6_DIA_V2, ''DD/MM/YYYY''), :P10_PF * :P6_DURACION);DBMS_OUTPUT.PUT_LINE('
||':P6_DIA);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9524156927642611
);
wwv_flow_imp.component_end;
end;
/

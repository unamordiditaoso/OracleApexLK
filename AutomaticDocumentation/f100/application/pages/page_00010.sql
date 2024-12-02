prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Calculo de primas'
,p_alias=>'CALCULO-DE-PRIMAS'
,p_step_title=>'Calculo de primas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17208399189274490)
,p_name=>'Coberturas'
,p_template=>wwv_flow_imp.id(7721242398807307)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'APEX_ITEM.CHECKBOX(1, g.ID) "Select",',
'CASE',
'    WHEN dbms_lob.getlength(g.nombre) > 0 THEN g.ID',
'        ELSE NULL',
'END AS leader_code,',
'g.nombre,',
'CASE',
'    WHEN g.id = mg.id_garantia AND :P9_MODALIDAD = mg.id_modalidad THEN ''INCLUIDO''',
'        ELSE ''''',
'END as "Tipo Cobertura",',
'',
'CASE',
'    WHEN g.id = mg.id_garantia AND :P9_MODALIDAD = mg.id_modalidad THEN 0',
'        ELSE NULL',
'END as "Capital",',
'',
'CASE',
'    WHEN m.codigo = mg.id_modalidad AND :P9_MODALIDAD = mg.id_modalidad THEN Round(m.prima / 60, 2)',
'        ELSE NULL',
'END as "Prima Neta",',
''''' as "Observaciones"',
'',
'from GARANTIA g ',
'LEFT JOIN MODALIDAD_GARANTIA mg',
'    ON g.id = mg.id_garantia',
'LEFT JOIN MODALIDAD m',
'    ON m.codigo = mg.id_modalidad'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_MODALIDAD'
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
 p_id=>wwv_flow_imp.id(8867533205643513)
,p_query_column_id=>1
,p_column_alias=>'Select'
,p_column_display_sequence=>1
,p_column_heading=>'Select'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>5
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8867970750643513)
,p_query_column_id=>2
,p_column_alias=>'LEADER_CODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8868386524643514)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8829638497309107)
,p_query_column_id=>4
,p_column_alias=>'Tipo Cobertura'
,p_column_display_sequence=>8
,p_column_heading=>'Tipo Cobertura'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8831795355309128)
,p_query_column_id=>5
,p_column_alias=>'Capital'
,p_column_display_sequence=>23
,p_column_heading=>'Capital'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8829742680309108)
,p_query_column_id=>6
,p_column_alias=>'Prima Neta'
,p_column_display_sequence=>43
,p_column_heading=>'Prima Neta'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8829832624309109)
,p_query_column_id=>7
,p_column_alias=>'Observaciones'
,p_column_display_sequence=>53
,p_column_heading=>'Observaciones'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8866830174643512)
,p_button_sequence=>160
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Cancel'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8866434156643512)
,p_button_sequence=>170
,p_button_name=>'CONTINUAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continuar'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8874953846643522)
,p_branch_name=>'Go To Page 6'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8832638904309137)
,p_name=>'P10_PRIMA_NETA'
,p_item_sequence=>80
,p_prompt=>'Prima Neta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8832703233309138)
,p_name=>'P10_IMPORTE_CONSORCIO'
,p_item_sequence=>90
,p_prompt=>'Importe Consorcio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8832832509309139)
,p_name=>'P10_IMPORTE_IMPUESTOS'
,p_item_sequence=>100
,p_prompt=>'Importe Impuestos'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8832952131309140)
,p_name=>'P10_PRIMA_FINAL'
,p_item_sequence=>110
,p_prompt=>'Prima Final'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9219822402806609)
,p_name=>'OPCIONES'
,p_item_sequence=>130
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9220108053806612)
,p_name=>'P10_FECHA'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'VIGENCIA&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9220255060806613)
,p_name=>'P10_FECHA_V'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9220390636806614)
,p_name=>'P10_DURACION'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9222713916806638)
,p_name=>'P10_PF'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17163627974537345)
,p_name=>'P10_MODALIDAD'
,p_item_sequence=>30
,p_prompt=>'Modalidad'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CODIGO as d, CODIGO as r',
' FROM MODALIDAD'))
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17164312688537352)
,p_name=>'P10_CHECKBOX'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17233255682386567)
,p_name=>'P10_NOMBRE'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9219627410806607)
,p_name=>'Cambio Mod'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8872105277643520)
,p_event_id=>wwv_flow_imp.id(9219627410806607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_MODALIDAD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P9_MODALIDAD FROM DUAL;'
,p_attribute_07=>'P10_FECHA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8871660033643519)
,p_name=>'Cambio Tabla'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8942087814331455)
,p_event_id=>wwv_flow_imp.id(8871660033643519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    var nombresSeleccionados = [];',
'    ',
'    // Obtiene el valor de P10_CHECKBOX (cadena)',
'    const p10CheckboxValue = $v("P10_CHECKBOX");',
'',
'    // Itera por cada fila de la tabla',
'    $("table tr").each(function() {',
'        // Obtiene el texto de la segunda celda en esta fila',
'        const cellText = $(this).find("td:nth-child(2)").text();',
'        // Obtiene el texto de la tercera celda en esta fila',
'        const cellText2 = $(this).find("td:nth-child(3)").text();',
'        ',
'        ',
'',
'        // Verifica si el valor de P10_CHECKBOX contiene el texto de la celda',
'        if (cellText2 == "INCLUIDO") {',
'            // Marca el checkbox en esta fila',
'            nombresSeleccionados.push(cellText);',
'            $(this).find(''input[name="f01"]'').prop(''checked'', true);',
'        }',
'    });',
'    var nombresConcatenados = nombresSeleccionados.join(";");',
'',
'    $s("P10_CHECKBOX", nombresConcatenados);',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8941542633331455)
,p_event_id=>wwv_flow_imp.id(8871660033643519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Inicializamos una variable para almacenar los nombres',
unistr('    var nombresSeleccionados = []; // Aqu\00ED se almacenar\00E1n los nombres de las filas seleccionadas'),
'',
'    // Concatenamos todos los nombres seleccionados en una sola cadena',
'    var nombresConcatenados = nombresSeleccionados.join(";");',
'',
'    // Event listener para cuando se haga clic en un checkbox',
'    $("input[name=''f01'']").click(function() {',
'        // Limpiamos la lista de nombres seleccionados cada vez que se actualiza',
'        nombresSeleccionados = [];',
'        ',
'        // Iteramos sobre todos los checkboxes seleccionados',
'        $("input[name=''f01'']:checked").each(function() {',
unistr('            // Obtenemos el nombre de la fila seleccionada, puedes ajustar esto seg\00FAn tu estructura'),
unistr('            var nombreFila = $(this).closest("tr").find("td:nth-child(2)").text();  // Asumimos que el nombre est\00E1 en una columna con clase .nombre'),
'            console.log("Nombre fila: ", nombreFila);',
'            // Agregamos el nombre a la lista de nombres seleccionados',
'            nombresSeleccionados.push(nombreFila);',
'        });',
'        ',
'        // Concatenamos todos los nombres seleccionados en una sola cadena',
'        var nombresConcatenados = nombresSeleccionados.join(";");',
'        ',
'        $s("P10_CHECKBOX", nombresConcatenados);',
'        ',
unistr('        // Depuraci\00F3n: Verifica los nombres seleccionados'),
'        console.log("Nombres seleccionados: ", nombresConcatenados);',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8872534844643520)
,p_name=>'Cambio Modalidad'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_MODALIDAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8873069275643520)
,p_event_id=>wwv_flow_imp.id(8872534844643520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE',
'FROM MODALIDAD',
'WHERE CODIGO = :P10_MODALIDAD'))
,p_attribute_07=>'P10_MODALIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9220091786806611)
,p_event_id=>wwv_flow_imp.id(8872534844643520)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'OPCIONES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(',
'    ''La prima total resultante con la modalidad '' || nombre || ',
unistr('    '' ser\00EDa de'' || '),
'    TO_CHAR(',
'        (prima + (ROUND(prima / 60, 2) * (LENGTH(:P10_CHECKBOX) + 1 - LENGTH(REPLACE(:P10_CHECKBOX, '';'', ''''))))) +',
'        ((prima + (ROUND(prima / 60, 2) * (LENGTH(:P10_CHECKBOX) + 1 - LENGTH(REPLACE(:P10_CHECKBOX, '';'', ''''))))) / 30) +',
'        ((prima + (ROUND(prima / 60, 2) * (LENGTH(:P10_CHECKBOX) + 1 - LENGTH(REPLACE(:P10_CHECKBOX, '';'', ''''))))) / 9.5)',
'    , ''999.99'') || ',
'    '' Euros.'', CHR(10)',
') WITHIN GROUP (ORDER BY nombre) AS mensaje',
'FROM MODALIDAD',
'WHERE :P9_MODALIDAD != codigo;'))
,p_attribute_07=>'P10_CHECKBOX'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8833418208309145)
,p_name=>'Cambio Prima Neta'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_CHECKBOX'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833505563309146)
,p_event_id=>wwv_flow_imp.id(8833418208309145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PRIMA_NETA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'CASE ',
'    WHEN LENGTH(:P10_CHECKBOX) > 0 THEN prima + (Round(prima / 60, 2) * (LENGTH(:P10_CHECKBOX) + 1 - LENGTH(REPLACE(:P10_CHECKBOX, '';'', ''''))))',
'        ELSE prima',
'END AS VALOR',
'FROM MODALIDAD',
'WHERE :P9_MODALIDAD = Codigo;'))
,p_attribute_07=>'P10_MODALIDAD,P10_CHECKBOX'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8833636470309147)
,p_name=>'Cambio Consorcio'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_PRIMA_NETA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833779965309148)
,p_event_id=>wwv_flow_imp.id(8833636470309147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_IMPORTE_CONSORCIO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = $v("P10_PRIMA_NETA") / 30;',
'var resultado = res.toFixed(2);',
'',
'$s("P10_IMPORTE_CONSORCIO", resultado);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8833877982309149)
,p_name=>'Cambio Impuestos'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_PRIMA_NETA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833927725309150)
,p_event_id=>wwv_flow_imp.id(8833877982309149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_IMPORTE_IMPUESTOS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = $v("P10_PRIMA_NETA") / 9.5;',
'var resultado = res.toFixed(2);',
'',
'$s("P10_IMPORTE_IMPUESTOS", resultado);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9219065539806601)
,p_name=>'Cambio Prima Final'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_PRIMA_NETA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9219142261806602)
,p_event_id=>wwv_flow_imp.id(9219065539806601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PRIMA_FINAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = parseFloat($v("P10_PRIMA_NETA")) + parseFloat($v("P10_IMPORTE_CONSORCIO")) + parseFloat($v("P10_IMPORTE_IMPUESTOS"));',
'var resultado = res.toFixed(2);',
'',
'$s("P10_PRIMA_FINAL", resultado);',
'$s("P10_PF", resultado);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9219423627806605)
,p_name=>'Cambio Prima'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833142878309142)
,p_event_id=>wwv_flow_imp.id(9219423627806605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_IMPORTE_CONSORCIO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = $v("P10_PRIMA_NETA") / 30;',
'var resultado = res.toFixed(2);',
'',
'$s("P10_IMPORTE_CONSORCIO", resultado);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833200716309143)
,p_event_id=>wwv_flow_imp.id(9219423627806605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_IMPORTE_IMPUESTOS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = $v("P10_PRIMA_NETA") / 9.5;',
'var resultado = res.toFixed(2);',
'',
'$s("P10_IMPORTE_IMPUESTOS", resultado);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8833331634309144)
,p_event_id=>wwv_flow_imp.id(9219423627806605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PRIMA_FINAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = parseFloat($v("P10_PRIMA_NETA")) + parseFloat($v("P10_IMPORTE_CONSORCIO")) + parseFloat($v("P10_IMPORTE_IMPUESTOS"));',
'var resultado = res.toFixed(2);',
'',
'$s("P10_PRIMA_FINAL", resultado);',
'$s("P10_PF", resultado);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9220424095806615)
,p_name=>'Poner Fecha'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9220553837806616)
,p_event_id=>wwv_flow_imp.id(9220424095806615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_FECHA,P10_FECHA_V,P10_DURACION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P6_DIA, ',
'TO_CHAR(ADD_MONTHS(SYSDATE, cast(:P6_DURACION AS INTEGER) * 12), ''DD-MM-YYYY''), ',
'CASE',
unistr('    WHEN :P6_DURACION = 1 THEN ''A\00F1o Renovable'''),
unistr('    ELSE :P6_DURACION || '' A\00F1os Renovables'''),
'END',
'FROM DUAL'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

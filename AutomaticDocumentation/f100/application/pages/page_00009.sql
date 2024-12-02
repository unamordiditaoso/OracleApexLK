prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Coberturas'
,p_alias=>'COBERTURAS'
,p_step_title=>'Coberturas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8342054561630982)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7733648972807299)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7617960411807449)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(7796409342807224)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8342604162630980)
,p_name=>'Coberturas'
,p_template=>wwv_flow_imp.id(7721242398807307)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'APEX_ITEM.CHECKBOX(1, c.id) "Select",',
'CASE',
'    WHEN dbms_lob.getlength(c.nombre) > 0 THEN c.ID',
'        ELSE NULL',
'END AS leader_code,',
'c.nombre,',
'',
'CASE',
'    WHEN c.nombre LIKE ''%CONTENIDO%'' THEN :P6_DIA',
'        ELSE :P6_SUCURSAL',
'END as Capital,',
unistr('1 as "Coef. T\00E9c."'),
'',
'from COBERTURA c'))
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
 p_id=>wwv_flow_imp.id(8343037298630976)
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
 p_id=>wwv_flow_imp.id(8343420531630975)
,p_query_column_id=>2
,p_column_alias=>'LEADER_CODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8343876556630974)
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
 p_id=>wwv_flow_imp.id(8292469076893819)
,p_query_column_id=>4
,p_column_alias=>'CAPITAL'
,p_column_display_sequence=>13
,p_column_heading=>'Capital'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8292766848893822)
,p_query_column_id=>5
,p_column_alias=>unistr('Coef. T\00E9c.')
,p_column_display_sequence=>23
,p_column_heading=>unistr('Coef. T\00E9c.')
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8293433053893829)
,p_button_sequence=>90
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Cancel'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8293317004893828)
,p_button_sequence=>100
,p_button_name=>'CONTINUAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continuar'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8829383120309104)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8293269319893827)
,p_name=>'P9_MODALIDAD'
,p_item_sequence=>30
,p_prompt=>'Modalidad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CODIGO_2 as d, CODIGO_2 as r',
' FROM CONDICIONES_GENERALES'))
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8293685325893831)
,p_name=>'P9_COUNT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8293954033893834)
,p_name=>'P9_CHECKBOX'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8362897027743049)
,p_name=>'P9_NOMBRE'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8363259900739920)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_MODALIDAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8363612160739918)
,p_event_id=>wwv_flow_imp.id(8363259900739920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NOMBRE',
'FROM MODALIDAD',
'WHERE CODIGO = :P9_MODALIDAD'))
,p_attribute_07=>'P9_MODALIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8293778019893832)
,p_name=>'New_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8293885936893833)
,p_event_id=>wwv_flow_imp.id(8293778019893832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Inicializa el contador con el valor actual de P9_COUNT (si existe), de lo contrario, inicializa en 0',
'    var contador = parseInt($v("P9_COUNT")) || 0;',
'',
unistr('    // Depuraci\00F3n para verificar el valor inicial'),
'    console.log("Valor inicial de P9_COUNT:", contador);',
'',
unistr('    // Aseg\00FArate de que el valor inicial de P9_COUNT est\00E9 actualizado en el campo'),
'    $s("P9_COUNT", contador);',
'',
'    // Event listener para cuando se hace clic en cualquier checkbox',
'    $("input[name=''f01'']").click(function() {',
unistr('        // Incrementa o decrementa el contador dependiendo si el checkbox est\00E1 marcado'),
'        if (this.checked) {',
'            contador += 1;',
'        } else {',
'            contador -= 1;',
'        }',
'',
'        // Actualiza el valor de P9_COUNT con el valor actualizado del contador',
'        $s("P9_COUNT", contador);',
'',
unistr('        // Depuraci\00F3n (opcional): mostrar el valor del contador en la consola'),
'        console.log("Contador actualizado:", contador);',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8294006464893835)
,p_event_id=>wwv_flow_imp.id(8293778019893832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Inicializamos una variable para almacenar los nombres',
unistr('    var nombresSeleccionados = []; // Aqu\00ED se almacenar\00E1n los nombres de las filas seleccionadas'),
'    ',
unistr('    // Aseguramos que el valor de P9_COUNT se obtiene de la p\00E1gina de forma correcta'),
'    var contador = parseInt($v("P9_COUNT")) || 0;',
'    ',
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
'        var nombresConcatenados = nombresSeleccionados.join("; ");',
'        ',
'        $s("P9_CHECKBOX", nombresConcatenados);',
'        ',
unistr('        // Depuraci\00F3n: Verifica los nombres seleccionados'),
'        console.log("Nombres seleccionados: ", nombresConcatenados);',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8832188265309132)
,p_event_id=>wwv_flow_imp.id(8293778019893832)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Obtiene el valor de P9_CHECKBOX (cadena)',
'    const p9CheckboxValue = $v("P9_CHECKBOX");',
'',
'    // Itera por cada fila de la tabla',
'    $("table tr").each(function() {',
'        // Obtiene el texto de la segunda celda en esta fila',
'        const cellText = $(this).find("td:nth-child(2)").text();',
'',
'        // Verifica si el valor de P9_CHECKBOX contiene el texto de la celda',
'        if (p9CheckboxValue.includes(cellText)) {',
'            // Marca el checkbox en esta fila',
'            $(this).find(''input[name="f01"]'').prop(''checked'', true);',
'        }',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8295567157893850)
,p_name=>'New_2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8829093663309101)
,p_event_id=>wwv_flow_imp.id(8295567157893850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_MODALIDAD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE ',
'        WHEN :P10_MODALIDAD IS NOT NULL THEN :P10_MODALIDAD',
'        ELSE :P6_CODIGO_2 ',
'    END',
'FROM DUAL;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

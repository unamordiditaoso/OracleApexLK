# Documentación del archivo page_00011.sql

Este documento proporciona una descripción detallada de las funciones, procedimientos y estructuras presentes en el archivo SQL. A continuación, se presenta el análisis y explicación del contenido.

### Bloque 1
wwv_flow_imp.component_begin -- Manifest . p_version_yyy_mm_dd=>'2024.05.31' ,p_release=>'24.1.4'

### Bloque 2
,p_ajax_enabled=>'Y' , p_lazy_loading=>false . db.domicilio,', 'db."D.C",', "db"COD.CUENTA"'' 'select',' and 'apex_item.RADIOGROUP(1, d.nombre) > 0 .

### Bloque 3
p_id=>wwv_flow_imp.id(9408551205376306) ,p_query_column_d=>2 .p_columbn_alias=>'LEADER_CODE' . d=>p_include_in_export=>'Y' ; w_flow-imp_page.create_report_collumns .

### Bloque 4
wwv_flow_imp_page.create_report_columns( p_id=>wwva_flow-imp.id(9221532050806626) ,p_query_coloumn_idicator=>5 . p-coluting_columbn_alias=>'SUCURSAL' .

### Bloque 5
wwv_flow_imp_page.create_report_columns( p_id=>wwva_flow-imp.id(9221453626806625) ,p_query_columbn_idicator_number=>8 . mn_alignment=>'RIGHT' ,n_derived . column_heading=>'Nombre' .p_include_in_export=>'Y'

### Bloque 6
p_id=>wwv_flow_imp.id(9405904388376292) ,p_button_sequence=>210 . w_grid_new_row=>'N'

### Bloque 7
wwv_flow_imp_page.create_page_branch( p_id=>wwva_flow-imp.id(9222073038806631) ,p_name=>'P11_PLAZO' ,cHeight=>1,p_colspan=>5 . w_item_template_options=>'#DEFAULT#' .

### Bloque 8
p_id=>wwv_flow_imp.id(9222115329806632) ,p_name=>'P11_RECIBO1' , p-item_sequence=>150 , pi_prompt=>'1er. Recibo' . p id: 'p11_PAGAR' - 'NATIVE_DISPLAY_ONLY'

### Bloque 9
p_id=>wwv_flow_imp.id(9523116519642601) . ,p_name=>'P11_RADIOBUTTON' .p_display_as=>'NATIVE_HIDDEN'

### Bloque 10
wwv_flow_imp_page.create_page_item( p_id=>www_flow-imp.id(18242311994685466) ,p_name=>'P11_EXTORNO_APLICADO' .p_display_as=>'NATIVE_DISPLAY_ONLY'

### Bloque 11
p_id=>wwv_flow_imp.id(18629587539182939) . ,p_name=>'P11_FECHA' , p.item_sequence=>70 .p_use_cache_before_default=>'NO' .

### Bloque 12
wwv_flow_imp_page.create_page_da_event( p_id=>www_flow-imp.id(9418319244376339) ,p_bind_type=>'bind' and 'immediate' . w_affected_elements_type = 'ITEM' ; .p_display_as=>'NATIVE_DISPLAY_ONLY'

### Bloque 13
wwv_flow_imp_page.create_page_da_event( p_id=>wwva_flow-imp.id(9220810628806619)) . ,p_name=>'Cambio Total a Pagar' ; .p_bind_type=>'bind' .

### Bloque 14
wwv_flow_imp_page.create_page_da_action( p_id=>www_flow-imp.id(9222994092806640) ,p_event_affected_elements_type=>'ITEM' .p_attribute_02=>'STATIC_ASSIGNMENT'

### Bloque 15
wwv_flow_imp_page.create_page_da_action( p_event_id=>www_flow-imp.id(9223443974806645)) w_affected_elements_type=>'ITEM'

### Bloque 16
wwv_flow_imp_page.create_page_da_action ,p_event_id=>wwvi_flow-imp.id(9223800130806649)) . if 'P11_RECIBO2' is affected element, p_affected_elements_type=>'ITEM'

### Bloque 17
wwv_flow_imp_page.create_page_da_action(9420665729376341) . '' // Inicializamos una variable para almacenar el nombre seleccionado'

### Bloque 18
unistr(' // Mostramos el nombre seleccionado en la consola (opcional, para depuraci00F3n)'), ' console.log('Nombre fila: ', nombreFila);', ' ' $s("P11_RADIOBUTTON", nombreSeleccinado);'))); wwv_flow_imp_page.create_page_da_event

### Bloque 19
,p_event_id=>wwv_flow_imp.id(9223686257806647) . p_name=>'Cambio Plazo' .p_attribute_08=>'N' and 'bind_type=>'bind'

### Bloque 20
wwv_flow_imp_page.create_page_da_action( p_event_id=>wwvi_flow-imp.id(9223942913806650)) ,p_affected_elements_type=>'ITEM'

### Bloque 21
'--VALUES (1, :P4_DNI, TO_NUMBER(:P11_RADIOBUTTON)', . '(::P6_ID), . (::p6_CODIGO_1), ' (:(:((:DNI)') '' ((:) (:)((*) (*)(*), '*)' (*); '#' (#) (#

### Bloque 22
'VALUES (:P4_DNI, TO_NUMBER(:P11_RADIOBUTTON), to_numbber(::P6_CODIGO_1) . 'DBMS_OUTPUT.PUT_LINE(' ||': P6_DIA);'); 'wwv_flow_imp.component_end'

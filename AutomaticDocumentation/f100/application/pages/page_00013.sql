prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'Poliza emitida'
,p_alias=>'POLIZA-EMITIDA'
,p_step_title=>'Poliza emitida'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9523850801642608)
,p_plug_name=>unistr('Emisi\00F3n de p\00F3liza')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7721242398807307)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9540742654106597)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9523470627642604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_button_name=>'Firmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Firmar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9523528142642605)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_button_name=>'Recibo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Recibo'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9523685474642606)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_button_name=>'Nueva'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>unistr('Nueva P\00F3liza')
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9523713694642607)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_button_name=>'Salir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(7794812815807226)
,p_button_image_alt=>'Salir'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9523246370642602)
,p_name=>'P13_NUMERO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_prompt=>unistr('N\00FAmero de p\00F3liza')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9523358534642603)
,p_name=>'P13_CONDICIONES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9523850801642608)
,p_prompt=>'Cond. General Rev.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9,10;10,11;11,12;12,13;13,14;14,15;15'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(7792360636807234)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp.component_end;
end;
/

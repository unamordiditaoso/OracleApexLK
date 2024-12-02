prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>7604359572568902
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAGUNARO'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7884841223806966)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(7646014304807385)
,p_default_dialog_template=>wwv_flow_imp.id(7641116959807391)
,p_error_template=>wwv_flow_imp.id(7634589584807395)
,p_printer_friendly_template=>wwv_flow_imp.id(7646014304807385)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(7634589584807395)
,p_default_button_template=>wwv_flow_imp.id(7794812815807226)
,p_default_region_template=>wwv_flow_imp.id(7721242398807307)
,p_default_chart_template=>wwv_flow_imp.id(7721242398807307)
,p_default_form_template=>wwv_flow_imp.id(7721242398807307)
,p_default_reportr_template=>wwv_flow_imp.id(7721242398807307)
,p_default_tabform_template=>wwv_flow_imp.id(7721242398807307)
,p_default_wizard_template=>wwv_flow_imp.id(7721242398807307)
,p_default_menur_template=>wwv_flow_imp.id(7733648972807299)
,p_default_listr_template=>wwv_flow_imp.id(7721242398807307)
,p_default_irr_template=>wwv_flow_imp.id(7711466006807313)
,p_default_report_template=>wwv_flow_imp.id(7748050129807281)
,p_default_label_template=>wwv_flow_imp.id(7792360636807234)
,p_default_menu_template=>wwv_flow_imp.id(7796409342807224)
,p_default_calendar_template=>wwv_flow_imp.id(7796580743807222)
,p_default_list_template=>wwv_flow_imp.id(7782228816807250)
,p_default_nav_list_template=>wwv_flow_imp.id(7791070030807242)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(7791070030807242)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(7789214202807243)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(7677544298807345)
,p_default_dialogr_template=>wwv_flow_imp.id(7654637498807363)
,p_default_option_label=>wwv_flow_imp.id(7792360636807234)
,p_default_required_label=>wwv_flow_imp.id(7793688438807232)
,p_default_navbar_list_template=>wwv_flow_imp.id(7788843252807243)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

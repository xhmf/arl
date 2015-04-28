set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>2742555966588867213
,p_default_application_id=>95803
,p_default_owner=>'NOTICE_LISTS'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 95803 - NL_App
--
-- Application Export:
--   Application:     95803
--   Name:            NL_App
--   Date and Time:   21:56 Tuesday April 28, 2015
--   Exported By:     LAWRENCE.YING@UTEXAS.EDU
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     16
--     Items:                   44
--     Processes:               22
--     Regions:                 34
--     Buttons:                 31
--     Dynamic Actions:         17
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   5
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,95803)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'NOTICE_LISTS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'NL_App')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_95803')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E02F9C8EB198CC13253108EB130907E4E83C2EB0EF7204AF07ACDB20440B1C0B'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(3433364905973570235)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:NL_App'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428214838'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3433265777553564938)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3433365172985570241)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3433449307792598508)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Lists'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3433551107636593042)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3493545744127830280)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3493813466590877057)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10,24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3659205078782040839)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'View Employees'' Lists'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3663971655714354934)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'View Employees on List'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3766818031734119415)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'List Members'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33,34'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3433364641012570225)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3433364854248570234)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3433265470774564938)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3433265519733564938)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(3433265612215564938)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3495052291885086536)
,p_lov_name=>'DIVISION CODES'
,p_lov_query=>'select name, name as div_names from nl_div;'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3494964060869054615)
,p_lov_name=>'EMP_IDS'
,p_lov_query=>'select emp_name, nullif(emp_id, 200) from nl_emp;'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3550309402832261267)
,p_lov_name=>'EMP_IDS_ACTIVE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select emp_name, nullif(emp_id, 200) from nl_emp',
'where emp_status = ''A'' or emp_status is null;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3495339131688160064)
,p_lov_name=>'LAB CODES'
,p_lov_query=>'select name, name as lab_name from nl_labs;'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3494834247275026507)
,p_lov_name=>'LIST IDS'
,p_lov_query=>'select list_name, nullif(list_id, 181) from nl_list;'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(3433365069301570237)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(3433365492185570242)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433265855433564945)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433265913514564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266067766564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266193152564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266237115564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266386094564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266497697564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266537730564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266692250564949)
,p_page_template_id=>wwv_flow_api.id(3433265855433564945)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433266724930565350)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266876480565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433266994738565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267030783565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267129517565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267223164565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267391344565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267438012565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267570667565350)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433267603774565351)
,p_page_template_id=>wwv_flow_api.id(3433266724930565350)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433268143364565526)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268243404565526)
,p_page_template_id=>wwv_flow_api.id(3433268143364565526)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268387220565526)
,p_page_template_id=>wwv_flow_api.id(3433268143364565526)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433268468827565625)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268522045565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268694381565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268782316565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268808963565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433268914195565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269084889565625)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269134111565626)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269204278565626)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269397794565626)
,p_page_template_id=>wwv_flow_api.id(3433268468827565625)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433269474399565722)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269521519565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269654351565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269707069565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269827237565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433269910024565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270012870565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270108606565723)
,p_page_template_id=>wwv_flow_api.id(3433269474399565722)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433270432791565823)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270507303565823)
,p_page_template_id=>wwv_flow_api.id(3433270432791565823)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270638745565823)
,p_page_template_id=>wwv_flow_api.id(3433270432791565823)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270789283565824)
,p_page_template_id=>wwv_flow_api.id(3433270432791565823)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433270834927565921)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433270900739565921)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271092376565921)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271133183565921)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271290142565922)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271377246565922)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271423261565922)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271510357565922)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271608328565922)
,p_page_template_id=>wwv_flow_api.id(3433270834927565921)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433271717973566018)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271859608566018)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433271932854566018)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272005253566018)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272186433566019)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272261668566019)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272348242566019)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272410971566019)
,p_page_template_id=>wwv_flow_api.id(3433271717973566018)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3433272893586566120)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433272932723566120)
,p_page_template_id=>wwv_flow_api.id(3433272893586566120)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433273065988566120)
,p_page_template_id=>wwv_flow_api.id(3433272893586566120)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433273113497566120)
,p_page_template_id=>wwv_flow_api.id(3433272893586566120)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3433358591450569804)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3433358709918569906)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3433358838150570007)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433273745410566220)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433273883714566223)
,p_plug_template_id=>wwv_flow_api.id(3433273745410566220)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433276774105566324)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433277055522566423)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433277126471566424)
,p_plug_template_id=>wwv_flow_api.id(3433277055522566423)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433277261824566424)
,p_plug_template_id=>wwv_flow_api.id(3433277055522566423)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433278024398566525)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433278131833566526)
,p_plug_template_id=>wwv_flow_api.id(3433278024398566525)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433278299449566526)
,p_plug_template_id=>wwv_flow_api.id(3433278024398566525)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433284240687566627)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433284320668566627)
,p_plug_template_id=>wwv_flow_api.id(3433284240687566627)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433284408345566627)
,p_plug_template_id=>wwv_flow_api.id(3433284240687566627)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433289174929566731)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433289247237566731)
,p_plug_template_id=>wwv_flow_api.id(3433289174929566731)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433292155765566821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433292268757566822)
,p_plug_template_id=>wwv_flow_api.id(3433292155765566821)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433296294102566920)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433299225948567016)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433299592892567016)
,p_plug_template_id=>wwv_flow_api.id(3433299225948567016)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433302207435567116)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433302373576567116)
,p_plug_template_id=>wwv_flow_api.id(3433302207435567116)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433302486829567116)
,p_plug_template_id=>wwv_flow_api.id(3433302207435567116)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433306771335567209)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433306859419567209)
,p_plug_template_id=>wwv_flow_api.id(3433306771335567209)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433306935430567209)
,p_plug_template_id=>wwv_flow_api.id(3433306771335567209)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433310494578567308)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(3433314863482567409)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(3433314977985567409)
,p_plug_template_id=>wwv_flow_api.id(3433314863482567409)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433337894019568268)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433339530582568369)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433341632509568461)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433342653281568556)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433343598521568647)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433344065193568739)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433344248824568830)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433344309971568918)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433344828371569017)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433345710922569117)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3433346372569569217)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433317701602567505)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433320968841567601)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433327625056567702)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433332975233567794)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433334519785567894)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433334640493567985)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(3433334640493567985)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433335919408568077)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3433336980987568169)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3433346882544569315)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3433346938986569413)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3433347160436569513)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3433347266441569610)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(3433347410990569707)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(3433359341627570107)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(3433360234699570210)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(3433360191222570208)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(3433360639268570218)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>wwv_flow_api.id(4070917134413059350)
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(3433271717973566018)
,p_default_dialog_template=>wwv_flow_api.id(3433270432791565823)
,p_error_template=>wwv_flow_api.id(3433268143364565526)
,p_printer_friendly_template=>wwv_flow_api.id(3433271717973566018)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(3433268143364565526)
,p_default_button_template=>wwv_flow_api.id(3433358709918569906)
,p_default_region_template=>wwv_flow_api.id(3433302207435567116)
,p_default_chart_template=>wwv_flow_api.id(3433302207435567116)
,p_default_form_template=>wwv_flow_api.id(3433302207435567116)
,p_default_reportr_template=>wwv_flow_api.id(3433302207435567116)
,p_default_tabform_template=>wwv_flow_api.id(3433302207435567116)
,p_default_wizard_template=>wwv_flow_api.id(3433302207435567116)
,p_default_menur_template=>wwv_flow_api.id(3433310494578567308)
,p_default_listr_template=>wwv_flow_api.id(3433302207435567116)
,p_default_irr_template=>wwv_flow_api.id(3433296294102566920)
,p_default_report_template=>wwv_flow_api.id(3433334640493567985)
,p_default_label_template=>wwv_flow_api.id(3433346938986569413)
,p_default_menu_template=>wwv_flow_api.id(3433359341627570107)
,p_default_calendar_template=>wwv_flow_api.id(3433360191222570208)
,p_default_list_template=>wwv_flow_api.id(3433341632509568461)
,p_default_nav_list_template=>wwv_flow_api.id(3433345710922569117)
,p_default_top_nav_list_temp=>wwv_flow_api.id(3433345710922569117)
,p_default_side_nav_list_temp=>wwv_flow_api.id(3433344309971568918)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(3433277055522566423)
,p_default_dialogr_template=>wwv_flow_api.id(3433276774105566324)
,p_default_option_label=>wwv_flow_api.id(3433346938986569413)
,p_default_required_label=>wwv_flow_api.id(3433347266441569610)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(3433344248824568830)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>64
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3433360321578570213)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3433360488966570213)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3433360518781570213)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3771184313711468841)
,p_theme_id=>42
,p_name=>'ut_theme'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#bf5600"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#3771184313711468841.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A2075745F7468656D650A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261746564207573';
wwv_flow_api.g_varchar2_table(2) := '696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233566356635663B0A';
wwv_flow_api.g_varchar2_table(3) := '7D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233436343634363B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233636363636363B';
wwv_flow_api.g_varchar2_table(4) := '0A7D0A2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233436343634363B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567';
wwv_flow_api.g_varchar2_table(5) := '696F6E202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D636F6C';
wwv_flow_api.g_varchar2_table(6) := '6F7242472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(7) := '636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E';
wwv_flow_api.g_varchar2_table(8) := '672068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E6720';
wwv_flow_api.g_varchar2_table(9) := '2E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(10) := '42472E742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(11) := '2D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F6479';
wwv_flow_api.g_varchar2_table(12) := '207B0A2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(13) := '756E642D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0A2E742D416C';
wwv_flow_api.g_varchar2_table(14) := '6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C6572742D2D63';
wwv_flow_api.g_varchar2_table(15) := '6F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233734373437';
wwv_flow_api.g_varchar2_table(16) := '343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E66';
wwv_flow_api.g_varchar2_table(17) := '6F2068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E742D416C';
wwv_flow_api.g_varchar2_table(18) := '6572742D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B0A2020';
wwv_flow_api.g_varchar2_table(19) := '636F6C6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C6572742D6963';
wwv_flow_api.g_varchar2_table(20) := '6F6E207B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20236539';
wwv_flow_api.g_varchar2_table(21) := '306330303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C6572742D2D7769';
wwv_flow_api.g_varchar2_table(22) := '7A617264207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616C657274202E742D416C657274';
wwv_flow_api.g_varchar2_table(23) := '2D2D70616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A20206261636B';
wwv_flow_api.g_varchar2_table(24) := '67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167652E742D416C';
wwv_flow_api.g_varchar2_table(25) := '6572742D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(26) := '302C20302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365366536653620696E73';
wwv_flow_api.g_varchar2_table(27) := '65743B0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(28) := '73742D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A202337333733';
wwv_flow_api.g_varchar2_table(29) := '37333B0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(30) := '2D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365743B0A2020636F6C6F723A20236230346630303B0A7D0A2E742D42616467';
wwv_flow_api.g_varchar2_table(31) := '654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202362663536303020696E7365743B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(32) := '6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(33) := '20302030203270782072676261283139312C2038362C20302C20302E3235292C20302030203020317078202362663536303020696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C616265';
wwv_flow_api.g_varchar2_table(34) := '6C207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(35) := '723A20236266353630303B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(36) := '617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202362663536303020696E7365743B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(37) := '2D636F6C6F723A20236266353630303B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(38) := '6F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D2D666C6F6174202E';
wwv_flow_api.g_varchar2_table(39) := '742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(40) := '6974656D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A616674';
wwv_flow_api.g_varchar2_table(41) := '6572207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C6578202E742D4261';
wwv_flow_api.g_varchar2_table(42) := '6467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(43) := '74656D3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(44) := '626F74746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236638663866383B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(45) := '636F6C6F723A20236632663266323B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(46) := '64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D426F64792D696E666F202E612D426172436861';
wwv_flow_api.g_varchar2_table(47) := '7274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E';
wwv_flow_api.g_varchar2_table(48) := '612D42617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233830383038303B';
wwv_flow_api.g_varchar2_table(49) := '0A7D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(50) := '6F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C6173736963202E612D4261';
wwv_flow_api.g_varchar2_table(51) := '7243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D62617220';
wwv_flow_api.g_varchar2_table(52) := '7B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D6D6F646572';
wwv_flow_api.g_varchar2_table(53) := '6E202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172';
wwv_flow_api.g_varchar2_table(54) := '742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B';
wwv_flow_api.g_varchar2_table(55) := '0A7D0A0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20236638663866383B0A2020636F6C6F723A20233339333933393B0A7D0A61207B0A2020636F6C6F723A20236230346630303B0A7D0A2E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(56) := '20612C0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20233936343430303B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(57) := '746C65207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A2020636F6C6F723A20233230323032303B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(58) := '6666663B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(59) := '233230323032303B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0A2E742D4275';
wwv_flow_api.g_varchar2_table(60) := '74746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F';
wwv_flow_api.g_varchar2_table(61) := '6C6F723A20233339333933393B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E74';
wwv_flow_api.g_varchar2_table(62) := '61696E6572207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A7D0A2E742D426F64792D7469746C652E6A';
wwv_flow_api.g_varchar2_table(63) := '732D6869646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(64) := '313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(65) := '64792D746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(66) := '617065782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20343070';
wwv_flow_api.g_varchar2_table(67) := '783B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A2032303070783B0A20';
wwv_flow_api.g_varchar2_table(68) := '207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A';
wwv_flow_api.g_varchar2_table(69) := '2032303070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0A202074';
wwv_flow_api.g_varchar2_table(70) := '6F703A20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E742D426F64792D61';
wwv_flow_api.g_varchar2_table(71) := '6374696F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D343070';
wwv_flow_api.g_varchar2_table(72) := '782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073';
wwv_flow_api.g_varchar2_table(73) := '637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E617065782D736964652D';
wwv_flow_api.g_varchar2_table(74) := '6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C203029';
wwv_flow_api.g_varchar2_table(75) := '3B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C792073637265656E20616E64';
wwv_flow_api.g_varchar2_table(76) := '20286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(77) := '202E742D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E617065782D736964';
wwv_flow_api.g_varchar2_table(78) := '652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C';
wwv_flow_api.g_varchar2_table(79) := '2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C79';
wwv_flow_api.g_varchar2_table(80) := '2073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C';
wwv_flow_api.g_varchar2_table(81) := '0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E64';
wwv_flow_api.g_varchar2_table(82) := '65642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A20202020747261';
wwv_flow_api.g_varchar2_table(83) := '6E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C6566743A20323030';
wwv_flow_api.g_varchar2_table(84) := '70783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032303070';
wwv_flow_api.g_varchar2_table(85) := '783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A203070783B0A20207D';
wwv_flow_api.g_varchar2_table(86) := '0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0A20202E617065';
wwv_flow_api.g_varchar2_table(87) := '782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A202020202D6D73';
wwv_flow_api.g_varchar2_table(88) := '2D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(89) := '70616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D';
wwv_flow_api.g_varchar2_table(90) := '7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(91) := '64792D73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A2020';
wwv_flow_api.g_varchar2_table(92) := '20206D617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746528';
wwv_flow_api.g_varchar2_table(93) := '3136307078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20';
wwv_flow_api.g_varchar2_table(94) := '202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D74';
wwv_flow_api.g_varchar2_table(95) := '72616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(96) := '50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F';
wwv_flow_api.g_varchar2_table(97) := '726D3A206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D63';
wwv_flow_api.g_varchar2_table(98) := '6F6E74656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D';
wwv_flow_api.g_varchar2_table(99) := '3A206E6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61';
wwv_flow_api.g_varchar2_table(100) := '76202E742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(101) := '76436F6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B0A7D0A406D656469';
wwv_flow_api.g_varchar2_table(102) := '61206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(103) := '616E73666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C61746558282D34307078293B0A';
wwv_flow_api.g_varchar2_table(104) := '20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0A20';
wwv_flow_api.g_varchar2_table(105) := '202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E642028';
wwv_flow_api.g_varchar2_table(106) := '6D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A2034';
wwv_flow_api.g_varchar2_table(107) := '3070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A2020';
wwv_flow_api.g_varchar2_table(108) := '7D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032383070783B0A2020';
wwv_flow_api.g_varchar2_table(109) := '7D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20202020';
wwv_flow_api.g_varchar2_table(110) := '6C6566743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D50616765426F64792E6A732D72';
wwv_flow_api.g_varchar2_table(111) := '69676874457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(112) := '3364282D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A7D0A406D6564';
wwv_flow_api.g_varchar2_table(113) := '6961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(114) := '6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B';
wwv_flow_api.g_varchar2_table(115) := '0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65';
wwv_flow_api.g_varchar2_table(116) := '6674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E';
wwv_flow_api.g_varchar2_table(117) := '742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(118) := '6C65207B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73';
wwv_flow_api.g_varchar2_table(119) := '696465207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E742D50616765426F';
wwv_flow_api.g_varchar2_table(120) := '64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A';
wwv_flow_api.g_varchar2_table(121) := '732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_api.g_varchar2_table(122) := '6674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E74';
wwv_flow_api.g_varchar2_table(123) := '2D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E';
wwv_flow_api.g_varchar2_table(124) := '6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A406D65646961206F6E';
wwv_flow_api.g_varchar2_table(125) := '6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E20';
wwv_flow_api.g_varchar2_table(126) := '7B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269';
wwv_flow_api.g_varchar2_table(127) := '676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_api.g_varchar2_table(128) := '2E742D426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(129) := '73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E736C6174653364282D';
wwv_flow_api.g_varchar2_table(130) := '32303070782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(131) := '3A20343070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A7D0A2E742D506167';
wwv_flow_api.g_varchar2_table(132) := '65426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E';
wwv_flow_api.g_varchar2_table(133) := '73207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(134) := '72616E736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(135) := '6F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D77696474683A20617574';
wwv_flow_api.g_varchar2_table(136) := '6F3B0A7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F76';
wwv_flow_api.g_varchar2_table(137) := '6572207B0A2020636F6C6F723A20236266353630303B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D6368696C64202E742D4272';
wwv_flow_api.g_varchar2_table(138) := '6561646372756D622D6C6162656C207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20233230323032303B0A7D0A0A2E742D427574746F6E2C';
wwv_flow_api.g_varchar2_table(139) := '0A2E612D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233338333833383B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(140) := '6638663866383B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D736861646F773A206E6F6E';
wwv_flow_api.g_varchar2_table(141) := '653B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128';
wwv_flow_api.g_varchar2_table(142) := '302C20302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(143) := '3A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D736861646F773A206E6F6E65';
wwv_flow_api.g_varchar2_table(144) := '3B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A66';
wwv_flow_api.g_varchar2_table(145) := '6F6375732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(146) := '653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D656469612073637265656E20616E642028';
wwv_flow_api.g_varchar2_table(147) := '2D6D732D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D427574746F6E2D2D707269';
wwv_flow_api.g_varchar2_table(148) := '6D6172792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D736861646F773A2030203020';
wwv_flow_api.g_varchar2_table(149) := '327078207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(150) := '652C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D737563636573732E742D427574';
wwv_flow_api.g_varchar2_table(151) := '746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A';
wwv_flow_api.g_varchar2_table(152) := '2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E2D2D686F743A';
wwv_flow_api.g_varchar2_table(153) := '686F7665722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E31';
wwv_flow_api.g_varchar2_table(154) := '292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(155) := '66666666663B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A203131303B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(156) := '74746F6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(157) := '78202362663536303020696E7365742C2030203020317078203270782072676261283139312C2038362C20302C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(158) := '6C6F723A20236465646564653B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365743B';
wwv_flow_api.g_varchar2_table(159) := '0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820';
wwv_flow_api.g_varchar2_table(160) := '327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A6163746976652C0A2E742D4D656E75';
wwv_flow_api.g_varchar2_table(161) := '427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A2020666F6E742D7765696768743A206E6F726D616C3B0A2020746578742D73686164';
wwv_flow_api.g_varchar2_table(162) := '6F773A206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(163) := '302E32352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A20206F7061636974793A20';
wwv_flow_api.g_varchar2_table(164) := '2E353B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0A626F6479';
wwv_flow_api.g_varchar2_table(165) := '20627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A202074657874';
wwv_flow_api.g_varchar2_table(166) := '2D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D6275';
wwv_flow_api.g_varchar2_table(167) := '74746F6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632366430';
wwv_flow_api.g_varchar2_table(168) := '303B0A7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F647920627574746F6E2E75692D73';
wwv_flow_api.g_varchar2_table(169) := '746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(170) := '75692D627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(171) := '2E742D4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F64';
wwv_flow_api.g_varchar2_table(172) := '7920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233863336630303B0A';
wwv_flow_api.g_varchar2_table(173) := '7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C';
wwv_flow_api.g_varchar2_table(174) := '0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A203020302030203170782023626635363030';
wwv_flow_api.g_varchar2_table(175) := '20696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233766346232303B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F';
wwv_flow_api.g_varchar2_table(176) := '6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(177) := '2E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233766346232303B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A';
wwv_flow_api.g_varchar2_table(178) := '686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E2E75692D73746174652D';
wwv_flow_api.g_varchar2_table(179) := '64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(180) := '73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F72';
wwv_flow_api.g_varchar2_table(181) := '6974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(182) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D';
wwv_flow_api.g_varchar2_table(183) := '427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202362663536';
wwv_flow_api.g_varchar2_table(184) := '303020696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F';
wwv_flow_api.g_varchar2_table(185) := '6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(186) := '6D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(187) := '75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4275';
wwv_flow_api.g_varchar2_table(188) := '74746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(189) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(190) := '696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(191) := '3A20236666623237323B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666636561353B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(192) := '7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666393634303B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D42';
wwv_flow_api.g_varchar2_table(193) := '7574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666232373220696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023386336363436';
wwv_flow_api.g_varchar2_table(194) := '3B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863363634363B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(195) := '696D706C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B';
wwv_flow_api.g_varchar2_table(196) := '0A20206261636B67726F756E642D636F6C6F723A20236666623237323B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666232373220696E7365743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(197) := '7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(198) := '2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(199) := '6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(200) := '2D2D64616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D4275';
wwv_flow_api.g_varchar2_table(201) := '74746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233934323632303B';
wwv_flow_api.g_varchar2_table(202) := '0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(203) := '6C653A686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261';
wwv_flow_api.g_varchar2_table(204) := '636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D427574746F6E2D2D64616E6765';
wwv_flow_api.g_varchar2_table(205) := '722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765';
wwv_flow_api.g_varchar2_table(206) := '722E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(207) := '66636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D427574746F6E2D2D7761726E';
wwv_flow_api.g_varchar2_table(208) := '696E673A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F';
wwv_flow_api.g_varchar2_table(209) := '6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233863373330643B0A7D0A';
wwv_flow_api.g_varchar2_table(210) := '2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(211) := '653A686F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665207B0A202062';
wwv_flow_api.g_varchar2_table(212) := '61636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D427574746F6E2D2D7761726E';
wwv_flow_api.g_varchar2_table(213) := '696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D7761';
wwv_flow_api.g_varchar2_table(214) := '726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(215) := '3A20233463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(216) := '737563636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D737563636573732E742D42';
wwv_flow_api.g_varchar2_table(217) := '7574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023333337393366';
wwv_flow_api.g_varchar2_table(218) := '3B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(219) := '696D706C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665207B';
wwv_flow_api.g_varchar2_table(220) := '0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(221) := '737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(222) := '2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(223) := '72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C456E64207B0A2020626F72';
wwv_flow_api.g_varchar2_table(224) := '6465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C207B0A2020';
wwv_flow_api.g_varchar2_table(225) := '626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4865616465722D627261';
wwv_flow_api.g_varchar2_table(226) := '6E64696E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0A20207472616E73';
wwv_flow_api.g_varchar2_table(227) := '6974696F6E3A206E6F6E653B0A2020626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A61637469';
wwv_flow_api.g_varchar2_table(228) := '76653A666F637573207B0A2020626F782D736861646F773A20302030203020317078202366663761306420696E7365742C2030203020317078203270782072676261283235352C203132322C2031332C20302E3235292021696D706F7274616E743B0A7D';
wwv_flow_api.g_varchar2_table(229) := '0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A61637469';
wwv_flow_api.g_varchar2_table(230) := '7665207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(231) := '302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0A20206261636B';
wwv_flow_api.g_varchar2_table(232) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(233) := '302C20302C20302C20302E3235293B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657254726565207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(234) := '2D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A2020636F6E74656E743A202727';
wwv_flow_api.g_varchar2_table(235) := '3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C';
wwv_flow_api.g_varchar2_table(236) := '20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(237) := '706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E';
wwv_flow_api.g_varchar2_table(238) := '2D2D686561646572547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D4275';
wwv_flow_api.g_varchar2_table(239) := '74746F6E2D2D6865616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A';
wwv_flow_api.g_varchar2_table(240) := '686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976652C0A2E742D42';
wwv_flow_api.g_varchar2_table(241) := '7574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D427574746F6E2D2D6E6176426172202E742D4275';
wwv_flow_api.g_varchar2_table(242) := '74746F6E2D6261646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68656C70427574746F6E20';
wwv_flow_api.g_varchar2_table(243) := '2E612D49636F6E207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(244) := '2D2D6E6F5549207B0A2020636F6C6F723A20233338333833383B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233863363634362021696D706F7274616E743B0A7D0A2E742D42';
wwv_flow_api.g_varchar2_table(245) := '7574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20236666623237322021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D776172';
wwv_flow_api.g_varchar2_table(246) := '6E696E67207B0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A20236666636330302021';
wwv_flow_api.g_varchar2_table(247) := '696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574';
wwv_flow_api.g_varchar2_table(248) := '746F6E2D2D64616E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(249) := '33373933662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(250) := '74746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233663333830642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0A2020';
wwv_flow_api.g_varchar2_table(251) := '636F6C6F723A20236266353630302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0A2E';
wwv_flow_api.g_varchar2_table(252) := '742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A';
wwv_flow_api.g_varchar2_table(253) := '2020626F782D736861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(254) := '6975733A203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0A2E742D42';
wwv_flow_api.g_varchar2_table(255) := '7574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(256) := '6F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A202333393339';
wwv_flow_api.g_varchar2_table(257) := '33393B0A7D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F64792D69';
wwv_flow_api.g_varchar2_table(258) := '6E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E742D427574746F6E526567696F6E';
wwv_flow_api.g_varchar2_table(259) := '2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C6520';
wwv_flow_api.g_varchar2_table(260) := '7B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(261) := '646975733A20303B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20327078';
wwv_flow_api.g_varchar2_table(262) := '20327078203020303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F6C6F723A202334303430';
wwv_flow_api.g_varchar2_table(263) := '34303B0A7D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236566656665663B0A202063';
wwv_flow_api.g_varchar2_table(264) := '6F6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(265) := '636F6C6F723A20236562656265623B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20236436643664363B0A2020636F';
wwv_flow_api.g_varchar2_table(266) := '6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20233364336433643B0A7D0A2E6663202E66632D6167656E6461';
wwv_flow_api.g_varchar2_table(267) := '4C6973742D64617465207B0A2020636F6C6F723A20233633363336333B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C697374202E66632D6576656E';
wwv_flow_api.g_varchar2_table(268) := '742D616C6C2D646179207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(269) := '236536653665363B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(270) := '723A20236632663266323B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(271) := '3270783B0A7D0A2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20236266353630303B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646463B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(272) := '72642D64657363207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(273) := '64732D2D636F6D70616374202E742D436172642D64657363207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(274) := '636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(275) := '6F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E742D49636F6E207B';
wwv_flow_api.g_varchar2_table(276) := '0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C65577261702C0A2E742D';
wwv_flow_api.g_varchar2_table(277) := '436172642D2D6261736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D7772';
wwv_flow_api.g_varchar2_table(278) := '61702C0A2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D4361';
wwv_flow_api.g_varchar2_table(279) := '72642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A20234646463B0A202062';
wwv_flow_api.g_varchar2_table(280) := '61636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D436172642D626F647920';
wwv_flow_api.g_varchar2_table(281) := '7B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C6173736963';
wwv_flow_api.g_varchar2_table(282) := '43616C656E6461722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020';
wwv_flow_api.g_varchar2_table(283) := '636F6C6F723A20233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E6163';
wwv_flow_api.g_varchar2_table(284) := '74697665202E742D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(285) := '722D6461792E69732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(286) := '722D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F723A2023383038303830';
wwv_flow_api.g_varchar2_table(287) := '3B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(288) := '30343034303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C';
wwv_flow_api.g_varchar2_table(289) := '656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0A202062';
wwv_flow_api.g_varchar2_table(290) := '61636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(291) := '6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343';
wwv_flow_api.g_varchar2_table(292) := '616C656E6461722D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(293) := '236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E742D436C617373696343';
wwv_flow_api.g_varchar2_table(294) := '616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A7D0A2E742D436C617373696343616C656E6461722D6C';
wwv_flow_api.g_varchar2_table(295) := '697374207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(296) := '65722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020636F6C6F723A20233636363636363B0A7D';
wwv_flow_api.g_varchar2_table(297) := '0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572496D67207B0A2020626F';
wwv_flow_api.g_varchar2_table(298) := '726465722D7261646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D696E666F207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(299) := '723A20233636363636363B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(300) := '726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D';
wwv_flow_api.g_varchar2_table(301) := '436F6D6D656E74732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236666666666663B0A7D0A2E742D436F';
wwv_flow_api.g_varchar2_table(302) := '6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D72696768742D636F6C6F723A';
wwv_flow_api.g_varchar2_table(303) := '20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A203020';
wwv_flow_api.g_varchar2_table(304) := '3020327078203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(305) := '3536353635363B0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F723A20234646463B0A7D';
wwv_flow_api.g_varchar2_table(306) := '0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0A20';
wwv_flow_api.g_varchar2_table(307) := '206261636B67726F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233733373337333B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(308) := '2D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F6E66696750616E';
wwv_flow_api.g_varchar2_table(309) := '656C2D617474724C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(310) := '6230346630303B0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C202D7765626B';
wwv_flow_api.g_varchar2_table(311) := '69742D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C20726762612830';
wwv_flow_api.g_varchar2_table(312) := '2C20302C20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A202D6F2D6C696E656172';
wwv_flow_api.g_varchar2_table(313) := '2D6772616469656E742823666666666666203330252C2023666666666666292C202D6F2D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D6F2D6C696E6561722D6772616469656E74';
wwv_flow_api.g_varchar2_table(314) := '287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A';
wwv_flow_api.g_varchar2_table(315) := '20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C206C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C206C';
wwv_flow_api.g_varchar2_table(316) := '696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(317) := '302C20302E30352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D466F';
wwv_flow_api.g_varchar2_table(318) := '726D2D696E707574436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(319) := '20696E7075745B747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F2C';
wwv_flow_api.g_varchar2_table(320) := '0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D696E707574436F6E746169';
wwv_flow_api.g_varchar2_table(321) := '6E65722074657874617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F';
wwv_flow_api.g_varchar2_table(322) := '6F6E6C792C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D466F726D2D7465787461';
wwv_flow_api.g_varchar2_table(323) := '7265612C0A2E752D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(324) := '61646975733A203270783B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D466F726D2D6669656C643A';
wwv_flow_api.g_varchar2_table(325) := '666F6375732C0A2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(326) := '2073656C6563742E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E74';
wwv_flow_api.g_varchar2_table(327) := '6578745F6669656C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E746578746172';
wwv_flow_api.g_varchar2_table(328) := '65613A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F';
wwv_flow_api.g_varchar2_table(329) := '6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375732C0A2E74';
wwv_flow_api.g_varchar2_table(330) := '2D466F726D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D646174657069636B65723A666F63';
wwv_flow_api.g_varchar2_table(331) := '75732C0A2E752D54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20236266353630302021696D706F';
wwv_flow_api.g_varchar2_table(332) := '7274616E743B0A7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E70';
wwv_flow_api.g_varchar2_table(333) := '75745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(334) := '2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D6D732D76';
wwv_flow_api.g_varchar2_table(335) := '616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E746578746172';
wwv_flow_api.g_varchar2_table(336) := '65613A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65';
wwv_flow_api.g_varchar2_table(337) := '72207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0A2E742D466F';
wwv_flow_api.g_varchar2_table(338) := '726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D';
wwv_flow_api.g_varchar2_table(339) := '746578743A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75';
wwv_flow_api.g_varchar2_table(340) := '652C0A2E752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20233333333333333B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F726D2D73656C6563743A';
wwv_flow_api.g_varchar2_table(341) := '686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A686F76';
wwv_flow_api.g_varchar2_table(342) := '65722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0A2E742D466F';
wwv_flow_api.g_varchar2_table(343) := '726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(344) := '74436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(345) := '61696E657220696E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D74657874617265613A686F7665722C0A';
wwv_flow_api.g_varchar2_table(346) := '2E752D54462D6974656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974656D2D2D73656C656374';
wwv_flow_api.g_varchar2_table(347) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0A2020';
wwv_flow_api.g_varchar2_table(348) := '636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B';
wwv_flow_api.g_varchar2_table(349) := '0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A';
wwv_flow_api.g_varchar2_table(350) := '202E35353B0A7D0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(351) := '2D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563';
wwv_flow_api.g_varchar2_table(352) := '742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0A20';
wwv_flow_api.g_varchar2_table(353) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0A2E742D';
wwv_flow_api.g_varchar2_table(354) := '466F726D2D636865636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A';
wwv_flow_api.g_varchar2_table(355) := '7D0A2E742D466F726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20236363636363633B0A7D0A2E742D466F726D2D2D73656172636820696E7075742E74';
wwv_flow_api.g_varchar2_table(356) := '2D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D74';
wwv_flow_api.g_varchar2_table(357) := '6578745D2E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236666663866323B0A2020626F726465722D636F6C6F723A20236666633038633B0A7D0A2E742D4865726F526567696F6E2D666F726D';
wwv_flow_api.g_varchar2_table(358) := '20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(359) := '20236266353630302021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D706C616365686F';
wwv_flow_api.g_varchar2_table(360) := '6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D';
wwv_flow_api.g_varchar2_table(361) := '6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D736561';
wwv_flow_api.g_varchar2_table(362) := '7263684669656C643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E6861';
wwv_flow_api.g_varchar2_table(363) := '73446174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(364) := '72696768742D7261646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D746F702D6C6566742D7261';
wwv_flow_api.g_varchar2_table(365) := '646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(366) := '733A203270783B0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561646572202E742D427574';
wwv_flow_api.g_varchar2_table(367) := '746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(368) := '666666663B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E742D486561646572202E';
wwv_flow_api.g_varchar2_table(369) := '742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F';
wwv_flow_api.g_varchar2_table(370) := '6375732C0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202366663761306420696E7365742C2030203020';
wwv_flow_api.g_varchar2_table(371) := '317078203270782072676261283235352C203132322C2031332C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233733333430303B0A7D0A2E742D486561';
wwv_flow_api.g_varchar2_table(372) := '646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D73';
wwv_flow_api.g_varchar2_table(373) := '75624D656E75436F6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0A2020626F72';
wwv_flow_api.g_varchar2_table(374) := '6465722D746F702D77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0A7D0A2E742D4865';
wwv_flow_api.g_varchar2_table(375) := '616465722D6E61762D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A2020636F';
wwv_flow_api.g_varchar2_table(376) := '6C6F723A20233430316430303B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430316430303B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261646975733A203470783B';
wwv_flow_api.g_varchar2_table(377) := '0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(378) := '73706172656E743B0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A';
wwv_flow_api.g_varchar2_table(379) := '7D0A0A2E612D495252207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(380) := '723A20233733373337333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A2020626F726465722D74';
wwv_flow_api.g_varchar2_table(381) := '6F702D636F6C6F723A20236635663566353B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(382) := '612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(383) := '6861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236666666666662C202366636663';
wwv_flow_api.g_varchar2_table(384) := '6663293B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E612D5265706F';
wwv_flow_api.g_varchar2_table(385) := '72742D70657263656E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F726465722D746F702D726967';
wwv_flow_api.g_varchar2_table(386) := '68742D7261646975733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(387) := '732D746F7072696768743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F702D72696768742D7261';
wwv_flow_api.g_varchar2_table(388) := '646975733A203070782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C652C0A2E612D4952522D63';
wwv_flow_api.g_varchar2_table(389) := '68617274566965772C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A20236635663566353B0A7D0A2E';
wwv_flow_api.g_varchar2_table(390) := '612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661';
wwv_flow_api.g_varchar2_table(391) := '666166613B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0A7D0A2E612D4952522D6865616465723A686F76657220';
wwv_flow_api.g_varchar2_table(392) := '7B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233733333430303B0A2020626F726465722D626F74';
wwv_flow_api.g_varchar2_table(393) := '746F6D3A206E6F6E653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20236666646362663B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F';
wwv_flow_api.g_varchar2_table(394) := '7274207B0A2020636F6C6F723A20236666646362663B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D7461626C65207472207464207B0A';
wwv_flow_api.g_varchar2_table(395) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174653B0A7D0A2E612D4952';
wwv_flow_api.g_varchar2_table(396) := '522D7461626C652074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(397) := '75733A203270783B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C696420233733333430303B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(398) := '6F756E643A20236136346230303B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D3170782030202337333334303020696E736574';
wwv_flow_api.g_varchar2_table(399) := '3B0A7D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F7274';
wwv_flow_api.g_varchar2_table(400) := '5769646765742D7365617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233733333430303B0A7D0A2E612D4952522D736F72745769646765742D726F773A68';
wwv_flow_api.g_varchar2_table(401) := '6F766572207B0A20206261636B67726F756E642D636F6C6F723A20233733333430303B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D4952522D627574746F6E';
wwv_flow_api.g_varchar2_table(402) := '2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F6C6F723A202337333334';
wwv_flow_api.g_varchar2_table(403) := '30303B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A61';
wwv_flow_api.g_varchar2_table(404) := '63746976653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236136346230303B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F74746F6D3A2031707820';
wwv_flow_api.g_varchar2_table(405) := '736F6C696420233733333430303B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(406) := '65723A206E6F6E653B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0A7D0A2E';
wwv_flow_api.g_varchar2_table(407) := '612D4952522D736F72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265';
wwv_flow_api.g_varchar2_table(408) := '666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A2030203020302032707820236266353630';
wwv_flow_api.g_varchar2_table(409) := '3020696E7365743B0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20236266353630303B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365';
wwv_flow_api.g_varchar2_table(410) := '742C202D32707820302030202362663536303020696E7365742C2032707820302030202362663536303020696E7365742C203020302032707820302072676261283139312C2038362C20302C20302E35293B0A7D0A2E612D4952522D73696E676C65526F';
wwv_flow_api.g_varchar2_table(411) := '772D6E616D652C0A2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D73696E676C65526F';
wwv_flow_api.g_varchar2_table(412) := '772D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(413) := '726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D726F773A';
wwv_flow_api.g_varchar2_table(414) := '686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A';
wwv_flow_api.g_varchar2_table(415) := '686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(416) := '6E642D636F6C6F723A20236666666666663B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D666874';
wwv_flow_api.g_varchar2_table(417) := '2D7468656164202E612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E742D4C696E6B734C6973742D';
wwv_flow_api.g_varchar2_table(418) := '6C696E6B207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A';
wwv_flow_api.g_varchar2_table(419) := '20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365743B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(420) := '742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20236439643964393B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C69';
wwv_flow_api.g_varchar2_table(421) := '6E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(422) := '742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(423) := '742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(424) := '4C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A2072676261283235352C20';
wwv_flow_api.g_varchar2_table(425) := '3235352C203235352C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A20';
wwv_flow_api.g_varchar2_table(426) := '20636F6C6F723A20236666666666663B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(427) := '6261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(428) := '3A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C';
wwv_flow_api.g_varchar2_table(429) := '20302C20302C20302E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A20236266353630303B0A7D';
wwv_flow_api.g_varchar2_table(430) := '0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A7D0A2E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(431) := '73742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E20';
wwv_flow_api.g_varchar2_table(432) := '7B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(433) := '73742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E74';
wwv_flow_api.g_varchar2_table(434) := '2D4C696E6B734C6973742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C696E6B734C6973742D2D616374';
wwv_flow_api.g_varchar2_table(435) := '696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233339333933393B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0A202062';
wwv_flow_api.g_varchar2_table(436) := '61636B67726F756E643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C6F67696E2D726567696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(437) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20236266353630303B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474';
wwv_flow_api.g_varchar2_table(438) := '683A20343830707829207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0A20207D0A';
wwv_flow_api.g_varchar2_table(439) := '7D0A0A2E742D4D656469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0A2020626F72';
wwv_flow_api.g_varchar2_table(440) := '6465722D72696768743A2031707820736F6C696420236439643964393B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20236230346630303B0A7D0A612E742D4D656469614C6973742D6974656D57726170';
wwv_flow_api.g_varchar2_table(441) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20236230346630303B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(442) := '773A20302030203020317078202362663536303020696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4D656469614C6973742D62616467652C0A2E742D4D6564';
wwv_flow_api.g_varchar2_table(443) := '69614C6973742D64657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469';
wwv_flow_api.g_varchar2_table(444) := '614C6973742D6974656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E612D4D65';
wwv_flow_api.g_varchar2_table(445) := '6E754261722D6C6162656C207B0A2020636F6C6F723A20236666656164393B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0A202064697370';
wwv_flow_api.g_varchar2_table(446) := '6C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C6566743A202D347078';
wwv_flow_api.g_varchar2_table(447) := '3B0A7D0A2E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233539323830303B0A2020626F726465722D72696768743A2031707820736F6C696420233863336630303B0A2020626F726465722D6C6566743A203170782073';
wwv_flow_api.g_varchar2_table(448) := '6F6C696420233863336630303B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(449) := '656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D';
wwv_flow_api.g_varchar2_table(450) := '656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D6974656D2E69732D64697361626C65';
wwv_flow_api.g_varchar2_table(451) := '64202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20234130413041303B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233863336630303B0A7D0A2E612D4D';
wwv_flow_api.g_varchar2_table(452) := '656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233863336630303B0A7D0A0A2E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A203270783B0A7D0A';
wwv_flow_api.g_varchar2_table(453) := '2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D636F6C6F723A2023646664';
wwv_flow_api.g_varchar2_table(454) := '6664663B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564';
wwv_flow_api.g_varchar2_table(455) := '207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E';
wwv_flow_api.g_varchar2_table(456) := '752D7375624D656E75436F6C207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D65';
wwv_flow_api.g_varchar2_table(457) := '6E752D616363656C207B0A2020636F6C6F723A20233739373937393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20';
wwv_flow_api.g_varchar2_table(458) := '206261636B67726F756E642D636F6C6F723A20233539323830303B0A2020636F6C6F723A20236666656164393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D';
wwv_flow_api.g_varchar2_table(459) := '656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(460) := '74656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E657220';
wwv_flow_api.g_varchar2_table(461) := '2E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(462) := '74656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236666656164393B0A7D0A2E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(463) := '20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283234382C203234382C203234382C20302E3935293B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(464) := '2D636F6C6F723A20236466646664663B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20747261';
wwv_flow_api.g_varchar2_table(465) := '6E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233539323830303B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(466) := '4261722D6C6162656C207B0A2020636F6C6F723A20233333333333333B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C20';
wwv_flow_api.g_varchar2_table(467) := '7B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C65';
wwv_flow_api.g_varchar2_table(468) := '66743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20236632663266323B0A2020626F726465722D72696768743A2031707820736F6C696420236439643964393B0A2020';
wwv_flow_api.g_varchar2_table(469) := '626F726465722D6C6566743A2031707820736F6C696420236439643964393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D6172';
wwv_flow_api.g_varchar2_table(470) := '67696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E754261722E752D';
wwv_flow_api.g_varchar2_table(471) := '72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E';
wwv_flow_api.g_varchar2_table(472) := '673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20234130413041303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(473) := '742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465';
wwv_flow_api.g_varchar2_table(474) := '64207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(475) := '4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(476) := '723A20236532653265323B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(477) := '6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D6469736162';
wwv_flow_api.g_varchar2_table(478) := '6C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(479) := '656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233763376337633B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(480) := '656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C';
wwv_flow_api.g_varchar2_table(481) := '6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(482) := '6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D';
wwv_flow_api.g_varchar2_table(483) := '2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(484) := '2D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A';
wwv_flow_api.g_varchar2_table(485) := '2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(486) := '67696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836312C2036312C2036312C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(487) := '6F756E642D636F6C6F723A2072676261283235322C203235322C203235322C20302E3935293B0A2020626F726465722D636F6C6F723A20236532653265323B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(488) := '2C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A202076657274696361';
wwv_flow_api.g_varchar2_table(489) := '6C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F';
wwv_flow_api.g_varchar2_table(490) := '63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236136346230302021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E75';
wwv_flow_api.g_varchar2_table(491) := '4261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(492) := '20236136346230302021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D486561646572202E612D4D656E75';
wwv_flow_api.g_varchar2_table(493) := '4261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A2020666F6E742D7765696768743A2062';
wwv_flow_api.g_varchar2_table(494) := '6F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E64656420';
wwv_flow_api.g_varchar2_table(495) := '7B0A20206261636B67726F756E642D636F6C6F723A20236136346230302021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B';
wwv_flow_api.g_varchar2_table(496) := '0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0A2020626F726465722D636F6C6F723A20236266353630303B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D';
wwv_flow_api.g_varchar2_table(497) := '656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D';
wwv_flow_api.g_varchar2_table(498) := '4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236632366430303B0A2020626F726465722D636F6C6F723A20236632366430303B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(499) := '66663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236666376130643B0A202062';
wwv_flow_api.g_varchar2_table(500) := '6F726465722D636F6C6F723A20236666376130643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E';
wwv_flow_api.g_varchar2_table(501) := '612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D486561646572202E612D4D656E75';
wwv_flow_api.g_varchar2_table(502) := '4261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666613936333B0A2020626F726465722D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(503) := '613936333B0A2020636F6C6F723A20233430316430303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A2023613634623030';
wwv_flow_api.g_varchar2_table(504) := '3B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E752D616363656C207B0A2020636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(505) := '2C203235352C203235352C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D6578';
wwv_flow_api.g_varchar2_table(506) := '70616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233863336630302021696D706F7274616E743B0A7D0A2E742D426F6479207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D426F6479202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(507) := '6C6162656C207B0A2020636F6C6F723A20233339333933393B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A';
wwv_flow_api.g_varchar2_table(508) := '7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023646664666466202169';
wwv_flow_api.g_varchar2_table(509) := '6D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375';
wwv_flow_api.g_varchar2_table(510) := '736564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C';
wwv_flow_api.g_varchar2_table(511) := '6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339333933392021696D706F7274';
wwv_flow_api.g_varchar2_table(512) := '616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D637572';
wwv_flow_api.g_varchar2_table(513) := '72656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D65';
wwv_flow_api.g_varchar2_table(514) := '6E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(515) := '2D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D426F6479202E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(516) := '656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236238623862383B0A2020626F726465722D636F6C6F723A20236238623862383B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(517) := '723A20233030303030303B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(518) := '663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E7543';
wwv_flow_api.g_varchar2_table(519) := '6F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020626F726465722D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D65';
wwv_flow_api.g_varchar2_table(520) := '6E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(521) := '6666666666663B0A2020636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A2023646664666466';
wwv_flow_api.g_varchar2_table(522) := '3B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612835372C2035372C';
wwv_flow_api.g_varchar2_table(523) := '2035372C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A2020';
wwv_flow_api.g_varchar2_table(524) := '6261636B67726F756E642D636F6C6F723A20236562656265622021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(525) := '426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(526) := '206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A2020766572746963616C2D61';
wwv_flow_api.g_varchar2_table(527) := '6C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F637573';
wwv_flow_api.g_varchar2_table(528) := '65642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(529) := '2D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(530) := '36653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D526567696F6E202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(531) := '2D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C64';
wwv_flow_api.g_varchar2_table(532) := '3B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20';
wwv_flow_api.g_varchar2_table(533) := '206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020';
wwv_flow_api.g_varchar2_table(534) := '636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D526567696F6E202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(535) := '2D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D73';
wwv_flow_api.g_varchar2_table(536) := '75624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A2020626F726465722D636F6C6F723A20236266626662663B0A2020636F6C6F723A20233030303030303B0A7D0A';
wwv_flow_api.g_varchar2_table(537) := '2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(538) := '636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E';
wwv_flow_api.g_varchar2_table(539) := '207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20233430343034303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(540) := '656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(541) := '2020636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(542) := '2D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836342C2036342C2036';
wwv_flow_api.g_varchar2_table(543) := '342C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A';
wwv_flow_api.g_varchar2_table(544) := '20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D';
wwv_flow_api.g_varchar2_table(545) := '0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F78';
wwv_flow_api.g_varchar2_table(546) := '2D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A2023613634623030';
wwv_flow_api.g_varchar2_table(547) := '3B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B';
wwv_flow_api.g_varchar2_table(548) := '67726F756E642D636F6C6F723A20233863336630302021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(549) := '236666666666663B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(550) := '7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233539323830303B0A2020626F726465722D77696474683A20303B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(551) := '2D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233863336630302021696D706F';
wwv_flow_api.g_varchar2_table(552) := '7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(553) := '752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236635656265322021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(554) := '656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D2061207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A0A2E742D50';
wwv_flow_api.g_varchar2_table(555) := '6F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236230346630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A68';
wwv_flow_api.g_varchar2_table(556) := '6F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0A202062';
wwv_flow_api.g_varchar2_table(557) := '61636B67726F756E642D636F6C6F723A20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D';
wwv_flow_api.g_varchar2_table(558) := '6C696E6B207B0A2020636F6C6F723A20236230346630303B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D616374696F6E73207B0A202062';
wwv_flow_api.g_varchar2_table(559) := '61636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D506F707570';
wwv_flow_api.g_varchar2_table(560) := '4C4F562D6C696E6B732061207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(561) := '742D506F7075704C4F562D6C696E6B7320612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D506F7075704C4F562D6C696E6B7320613A686F';
wwv_flow_api.g_varchar2_table(562) := '766572207B0A20206261636B67726F756E642D636F6C6F723A20236533363630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233739';
wwv_flow_api.g_varchar2_table(563) := '373937393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E617469';
wwv_flow_api.g_varchar2_table(564) := '6F6E207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0A';
wwv_flow_api.g_varchar2_table(565) := '2020636F6C6F723A20233830383038303B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A2020636F6C6F723A2023333933';
wwv_flow_api.g_varchar2_table(566) := '3933393B0A7D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F6C6F723A2023323032303230';
wwv_flow_api.g_varchar2_table(567) := '3B0A7D0A2E742D526567696F6E202E6669656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D686561646572207B0A2020';
wwv_flow_api.g_varchar2_table(568) := '6261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E';
wwv_flow_api.g_varchar2_table(569) := '742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(570) := '643A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B6564203E202E742D52656769';
wwv_flow_api.g_varchar2_table(571) := '6F6E2D686561646572207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(572) := '6F6C6F723A20236666666666663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F';
wwv_flow_api.g_varchar2_table(573) := '6E2D7469746C652C0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(574) := '656E7431203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(575) := '6F723A20236666326435353B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D74';
wwv_flow_api.g_varchar2_table(576) := '69746C652C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7431203E';
wwv_flow_api.g_varchar2_table(577) := '202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(578) := '6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(579) := '426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233333393566663B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(580) := '67696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(581) := '686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74322E742D';
wwv_flow_api.g_varchar2_table(582) := '526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D5265';
wwv_flow_api.g_varchar2_table(583) := '67696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B';
wwv_flow_api.g_varchar2_table(584) := '0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567';
wwv_flow_api.g_varchar2_table(585) := '696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D68';
wwv_flow_api.g_varchar2_table(586) := '6561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020';
wwv_flow_api.g_varchar2_table(587) := '636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D';
wwv_flow_api.g_varchar2_table(588) := '526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(589) := '34203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D5265';
wwv_flow_api.g_varchar2_table(590) := '67696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F';
wwv_flow_api.g_varchar2_table(591) := '72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D6865616465722C';
wwv_flow_api.g_varchar2_table(592) := '0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(593) := '74746F6D3A2031707820736F6C696420236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435';
wwv_flow_api.g_varchar2_table(594) := '2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574';
wwv_flow_api.g_varchar2_table(595) := '746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(596) := '66663B0A7D0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203020';
wwv_flow_api.g_varchar2_table(597) := '21696D706F7274616E743B0A7D0A2E742D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F723A20233430343034303B0A7D';
wwv_flow_api.g_varchar2_table(598) := '0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D7363726F6C6C426F6479203E202E74';
wwv_flow_api.g_varchar2_table(599) := '2D526567696F6E2D626F647957726170203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2072676261283235352C203235352C203235352C2030';
wwv_flow_api.g_varchar2_table(600) := '29292C206C696E6561722D6772616469656E742872676261283235352C203235352C203235352C2030292C20236666666666662037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235';
wwv_flow_api.g_varchar2_table(601) := '292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(602) := '6F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D52';
wwv_flow_api.g_varchar2_table(603) := '6567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(604) := '706172656E743B0A7D0A2E742D526567696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(605) := '3A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D6361726F7573656C20';
wwv_flow_api.g_varchar2_table(606) := '2E617065782D7264732D627574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(607) := '2C20302C20302C20302E3235293B0A2020636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(608) := '6128302C20302C20302C20302E35293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E';
wwv_flow_api.g_varchar2_table(609) := '3A6163746976653A666F637573207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D6E6578742D726567696F6E';
wwv_flow_api.g_varchar2_table(610) := '207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(611) := '30203270782032707820303B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E';
wwv_flow_api.g_varchar2_table(612) := '6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264';
wwv_flow_api.g_varchar2_table(613) := '732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D52656769';
wwv_flow_api.g_varchar2_table(614) := '6F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D5265706F72742D63656C6C2C';
wwv_flow_api.g_varchar2_table(615) := '0A2E742D5265706F72742D636F6C48656164207B0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D';
wwv_flow_api.g_varchar2_table(616) := '7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A2020626F726465722D726967';
wwv_flow_api.g_varchar2_table(617) := '68743A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(618) := '236536653665363B0A7D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D626F74746F6D3A20317078';
wwv_flow_api.g_varchar2_table(619) := '20736F6C696420236536653665363B0A7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D2D726F774869';
wwv_flow_api.g_varchar2_table(620) := '67686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F72';
wwv_flow_api.g_varchar2_table(621) := '74616E743B0A7D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(622) := '636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B';
wwv_flow_api.g_varchar2_table(623) := '0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A202070616464696E672D626F74746F6D3A20323470783B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(624) := '536F6369616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74746F6D3A203870783B0A2020746578742D616C69676E';
wwv_flow_api.g_varchar2_table(625) := '3A2063656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078';
wwv_flow_api.g_varchar2_table(626) := '293B0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F2D7472616E73666F726D3A207472616E736C61746559';
wwv_flow_api.g_varchar2_table(627) := '282D387078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0A7D0A2E742D536F6369';
wwv_flow_api.g_varchar2_table(628) := '616C466F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A2020746578742D616C69676E3A2063656E7465723B';
wwv_flow_api.g_varchar2_table(629) := '0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A20626C6F636B3B0A20206D617267696E3A2030206175746F3B0A20';
wwv_flow_api.g_varchar2_table(630) := '20636F6C6F723A20726762612835372C2035372C2035372C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A20323870783B0A202077696474683A20333270783B0A20206865696768743A';
wwv_flow_api.g_varchar2_table(631) := '20333270783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0A202077696474683A20333270783B0A2020686569';
wwv_flow_api.g_varchar2_table(632) := '6768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A2020666F6E742D73697A653A20333270783B0A7D0A2E742D536F6369616C46';
wwv_flow_api.g_varchar2_table(633) := '6F6F74657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20236230346630303B0A7D0A2E742D536561726368526573756C74732D64657363207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(634) := '3A20233339333933393B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233663366336633B0A7D';
wwv_flow_api.g_varchar2_table(635) := '0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(636) := '33373337333B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(637) := '233430343034303B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D5374617475734C6973742D617474722C0A2E742D5374617475734C69';
wwv_flow_api.g_varchar2_table(638) := '73742D7465787444657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D6461746573';
wwv_flow_api.g_varchar2_table(639) := '202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D5374617475';
wwv_flow_api.g_varchar2_table(640) := '734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020626F726465722D7261646975733A2032707820327078203020303B';
wwv_flow_api.g_varchar2_table(641) := '0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A2020';
wwv_flow_api.g_varchar2_table(642) := '636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0A2020626163';
wwv_flow_api.g_varchar2_table(643) := '6B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0A';
wwv_flow_api.g_varchar2_table(644) := '2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236666336233';
wwv_flow_api.g_varchar2_table(645) := '303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(646) := '63643936343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(647) := '6C6F723A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(648) := '642D636F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(649) := '3A20234130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0A';
wwv_flow_api.g_varchar2_table(650) := '2020626F782D736861646F773A2030202D3270782030202366663838323620696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0A2E617065782D72647320613A666F637573207B0A2020626F';
wwv_flow_api.g_varchar2_table(651) := '782D736861646F773A20302030203020327078202366663838323620696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236638663866382C202366346634663429';
wwv_flow_api.g_varchar2_table(652) := '3B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D';
wwv_flow_api.g_varchar2_table(653) := '2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(654) := '6F6E202E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F6479202E742D546162';
wwv_flow_api.g_varchar2_table(655) := '732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A202332303230';
wwv_flow_api.g_varchar2_table(656) := '32303B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D546162732D';
wwv_flow_api.g_varchar2_table(657) := '6C696E6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F';
wwv_flow_api.g_varchar2_table(658) := '766572207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A2020626F726465722D636F6C6F723A20233436393646433B0A7D0A2E742D54';
wwv_flow_api.g_varchar2_table(659) := '6162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(660) := '64202E742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B';
wwv_flow_api.g_varchar2_table(661) := '0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C';
wwv_flow_api.g_varchar2_table(662) := '696E6B2C0A2E617065782D7264732061207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0A2E617065782D72647320613A686F766572207B0A2020626163';
wwv_flow_api.g_varchar2_table(663) := '6B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0A2E617065782D72647320613A616374697665207B0A202062';
wwv_flow_api.g_varchar2_table(664) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F6479202E617065782D7264732061207B0A';
wwv_flow_api.g_varchar2_table(665) := '2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D7469746C65202E617065782D72647320612C0A2E742D426F64792D69';
wwv_flow_api.g_varchar2_table(666) := '6E666F202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E742D546162732D2D';
wwv_flow_api.g_varchar2_table(667) := '73696D706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E617065782D7264732D686F7665722E6C6566742061207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(668) := '6E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023666664636266203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A20206261636B67726F756E643A206C696E656172';
wwv_flow_api.g_varchar2_table(669) := '2D6772616469656E7428746F2072696768742C2023666664636266203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065782D7264732D686F7665722E72696768742061207B0A20206261636B';
wwv_flow_api.g_varchar2_table(670) := '67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236666646362662030252C2072676261283235352C203235352C203235352C2030292031252C202366666463626620353025293B0A20200A20206261636B';
wwv_flow_api.g_varchar2_table(671) := '67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236666646362662030252C2072676261283235352C203235352C203235352C2030292031252C202366666463626620353025293B0A20200A7D0A0A2E612D54616743';
wwv_flow_api.g_varchar2_table(672) := '6C6F75642D6C696E6B207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A20236661666166613B0A20207472616E736974696F6E3A206261636B';
wwv_flow_api.g_varchar2_table(673) := '67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C6F723A20236162346430303B0A7D0A2E612D546167436C6F75642D6C';
wwv_flow_api.g_varchar2_table(674) := '696E6B207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(675) := '2D636F6C6F723A20236266353630303B0A2020626F726465722D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020327078202362663536303020696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(676) := '0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D546167436C6F75642D636F756E74207B0A2020636F6C6F723A20233636363636363B0A2020666F6E742D77656967';
wwv_flow_api.g_varchar2_table(677) := '68743A203230303B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233733333430303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(678) := '6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202365386538653820696E7365743B0A7D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(679) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(680) := '772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A2020';
wwv_flow_api.g_varchar2_table(681) := '6261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E';
wwv_flow_api.g_varchar2_table(682) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(683) := '704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D68';
wwv_flow_api.g_varchar2_table(684) := '6F766572207B0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(685) := '772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67';
wwv_flow_api.g_varchar2_table(686) := '676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F76';
wwv_flow_api.g_varchar2_table(687) := '6572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C';
wwv_flow_api.g_varchar2_table(688) := '653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(689) := '2D686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A20';
wwv_flow_api.g_varchar2_table(690) := '20636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D526567696F6E202E612D547265655669';
wwv_flow_api.g_varchar2_table(691) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3935293B0A7D0A2E742D526567696F6E202E612D54726565';
wwv_flow_api.g_varchar2_table(692) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(693) := '65772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E61';
wwv_flow_api.g_varchar2_table(694) := '2D49636F6E2C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(695) := '3430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(696) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(697) := '566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B';
wwv_flow_api.g_varchar2_table(698) := '0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C';
wwv_flow_api.g_varchar2_table(699) := '2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F';
wwv_flow_api.g_varchar2_table(700) := '7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B';
wwv_flow_api.g_varchar2_table(701) := '0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A2030203020302031707820236433356630';
wwv_flow_api.g_varchar2_table(702) := '3020696E7365743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(703) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E6973';
wwv_flow_api.g_varchar2_table(704) := '2D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236235353130303B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(705) := '54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F77';
wwv_flow_api.g_varchar2_table(706) := '2C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236136346230303B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(707) := '6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236334353830302021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D547265';
wwv_flow_api.g_varchar2_table(708) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(709) := '4C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(710) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(711) := '746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(712) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(713) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666663866323B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(714) := '2E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(715) := '3A20236666663866323B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D547265654E6176202E612D54';
wwv_flow_api.g_varchar2_table(716) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(717) := '6C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(718) := '2D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C20';
wwv_flow_api.g_varchar2_table(719) := '7B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(720) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(721) := '202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(722) := '54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203234382C203234322C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(723) := '65566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666663866322021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(724) := '772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C6520';
wwv_flow_api.g_varchar2_table(725) := '2E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E61';
wwv_flow_api.g_varchar2_table(726) := '2D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74';
wwv_flow_api.g_varchar2_table(727) := '207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D4469616C6F672D2D77697A617264207B0A2020626F726465723A20236536653665363B0A7D0A2E742D57697A617264207B0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(728) := '666666663B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C20';
wwv_flow_api.g_varchar2_table(729) := '7B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666';
wwv_flow_api.g_varchar2_table(730) := '666666203430252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D6772616469656E742872676261283235352C203235352C203235352C2030292C20236666666666662036302529203020313030252C206C696E6561';
wwv_flow_api.g_varchar2_table(731) := '722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(732) := '302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D526567696F6E207B0A20206261636B67726F756E643A202366666666';
wwv_flow_api.g_varchar2_table(733) := '66663B0A7D0A2E742D57697A617264207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166';
wwv_flow_api.g_varchar2_table(734) := '613B0A2020626F726465722D636F6C6F723A20236564656465643B0A7D0A2E742D57697A61726453746570732D777261703A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D57697A6172645374';
wwv_flow_api.g_varchar2_table(735) := '6570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0A7D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57';
wwv_flow_api.g_varchar2_table(736) := '697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57';
wwv_flow_api.g_varchar2_table(737) := '697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A7D0A2E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D57697A';
wwv_flow_api.g_varchar2_table(738) := '61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65';
wwv_flow_api.g_varchar2_table(739) := '626172207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A';
wwv_flow_api.g_varchar2_table(740) := '7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B';
wwv_flow_api.g_varchar2_table(741) := '0A2020626F726465722D7261646975733A20313030253B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0A7D0A0A626F';
wwv_flow_api.g_varchar2_table(742) := '6479202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A626F';
wwv_flow_api.g_varchar2_table(743) := '6479202E75692D7769646765742D636F6E74656E742061207B0A2020636F6C6F723A20236230346630303B0A7D0A626F6479202E75692D7769646765742D686561646572207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261';
wwv_flow_api.g_varchar2_table(744) := '636B67726F756E642D636F6C6F723A20236663666366633B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D7769646765742D6865616465722061207B0A2020636F6C6F723A20233364336433643B0A7D0A0A626F6479202E75';
wwv_flow_api.g_varchar2_table(745) := '692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(746) := '207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D64656661756C7420612C0A626F6479202E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(747) := '20613A6C696E6B2C0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0A626F6479202E75692D73746174652D61637469766520612C0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0A626F';
wwv_flow_api.g_varchar2_table(748) := '6479202E75692D73746174652D61637469766520613A76697369746564207B0A2020636F6C6F723A20236230346630303B0A7D0A626F6479202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75';
wwv_flow_api.g_varchar2_table(749) := '692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833';
wwv_flow_api.g_varchar2_table(750) := '383B0A7D0A626F6479202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D686561646572202E75692D7374617465';
wwv_flow_api.g_varchar2_table(751) := '2D666F637573207B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365742C2030203020317078203270782072676261283139312C2038362C20302C20302E3235292021696D706F7274616E743B0A2020626163';
wwv_flow_api.g_varchar2_table(752) := '6B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F63';
wwv_flow_api.g_varchar2_table(753) := '7573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365742C2030203020317078203270782072676261283139312C2038362C20302C20302E3235292021696D70';
wwv_flow_api.g_varchar2_table(754) := '6F7274616E743B0A7D0A626F6479202E75692D73746174652D686F76657220612C0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(755) := '692D73746174652D686F76657220613A766973697465642C0A626F6479202E75692D73746174652D666F63757320612C0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0A626F6479202E75692D73746174652D666F63757320';
wwv_flow_api.g_varchar2_table(756) := '613A6C696E6B2C0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0A2020636F6C6F723A20236230346630303B0A7D0A626F6479202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(757) := '636F6E74656E74202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A202063';
wwv_flow_api.g_varchar2_table(758) := '6F6C6F723A20233338333833383B0A7D0A0A626F6479202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769';
wwv_flow_api.g_varchar2_table(759) := '646765742D686561646572202E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D6869';
wwv_flow_api.g_varchar2_table(760) := '67686C6967687420612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874';
wwv_flow_api.g_varchar2_table(761) := '2061207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0A626F6479202E75692D776964';
wwv_flow_api.g_varchar2_table(762) := '6765742D686561646572202E75692D73746174652D6572726F72207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F722061';
wwv_flow_api.g_varchar2_table(763) := '2C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(764) := '656165393B0A7D0A626F6479202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D686561';
wwv_flow_api.g_varchar2_table(765) := '646572202E75692D73746174652D6572726F722D74657874207B0A2020636F6C6F723A20236539306330303B0A7D0A0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0A626F6479202E';
wwv_flow_api.g_varchar2_table(766) := '75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(767) := '646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D7374';
wwv_flow_api.g_varchar2_table(768) := '6174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A626F6479202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(769) := '6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C';
wwv_flow_api.g_varchar2_table(770) := '742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236266353630302021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B657220746420';
wwv_flow_api.g_varchar2_table(771) := '7370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(772) := '61636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(773) := '646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365742C20302030';
wwv_flow_api.g_varchar2_table(774) := '20317078203270782072676261283139312C2038362C20302C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D';
wwv_flow_api.g_varchar2_table(775) := '686967686C696768742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265';
wwv_flow_api.g_varchar2_table(776) := '623B0A7D0A626F6479202E75692D646174657069636B6572207468207B0A2020636F6C6F723A20233830383038303B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(777) := '692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0A626F6479202E75692D646174';
wwv_flow_api.g_varchar2_table(778) := '657069636B6572202E75692D646174657069636B65722D70726576207B0A2020626F726465722D7261646975733A203270783B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(779) := '726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(780) := '6F723A20233364336433643B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0A2E742D4469616C6F672D70616765207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A202063';
wwv_flow_api.g_varchar2_table(781) := '6F6C6F723A20233430343034303B0A7D0A0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0A2E742D44';
wwv_flow_api.g_varchar2_table(782) := '69616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A';
wwv_flow_api.g_varchar2_table(783) := '2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D636F726E65722D616C6C207B0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(784) := '61646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D72616469';
wwv_flow_api.g_varchar2_table(785) := '75733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(786) := '733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261';
wwv_flow_api.g_varchar2_table(787) := '646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D726967';
wwv_flow_api.g_varchar2_table(788) := '68742D7261646975733A203270783B0A7D0A0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E6572';
wwv_flow_api.g_varchar2_table(789) := '2D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A';
wwv_flow_api.g_varchar2_table(790) := '7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0A202062';
wwv_flow_api.g_varchar2_table(791) := '6F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F64';
wwv_flow_api.g_varchar2_table(792) := '79202E75692D627574746F6E2E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F';
wwv_flow_api.g_varchar2_table(793) := '6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A';
wwv_flow_api.g_varchar2_table(794) := '2E61635F726573756C7473207B0A2020626F726465723A2031707820736F6C696420236439643964393B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E61635F6C6F6164';
wwv_flow_api.g_varchar2_table(795) := '696E67207B0A20206261636B67726F756E643A20236666666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C6F6164696E6731367831362E67696627292072696768742063656E746572206E6F2D72657065';
wwv_flow_api.g_varchar2_table(796) := '61743B0A7D0A2E61635F6F6464207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E61635F6F766572207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(797) := '20236666666666663B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469';
wwv_flow_api.g_varchar2_table(798) := '746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578742C0A626F6479202E612D44334261724368617274202E612D44';
wwv_flow_api.g_varchar2_table(799) := '334C696E6543686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E';
wwv_flow_api.g_varchar2_table(800) := '612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178697320706174682C0A626F6479202E612D44334261724368';
wwv_flow_api.g_varchar2_table(801) := '617274202E612D44334C696E6543686172742D617869732070617468207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(802) := '66696C6C3A20233430343034303B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B';
wwv_flow_api.g_varchar2_table(803) := '0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61';
wwv_flow_api.g_varchar2_table(804) := '7869732070617468207B0A20207374726F6B653A20236363636363633B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A';
wwv_flow_api.g_varchar2_table(805) := '7D0A626F6479202E612D4433546F6F6C746970207B0A20206261636B67726F756E642D636F6C6F723A20233830383038303B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A626F6479202E612D4433546F6F6C7469702D';
wwv_flow_api.g_varchar2_table(806) := '636F6E74656E74207B0A2020626F726465722D746F703A20233939393939393B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0A2020626F726465';
wwv_flow_api.g_varchar2_table(807) := '722D77696474683A20303B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2C0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D4433436861';
wwv_flow_api.g_varchar2_table(808) := '72744C6567656E642D6C61796F7574207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D77696474683A20302021696D706F7274616E743B0A7D0A626F6479202E612D443343686172744C65';
wwv_flow_api.g_varchar2_table(809) := '67656E642D6974656D2D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D44334368617274';
wwv_flow_api.g_varchar2_table(810) := '4C6567656E642D6974656D2D636F6C6F72207B0A2020626F726465722D7261646975733A20313030253B0A2020626F726465722D72696768742D77696474683A20303B0A7D0A2E742D426F6479207B0A20200A20200A20200A7D0A2E742D426F6479202E';
wwv_flow_api.g_varchar2_table(811) := '612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236466646664663B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(812) := '79202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(813) := '2E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E';
wwv_flow_api.g_varchar2_table(814) := '6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E';
wwv_flow_api.g_varchar2_table(815) := '6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A202062';
wwv_flow_api.g_varchar2_table(816) := '61636B67726F756E642D636F6C6F723A20236633663366333B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236565656565653B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(817) := '6E207B0A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236536653665363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(818) := '642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B20';
wwv_flow_api.g_varchar2_table(819) := '7B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236639663966393B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567';
wwv_flow_api.g_varchar2_table(820) := '696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(821) := '67696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(822) := '526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B';
wwv_flow_api.g_varchar2_table(823) := '0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F64792D616374696F6E73207B0A20200A20200A20200A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0A2020626F726465723A20';
wwv_flow_api.g_varchar2_table(824) := '31707820736F6C696420236432643264323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D74';
wwv_flow_api.g_varchar2_table(825) := '69746C65207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D426F64792D616374696F6E';
wwv_flow_api.g_varchar2_table(826) := '73202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236535653565353B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F';
wwv_flow_api.g_varchar2_table(827) := '646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(828) := '792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D69';
wwv_flow_api.g_varchar2_table(829) := '6E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A2020626163';
wwv_flow_api.g_varchar2_table(830) := '6B67726F756E642D636F6C6F723A20236531653165313B0A7D0A2E742D426F64792D696E666F207B0A20200A20200A20200A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C6964202366';
wwv_flow_api.g_varchar2_table(831) := '66633038633B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666646362663B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(832) := '20233230323032303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0A2020';
wwv_flow_api.g_varchar2_table(833) := '626F726465722D636F6C6F723A20236666643562323B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A2020';
wwv_flow_api.g_varchar2_table(834) := '6261636B67726F756E642D636F6C6F723A20236266353630303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465';
wwv_flow_api.g_varchar2_table(835) := '207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(836) := '726F756E642D636F6C6F723A20236666643662353B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236666643161623B0A7D0A0A2E742D426F64';
wwv_flow_api.g_varchar2_table(837) := '79202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A202063';
wwv_flow_api.g_varchar2_table(838) := '6F6C6F723A20233230323032303B0A7D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0A2E742D427574746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C';
wwv_flow_api.g_varchar2_table(839) := '65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(840) := '2D736861646F773A20302030203020317078202338633366303020696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C';
wwv_flow_api.g_varchar2_table(841) := '6973742D74726967676572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202362663536303020696E7365743B0A2020636F6C6F723A20236266353630303B0A';
wwv_flow_api.g_varchar2_table(842) := '7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(843) := '6F6C6F723A20233863336630303B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202338633366303020696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973';
wwv_flow_api.g_varchar2_table(844) := '742D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B0A2020636F6C6F723A20726762612836342C';
wwv_flow_api.g_varchar2_table(845) := '2036342C2036342C20302E35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C697374';
wwv_flow_api.g_varchar2_table(846) := '2D74726967676572207B0A20206261636B67726F756E643A20236666666666663B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269';
wwv_flow_api.g_varchar2_table(847) := '676765723A686F766572207B0A2020636F6C6F723A20233863336630303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A2020636F6C6F723A20233863336630303B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(848) := '79202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74';
wwv_flow_api.g_varchar2_table(849) := '656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20233539323830303B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D';
wwv_flow_api.g_varchar2_table(850) := '6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(851) := '20236666383832363B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E612D44657461696C6564436F6E7465';
wwv_flow_api.g_varchar2_table(852) := '6E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(853) := '233539323830303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166';
wwv_flow_api.g_varchar2_table(854) := '746572207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C';
wwv_flow_api.g_varchar2_table(855) := '746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E';
wwv_flow_api.g_varchar2_table(856) := '74656E742D746F6F6C746970207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(857) := '202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F7264';
wwv_flow_api.g_varchar2_table(858) := '65722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0A2020626F';
wwv_flow_api.g_varchar2_table(859) := '726465722D636F6C6F723A2023353932383030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(860) := '6F6C6F723A2023353932383030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(861) := '6F6C6F723A2023656165616561207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0A2020626F726465722D636F6C6F723A202335';
wwv_flow_api.g_varchar2_table(862) := '3932383030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0A2020626F726465722D636F6C6F723A202335393238303020747261';
wwv_flow_api.g_varchar2_table(863) := '6E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E7420236666666666';
wwv_flow_api.g_varchar2_table(864) := '66207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0A2020626F726465722D636F6C6F723A207472';
wwv_flow_api.g_varchar2_table(865) := '616E73706172656E742023353932383030207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0A';
wwv_flow_api.g_varchar2_table(866) := '2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E';
wwv_flow_api.g_varchar2_table(867) := '742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420233539323830303B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(868) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A202366663264';
wwv_flow_api.g_varchar2_table(869) := '35353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(870) := '66666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(871) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(872) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(873) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(874) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030';
wwv_flow_api.g_varchar2_table(875) := '2030202333333935666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B';
wwv_flow_api.g_varchar2_table(876) := '0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(877) := '2D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(878) := '6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(879) := '2D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(880) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A626F';
wwv_flow_api.g_varchar2_table(881) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(882) := '72207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(883) := '654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(884) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(885) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320';
wwv_flow_api.g_varchar2_table(886) := '696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(887) := '6E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920';
wwv_flow_api.g_varchar2_table(888) := '61207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(889) := '362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(890) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(891) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(892) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(893) := '6861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(894) := '6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(895) := '67654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(896) := '42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A626F';
wwv_flow_api.g_varchar2_table(897) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(898) := '6666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(899) := '3A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467';
wwv_flow_api.g_varchar2_table(900) := '654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(901) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(902) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(903) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(904) := '202D38707820302030202338313766653020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(905) := '642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(906) := '6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(907) := '6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(908) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A202333333935';
wwv_flow_api.g_varchar2_table(909) := '66663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(910) := '6666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(911) := '6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(912) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(913) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(914) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D';
wwv_flow_api.g_varchar2_table(915) := '38707820302030202366663935303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(916) := '20313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(917) := '656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(918) := '742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(919) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A2023613561356139';
wwv_flow_api.g_varchar2_table(920) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(921) := '666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(922) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(923) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(924) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(925) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(926) := '7820302030202333316139646220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(927) := '3729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(928) := '3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(929) := '6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(930) := '67654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A';
wwv_flow_api.g_varchar2_table(931) := '7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A202333353631';
wwv_flow_api.g_varchar2_table(932) := '37353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(933) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(934) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_api.g_varchar2_table(935) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(936) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(937) := '302030202366663932386320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029';
wwv_flow_api.g_varchar2_table(938) := '207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(939) := '74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(940) := '656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(941) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A';
wwv_flow_api.g_varchar2_table(942) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A2023653665366536';
wwv_flow_api.g_varchar2_table(943) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(944) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(945) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(946) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(947) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020';
wwv_flow_api.g_varchar2_table(948) := '30202331613837666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B';
wwv_flow_api.g_varchar2_table(949) := '0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(950) := '2D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(951) := '3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(952) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F';
wwv_flow_api.g_varchar2_table(953) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A';
wwv_flow_api.g_varchar2_table(954) := '7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(955) := '3A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(956) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(957) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_api.g_varchar2_table(958) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020';
wwv_flow_api.g_varchar2_table(959) := '2339613961396420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20';
wwv_flow_api.g_varchar2_table(960) := '206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(961) := '68696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(962) := '74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(963) := '2D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(964) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A';
wwv_flow_api.g_varchar2_table(965) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(966) := '6F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(967) := '616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(968) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(969) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337';
wwv_flow_api.g_varchar2_table(970) := '636337653920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A202062';
wwv_flow_api.g_varchar2_table(971) := '61636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(972) := '6C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(973) := '2D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(974) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(975) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F';
wwv_flow_api.g_varchar2_table(976) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(977) := '6572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(978) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666313434303B0A2020636F6C6F723A20236666313434303B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(979) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(980) := '42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920';
wwv_flow_api.g_varchar2_table(981) := '2E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(982) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030366565363B';
wwv_flow_api.g_varchar2_table(983) := '0A2020636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(984) := '203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(985) := '654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(986) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(987) := '0A2020626F726465722D636F6C6F723A20236536383630303B0A2020636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(988) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(989) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(990) := '756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(991) := '28203429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233337643535323B0A2020636F6C6F723A20233337643535323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(992) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(993) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0A2020';
wwv_flow_api.g_varchar2_table(994) := '636F6C6F723A20233037316630623B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(995) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233831383138373B0A2020636F6C6F723A20233831383138373B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(996) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(997) := '42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920';
wwv_flow_api.g_varchar2_table(998) := '2E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(999) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233234396564323B';
wwv_flow_api.g_varchar2_table(1000) := '0A2020636F6C6F723A20233234396564323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1001) := '203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1002) := '654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(1003) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(1004) := '0A2020626F726465722D636F6C6F723A20236536623830303B0A2020636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1005) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1006) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1007) := '756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1008) := '28203829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431633066393B0A2020636F6C6F723A20233431633066393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1009) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1010) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0A2020';
wwv_flow_api.g_varchar2_table(1011) := '636F6C6F723A20233032333935323B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1012) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666323331373B0A2020636F6C6F723A20236666323331373B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(1013) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(1014) := '42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920';
wwv_flow_api.g_varchar2_table(1015) := '2E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1016) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A2023343434316431';
wwv_flow_api.g_varchar2_table(1017) := '3B0A2020636F6C6F723A20233434343164313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1018) := '2820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1019) := '6467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A';
wwv_flow_api.g_varchar2_table(1020) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1021) := '7565207B0A2020626F726465722D636F6C6F723A20236666336536323B0A2020636F6C6F723A20236666336536323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1022) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1023) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A202062';
wwv_flow_api.g_varchar2_table(1024) := '61636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1025) := '2D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233139383766663B0A2020636F6C6F723A20233139383766663B0A7D0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1026) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A';
wwv_flow_api.g_varchar2_table(1027) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1028) := '75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1029) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666613031393B0A2020636F6C6F723A202366666130';
wwv_flow_api.g_varchar2_table(1030) := '31393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1031) := '73742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1032) := '2D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1033) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1034) := '6C6F723A20233562646337313B0A2020636F6C6F723A20233562646337313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1035) := '656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1036) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233338346333633B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1037) := '20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42';
wwv_flow_api.g_varchar2_table(1038) := '616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233938393839633B0A2020636F6C6F723A20233938393839633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1039) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1040) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1041) := '236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1042) := '6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233437623264663B0A2020636F6C6F723A20233437623264663B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1043) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D4261646765';
wwv_flow_api.g_varchar2_table(1044) := '4C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42';
wwv_flow_api.g_varchar2_table(1045) := '616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1046) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666643131393B0A2020';
wwv_flow_api.g_varchar2_table(1047) := '636F6C6F723A20236666643131393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137';
wwv_flow_api.g_varchar2_table(1048) := '29202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1049) := '6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(1050) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(1051) := '0A2020626F726465722D636F6C6F723A20233632636266613B0A2020636F6C6F723A20233632636266613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1052) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1053) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233335363137353B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1054) := '726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1055) := '6C642820313929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666346134303B0A2020636F6C6F723A20236666346134303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1056) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479';
wwv_flow_api.g_varchar2_table(1057) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061';
wwv_flow_api.g_varchar2_table(1058) := '207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1059) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233635363364393B0A2020636F6C6F723A20233635363364393B0A';
wwv_flow_api.g_varchar2_table(1060) := '7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(1061) := '726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1062) := '6C642820323029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1063) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1064) := '20236462316133663B0A2020636F6C6F723A20236462316133663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1065) := '74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1066) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(1067) := '323934643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D4261646765';
wwv_flow_api.g_varchar2_table(1068) := '4C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030363263633B0A2020636F6C6F723A20233030363263633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1069) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1070) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1071) := '3665363B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1072) := '6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363373730303B0A2020636F6C6F723A20236363373730303B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1073) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1074) := '2D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D4261646765';
wwv_flow_api.g_varchar2_table(1075) := '4C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1076) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233361623434663B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1077) := '723A20233361623434663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E74';
wwv_flow_api.g_varchar2_table(1078) := '2D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1079) := '6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233036316330613B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1080) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0A202062';
wwv_flow_api.g_varchar2_table(1081) := '6F726465722D636F6C6F723A20233733373337373B0A2020636F6C6F723A20233733373337373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1082) := '654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1083) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1084) := '642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1085) := '323629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233261383962313B0A2020636F6C6F723A20233261383962313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1086) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1087) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0A20';
wwv_flow_api.g_varchar2_table(1088) := '20636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1089) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363613330303B0A2020636F6C6F723A20236363613330303B0A7D0A626F';
wwv_flow_api.g_varchar2_table(1090) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D7772617020';
wwv_flow_api.g_varchar2_table(1091) := '2E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1092) := '323729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1093) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233362';
wwv_flow_api.g_varchar2_table(1094) := '616264643B0A2020636F6C6F723A20233362616264643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1095) := '68696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1096) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333434613B0A20206261636B67726F756E642D636F6C6F723A2023353162346531';
wwv_flow_api.g_varchar2_table(1097) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1098) := '2D76616C7565207B0A2020626F726465722D636F6C6F723A20236464323531623B0A2020636F6C6F723A20236464323531623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1099) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1100) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B';
wwv_flow_api.g_varchar2_table(1101) := '0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1102) := '3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431343062353B0A2020636F6C6F723A20233431343062353B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1103) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1104) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1105) := '2D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1106) := '2D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A20';
wwv_flow_api.g_varchar2_table(1107) := '20636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(1108) := '6F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1109) := '6F756E642D636F6C6F723A20233030376166663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1110) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030';
wwv_flow_api.g_varchar2_table(1111) := '202333333935666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A';
wwv_flow_api.g_varchar2_table(1112) := '7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1113) := '616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(1114) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1115) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1116) := '6C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1117) := '6467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1118) := '2D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1119) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1120) := '6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1121) := '723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1122) := '61646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1123) := '636F6C6F723A20236666636330303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1124) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023636361';
wwv_flow_api.g_varchar2_table(1125) := '33303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(1126) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1127) := '6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1128) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1129) := '6467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039';
wwv_flow_api.g_varchar2_table(1130) := '2920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1131) := '73742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1132) := '6C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1133) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1134) := '20313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1135) := '723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(1136) := '6861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1137) := '642D636F6C6F723A20233333393566663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1138) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020';
wwv_flow_api.g_varchar2_table(1139) := '2336366166666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A';
wwv_flow_api.g_varchar2_table(1140) := '7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1141) := '42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1142) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1143) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1144) := '2D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1145) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1146) := '656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D4261';
wwv_flow_api.g_varchar2_table(1147) := '6467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1148) := '6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920';
wwv_flow_api.g_varchar2_table(1149) := '61207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572';
wwv_flow_api.g_varchar2_table(1150) := '207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20';
wwv_flow_api.g_varchar2_table(1151) := '206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A202333333333';
wwv_flow_api.g_varchar2_table(1152) := '33333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1153) := '202D38707820302030202366666363303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1154) := '20233762643366623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1155) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120';
wwv_flow_api.g_varchar2_table(1156) := '696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1157) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1158) := '742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1159) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1160) := '6467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1161) := '32302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1162) := '4C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1163) := '68696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1164) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1165) := '642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1166) := '6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(1167) := '2D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1168) := '756E642D636F6C6F723A20236536383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1169) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020';
wwv_flow_api.g_varchar2_table(1170) := '30202366666130316120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A2023343463333561';
wwv_flow_api.g_varchar2_table(1171) := '3B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1172) := '742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(1173) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1174) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1175) := '74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1176) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1177) := '6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D';
wwv_flow_api.g_varchar2_table(1178) := '42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1179) := '6D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237';
wwv_flow_api.g_varchar2_table(1180) := '292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1181) := '6572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B';
wwv_flow_api.g_varchar2_table(1182) := '0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032';
wwv_flow_api.g_varchar2_table(1183) := '333434613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1184) := '2030202D38707820302030202337636337653920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1185) := '723A20236536333532623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1186) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236562363035';
wwv_flow_api.g_varchar2_table(1187) := '3920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1188) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1189) := '6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1190) := '7242472D2D31207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7242472D2D32207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1191) := '6F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7242472D2D33207B0A20206261636B67726F756E642D636F6C6F723A202366663935';
wwv_flow_api.g_varchar2_table(1192) := '30303B0A7D0A2E752D436F6C6F7246472D2D33207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7242472D2D34207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7246472D';
wwv_flow_api.g_varchar2_table(1193) := '2D34207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7242472D2D35207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7246472D2D35207B0A2020636F6C6F723A20233865';
wwv_flow_api.g_varchar2_table(1194) := '386539333B0A7D0A2E752D436F6C6F7242472D2D36207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7246472D2D36207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7242';
wwv_flow_api.g_varchar2_table(1195) := '472D2D37207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7246472D2D37207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7242472D2D38207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1196) := '6E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7242472D2D39207B0A20206261636B67726F756E642D636F6C6F723A2023666633623330';
wwv_flow_api.g_varchar2_table(1197) := '3B0A7D0A2E752D436F6C6F7246472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7242472D2D3130207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7246472D2D';
wwv_flow_api.g_varchar2_table(1198) := '3130207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7246472D2D3131207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1199) := '6666353737373B0A7D0A2E752D436F6C6F7242472D2D3132207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7246472D2D3132207B0A2020636F6C6F723A20233333393566663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1200) := '6C6F7242472D2D3133207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7246472D2D3133207B0A2020636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7242472D2D3134207B0A202062';
wwv_flow_api.g_varchar2_table(1201) := '61636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D2D3134207B0A2020636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7242472D2D3135207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1202) := '3A20236135613561393B0A7D0A2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7242472D2D3136207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1203) := '2D436F6C6F7246472D2D3136207B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7242472D2D3137207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7246472D2D3137207B0A';
wwv_flow_api.g_varchar2_table(1204) := '2020636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7246472D2D3138207B0A2020636F6C6F723A20233762643366';
wwv_flow_api.g_varchar2_table(1205) := '623B0A7D0A2E752D436F6C6F7242472D2D3139207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7246472D2D3139207B0A2020636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F724247';
wwv_flow_api.g_varchar2_table(1206) := '2D2D3230207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7246472D2D3230207B0A2020636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7242472D2D3231207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1207) := '6F756E642D636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B0A2020636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7242472D2D3232207B0A20206261636B67726F756E642D636F6C6F723A20233030';
wwv_flow_api.g_varchar2_table(1208) := '366565363B0A7D0A2E752D436F6C6F7246472D2D3232207B0A2020636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1209) := '7246472D2D3233207B0A2020636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242472D2D3234207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7246472D2D3234207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1210) := '6F723A20233434633335613B0A7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7246472D2D3235207B0A2020636F6C6F723A20233830383038343B0A7D0A';
wwv_flow_api.g_varchar2_table(1211) := '2E752D436F6C6F7242472D2D3236207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7246472D2D3236207B0A2020636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7242472D2D323720';
wwv_flow_api.g_varchar2_table(1212) := '7B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7246472D2D3237207B0A2020636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7242472D2D3238207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1213) := '636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7242472D2D3239207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B';
wwv_flow_api.g_varchar2_table(1214) := '0A7D0A2E752D436F6C6F7246472D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7242472D2D3330207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E752D436F6C6F7246472D2D';
wwv_flow_api.g_varchar2_table(1215) := '3330207B0A2020636F6C6F723A20233466346463313B0A7D0A0A2E752D436F6C6F722D312D42472D2D747874207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6267207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1216) := '636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0A202066696C6C3A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6272207B0A20207374726F6B653A20236666326435353B0A2020';
wwv_flow_api.g_varchar2_table(1217) := '626F726465722D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6267207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1218) := '6F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A202062';
wwv_flow_api.g_varchar2_table(1219) := '6F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D747874207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6267207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1220) := '6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A202066696C6C3A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6272207B0A20207374726F6B653A20233030376166663B0A2020626F';
wwv_flow_api.g_varchar2_table(1221) := '726465722D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6267207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1222) := '6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F72';
wwv_flow_api.g_varchar2_table(1223) := '6465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D42472D2D747874207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1224) := '723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066696C6C3A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6272207B0A20207374726F6B653A20236666393530303B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1225) := '65722D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1226) := '3A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465';
wwv_flow_api.g_varchar2_table(1227) := '722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D342D42472D2D747874207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1228) := '20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C6C3A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6272207B0A20207374726F6B653A20233463643936343B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1229) := '2D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B0A2020636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1230) := '233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C3A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6272207B0A20207374726F6B653A20233037316630623B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1231) := '636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1232) := '3865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6272207B0A20207374726F6B653A20233865386539333B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1233) := '6F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1234) := '66666666663B0A7D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1235) := '6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233334';
wwv_flow_api.g_varchar2_table(1236) := '616164633B0A7D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6272207B0A20207374726F6B653A20233334616164633B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1237) := '6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1238) := '6666663B0A7D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1239) := '723A20236666666666663B0A7D0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202366666363';
wwv_flow_api.g_varchar2_table(1240) := '30303B0A7D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0A202066696C6C3A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6272207B0A20207374726F6B653A20236666636330303B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1241) := '3A20236666636330303B0A7D0A2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030303030';
wwv_flow_api.g_varchar2_table(1242) := '303B0A7D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0A202066696C6C3A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6272207B0A20207374726F6B653A20233030303030303B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1243) := '20233030303030303B0A7D0A2E752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023356163386661';
wwv_flow_api.g_varchar2_table(1244) := '3B0A7D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0A202066696C6C3A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6272207B0A20207374726F6B653A20233561633866613B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1245) := '233561633866613B0A7D0A2E752D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233032333935323B';
wwv_flow_api.g_varchar2_table(1246) := '0A7D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0A202066696C6C3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6272207B0A20207374726F6B653A20233032333935323B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1247) := '3032333935323B0A7D0A2E752D436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A';
wwv_flow_api.g_varchar2_table(1248) := '7D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0A202066696C6C3A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B0A20207374726F6B653A20236666336233303B0A2020626F726465722D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1249) := '66336233303B0A7D0A2E752D436F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1250) := '0A2E752D436F6C6F722D392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1251) := '666666663B0A7D0A2E752D436F6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A';
wwv_flow_api.g_varchar2_table(1252) := '7D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0A202066696C6C3A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6272207B0A20207374726F6B653A20233538353664363B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1253) := '233538353664363B0A7D0A2E752D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1254) := '663B0A7D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1255) := '723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D42472D2D747874207B0A2020636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236639';
wwv_flow_api.g_varchar2_table(1256) := '303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6272207B0A20207374726F6B653A20236639303032663B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1257) := '6F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1258) := '236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465';
wwv_flow_api.g_varchar2_table(1259) := '722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874207B0A2020636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1260) := '723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A202066696C6C3A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6272207B0A20207374726F6B653A20233030363263633B0A2020626F';
wwv_flow_api.g_varchar2_table(1261) := '726465722D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6267207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1262) := '6F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A20';
wwv_flow_api.g_varchar2_table(1263) := '20626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42472D2D747874207B0A2020636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6267207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1264) := '642D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0A202066696C6C3A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6272207B0A20207374726F6B653A2023636337373030';
wwv_flow_api.g_varchar2_table(1265) := '3B0A2020626F726465722D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6267207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1266) := '6F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6272207B0A20207374726F6B653A2023666666';
wwv_flow_api.g_varchar2_table(1267) := '6666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31342D42472D2D747874207B0A2020636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6267207B0A2020626163';
wwv_flow_api.g_varchar2_table(1268) := '6B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0A202066696C6C3A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6272207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1269) := '3261633834353B0A2020626F726465722D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D46472D2D747874207B0A2020636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6267207B0A2020';
wwv_flow_api.g_varchar2_table(1270) := '6261636B67726F756E642D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0A202066696C6C3A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6272207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1271) := '3A20233130343931393B0A2020626F726465722D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31352D42472D2D747874207B0A2020636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6267207B';
wwv_flow_api.g_varchar2_table(1272) := '0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0A202066696C6C3A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6272207B0A2020737472';
wwv_flow_api.g_varchar2_table(1273) := '6F6B653A20233734373437613B0A2020626F726465722D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D62';
wwv_flow_api.g_varchar2_table(1274) := '67207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6272207B0A2020';
wwv_flow_api.g_varchar2_table(1275) := '7374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D42472D2D747874207B0A2020636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D4247';
wwv_flow_api.g_varchar2_table(1276) := '2D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0A202066696C6C3A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6272207B';
wwv_flow_api.g_varchar2_table(1277) := '0A20207374726F6B653A20233231386562643B0A2020626F726465722D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D3136';
wwv_flow_api.g_varchar2_table(1278) := '2D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D62';
wwv_flow_api.g_varchar2_table(1279) := '72207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31372D42472D2D747874207B0A2020636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1280) := '2D31372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0A202066696C6C3A20236363613330303B0A7D0A2E752D436F6C6F722D31372D4247';
wwv_flow_api.g_varchar2_table(1281) := '2D2D6272207B0A20207374726F6B653A20236363613330303B0A2020626F726465722D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D46472D2D747874207B0A2020636F6C6F723A20233161316131613B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1282) := '6C6F722D31372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0A202066696C6C3A20233161316131613B0A7D0A2E752D436F6C6F722D3137';
wwv_flow_api.g_varchar2_table(1283) := '2D46472D2D6272207B0A20207374726F6B653A20233161316131613B0A2020626F726465722D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31382D42472D2D747874207B0A2020636F6C6F723A20233238623766393B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1284) := '2D436F6C6F722D31382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0A202066696C6C3A20233238623766393B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1285) := '2D31382D42472D2D6272207B0A20207374726F6B653A20233238623766393B0A2020626F726465722D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D46472D2D747874207B0A2020636F6C6F723A20233034356338343B0A7D';
wwv_flow_api.g_varchar2_table(1286) := '0A2E752D436F6C6F722D31382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0A202066696C6C3A20233034356338343B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1287) := '6C6F722D31382D46472D2D6272207B0A20207374726F6B653A20233034356338343B0A2020626F726465722D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31392D42472D2D747874207B0A2020636F6C6F723A2023666330643030';
wwv_flow_api.g_varchar2_table(1288) := '3B0A7D0A2E752D436F6C6F722D31392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0A202066696C6C3A20236663306430303B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1289) := '2D436F6C6F722D31392D42472D2D6272207B0A20207374726F6B653A20236663306430303B0A2020626F726465722D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D46472D2D747874207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1290) := '6666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1291) := '0A2E752D436F6C6F722D31392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D42472D2D747874207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1292) := '3333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0A202066696C6C3A2023333333316338';
wwv_flow_api.g_varchar2_table(1293) := '3B0A7D0A2E752D436F6C6F722D32302D42472D2D6272207B0A20207374726F6B653A20233333333163383B0A2020626F726465722D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D46472D2D747874207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1294) := '3A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0A202066696C6C3A2023666666';
wwv_flow_api.g_varchar2_table(1295) := '6666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D42472D2D747874207B0A2020636F';
wwv_flow_api.g_varchar2_table(1296) := '6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1297) := '6666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6272207B0A20207374726F6B653A20236666393361383B0A2020626F726465722D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D46472D2D747874207B0A20';
wwv_flow_api.g_varchar2_table(1298) := '20636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0A202066696C6C';
wwv_flow_api.g_varchar2_table(1299) := '3A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D42472D2D74787420';
wwv_flow_api.g_varchar2_table(1300) := '7B0A2020636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0A202066';
wwv_flow_api.g_varchar2_table(1301) := '696C6C3A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A20207374726F6B653A20233636616666663B0A2020626F726465722D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D46472D2D74';
wwv_flow_api.g_varchar2_table(1302) := '7874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0A';
wwv_flow_api.g_varchar2_table(1303) := '202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D4247';
wwv_flow_api.g_varchar2_table(1304) := '2D2D747874207B0A2020636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D66696C6C';
wwv_flow_api.g_varchar2_table(1305) := '207B0A202066696C6C3A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6272207B0A20207374726F6B653A20236666626636363B0A2020626F726465722D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D3233';
wwv_flow_api.g_varchar2_table(1306) := '2D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D66';
wwv_flow_api.g_varchar2_table(1307) := '696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1308) := '2D32342D42472D2D747874207B0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D4247';
wwv_flow_api.g_varchar2_table(1309) := '2D2D66696C6C207B0A202066696C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6272207B0A20207374726F6B653A20236130656261643B0A2020626F726465722D636F6C6F723A20236130656261643B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1310) := '6C6F722D32342D46472D2D747874207B0A2020636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D3234';
wwv_flow_api.g_varchar2_table(1311) := '2D46472D2D66696C6C207B0A202066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6272207B0A20207374726F6B653A20233139373332383B0A2020626F726465722D636F6C6F723A20233139373332383B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1312) := '2D436F6C6F722D32352D42472D2D747874207B0A2020636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1313) := '2D32352D42472D2D66696C6C207B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6272207B0A20207374726F6B653A20236332633263353B0A2020626F726465722D636F6C6F723A20236332633263353B0A7D';
wwv_flow_api.g_varchar2_table(1314) := '0A2E752D436F6C6F722D32352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1315) := '6C6F722D32352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1316) := '3B0A7D0A2E752D436F6C6F722D32362D42472D2D747874207B0A2020636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233862636565623B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1317) := '2D436F6C6F722D32362D42472D2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6272207B0A20207374726F6B653A20233862636565623B0A2020626F726465722D636F6C6F723A2023386263';
wwv_flow_api.g_varchar2_table(1318) := '6565623B0A7D0A2E752D436F6C6F722D32362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1319) := '0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1320) := '6666666666663B0A7D0A2E752D436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023666665303636';
wwv_flow_api.g_varchar2_table(1321) := '3B0A7D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0A202066696C6C3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6272207B0A20207374726F6B653A20236666653036363B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1322) := '3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023333333';
wwv_flow_api.g_varchar2_table(1323) := '3333333B0A7D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0A202066696C6C3A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6272207B0A20207374726F6B653A20233333333333333B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1324) := '6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A2020636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1325) := '6264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C3A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6272207B0A20207374726F6B653A20236264653966643B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1326) := '2D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D46472D2D747874207B0A2020636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1327) := '3A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066696C6C3A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6272207B0A20207374726F6B653A20233035376562363B0A2020626F72';
wwv_flow_api.g_varchar2_table(1328) := '6465722D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D747874207B0A2020636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6267207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1329) := '6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A202066696C6C3A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6272207B0A20207374726F6B653A20236666396339363B0A2020';
wwv_flow_api.g_varchar2_table(1330) := '626F726465722D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6267207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1331) := '2D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6272207B0A20207374726F6B653A20236666666666663B';
wwv_flow_api.g_varchar2_table(1332) := '0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D42472D2D747874207B0A2020636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6267207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1333) := '756E642D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0A202066696C6C3A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6272207B0A20207374726F6B653A202361396138';
wwv_flow_api.g_varchar2_table(1334) := '65613B0A2020626F726465722D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6267207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1335) := '67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6272207B0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1336) := '66666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D666F6375736564207B0A2020626F782D736861646F773A2030203020302031707820236666326435352C203020302031707820307078207267626128323535';
wwv_flow_api.g_varchar2_table(1337) := '2C2034352C2038352C20302E35292021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(3771184776648468851)
,p_theme_id=>42
,p_file_name=>'3771184313711468841.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433275580651566323)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433275706485566323)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433275920388566323)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433277473721566524)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433277692659566525)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433281155332566624)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433281515021566624)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433282104334566624)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433282743946566625)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433282908248566625)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433283878795566627)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433288286591566730)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433295638693566919)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433309505948567308)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433309731846567308)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433310160328567308)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433314238609567407)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433317366857567504)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433325832112567701)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433326016289567701)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433330888026567793)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433331749184567793)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433332084778567794)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433332772161567794)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433334219396567894)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433334719179568076)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433335009866568077)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433335215943568077)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433336002055568168)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433337927813568367)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433338752384568368)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433339703584568459)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433340450016568460)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433340743587568460)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433341410132568461)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433342300377568556)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433345283599569117)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433346423865569315)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433359088054570107)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433360715633570220)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433360995414570220)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433361110498570220)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433361317092570220)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433361541366570220)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433361966043570221)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433362605315570221)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433363037396570222)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433363279159570222)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433363411575570222)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433363630680570222)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433363966857570222)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(3433364245331570223)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433275479942566322)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433275618305566323)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(3433275580651566323)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433275889842566323)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(3433275706485566323)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276009739566323)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(3433275920388566323)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276138393566323)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(3433275580651566323)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276240246566323)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(3433275706485566323)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276356144566324)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(3433275580651566323)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276436352566324)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(3433275706485566323)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276592142566324)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(3433275580651566323)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433276691206566324)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433273745410566220)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(3433275920388566323)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433277549259566525)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3433277055522566423)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433277754378566525)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(3433277055522566423)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(3433277692659566525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433277874358566525)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(3433277055522566423)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433277986903566525)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(3433277055522566423)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(3433277692659566525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281238765566624)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(3433281155332566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281339028566624)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(3433281155332566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281484030566624)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(3433281155332566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281664258566624)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281777911566624)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281820601566624)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433281987779566624)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(3433281155332566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282067603566624)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282294114566624)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282352172566624)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282431166566624)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282582895566624)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282661693566625)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433282852191566625)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(3433282743946566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283042868566626)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283124232566626)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(3433282743946566625)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283279304566626)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283309894566626)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283453943566626)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283569915566626)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283653241566626)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283777517566626)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433283990058566627)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(3433283878795566627)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433284071337566627)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(3433283878795566627)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433284166872566627)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433278024398566525)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287359616566729)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287417852566729)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287509301566729)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287630754566730)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287793752566730)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287804362566730)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433287963536566730)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288041652566730)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288122341566730)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288364860566730)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(3433288286591566730)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288439055566730)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(3433288286591566730)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288585389566730)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288613734566730)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288739491566730)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288838444566730)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433288922364566730)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433289057922566730)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433284240687566627)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433295503358566919)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433295777280566919)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(3433295638693566919)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433295828735566919)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(3433295638693566919)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433295997947566919)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433296088756566920)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433296109713566920)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433292155765566821)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(3433295638693566919)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433299079815567015)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433296294102566920)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433299161876567016)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433296294102566920)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433304991841567208)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305013216567208)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305136424567208)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305270891567208)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(3433281515021566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305330850567208)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305467596567208)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305567478567208)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305619761567208)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305733034567208)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(3433282104334566624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305838836567208)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(3433282743946566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433305988235567208)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306058889567208)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(3433282743946566625)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306113418567208)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306231236567208)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306376825567209)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306434483567209)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(3433282908248566625)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306529846567209)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433306638733567209)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433302207435567116)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(3433277473721566524)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433309692079567308)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(3433309505948567308)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433309848814567308)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(3433309731846567308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433309906687567308)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433310086158567308)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(3433309731846567308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433310221948567308)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(3433310160328567308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433310386494567308)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433306771335567209)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(3433310160328567308)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433314567511567408)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3433310494578567308)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(3433314238609567407)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433314659760567408)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3433310494578567308)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433314780231567408)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(3433310494578567308)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(3433314238609567407)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433317406011567504)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(3433314863482567409)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(3433317366857567504)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433317560495567504)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433314863482567409)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(3433317366857567504)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433317678807567504)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(3433314863482567409)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433325918214567701)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(3433325832112567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326191132567701)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326224925567701)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(3433325832112567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326372113567701)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326481191567701)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(3433325832112567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326542445567701)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326783470567701)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433326994230567701)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(3433325832112567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327026726567701)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(3433325832112567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327183218567701)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327220727567702)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327369593567702)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327418602567702)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433327518773567702)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433320968841567601)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433330759267567793)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331051744567793)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(3433330888026567793)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331236642567793)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331397550567793)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(3433330888026567793)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331470559567793)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331533352567793)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(3433330888026567793)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331693395567793)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331883501567793)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(3433331749184567793)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433331953353567793)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(3433331749184567793)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332112733567794)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(3433332084778567794)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332227625567794)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(3433332084778567794)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332361703567794)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(3433331749184567793)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332455684567794)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332509792567794)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(3433330888026567793)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332660846567794)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433332840574567794)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433327625056567702)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(3433332772161567794)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433334355538567894)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433332975233567794)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(3433334219396567894)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433334439430567894)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433332975233567794)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(3433334219396567894)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433334855142568077)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(3433334719179568076)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433334980296568077)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(3433334719179568076)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335163183568077)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(3433335009866568077)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335353085568077)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(3433335215943568077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335457326568077)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(3433335215943568077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335564331568077)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(3433335215943568077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335620572568077)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(3433335009866568077)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335755863568077)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433335836500568077)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433334640493567985)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(3433335215943568077)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336182480568168)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336214546568168)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336344029568168)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336478789568168)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336599335568168)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336631107568168)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336761439568169)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433336838308568169)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3433335919408568077)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337014220568267)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337179097568267)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337233489568267)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337394799568267)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337496996568268)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(3433326016289567701)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337559567568268)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337691233568268)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433337775929568268)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(3433336980987568169)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(3433336002055568168)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338002651568368)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338172304568368)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338230521568368)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338343077568368)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338432446568368)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338537390568368)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338640776568368)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338865652568368)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(3433338752384568368)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433338986621568368)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(3433338752384568368)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339079598568368)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339151645568368)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(3433338752384568368)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339226469568368)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339315851568369)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(3433338752384568368)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339446575568369)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3433337894019568268)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(3433338752384568368)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339667834568459)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339874739568459)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(3433339703584568459)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433339925391568459)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340040779568460)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(3433339703584568459)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340149126568460)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340209046568460)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(3433339703584568459)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340341578568460)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340565497568460)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340686866568460)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340846338568460)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(3433340743587568460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433340906337568460)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(3433340743587568460)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341080142568460)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341140874568461)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341227193568461)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(3433339703584568459)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341322457568461)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341530356568461)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433339530582568369)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(3433341410132568461)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433341947007568556)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342085969568556)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342168880568556)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342266595568556)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342429656568556)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(3433342300377568556)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342593824568556)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433341632509568461)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(3433342300377568556)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342742774568647)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342880178568647)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433342981787568647)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343063413568647)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343143131568647)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343245265568647)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343344390568647)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343478305568647)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(3433342653281568556)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343636276568739)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(3433343598521568647)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343730913568739)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433343598521568647)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343882341568739)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433343598521568647)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433343982487568739)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433343598521568647)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433344939627569116)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(3433340743587568460)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345019090569117)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(3433337927813568367)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345104501569117)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(3433340743587568460)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345331822569117)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(3433345283599569117)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345436566569117)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345556428569117)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(3433340450016568460)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345614439569117)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(3433344828371569017)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(3433345283599569117)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433345995800569216)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3433345710922569117)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346096834569217)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3433345710922569117)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346114513569217)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3433345710922569117)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346268690569217)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(3433345710922569117)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346594855569315)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(3433346372569569217)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(3433346423865569315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346676865569315)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(3433346372569569217)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(3433346423865569315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433346742288569315)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(3433346372569569217)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(3433346423865569315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433359111089570107)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(3433358838150570007)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(3433359088054570107)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433359213525570107)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(3433358838150570007)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(3433359088054570107)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433360874300570220)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(3433360715633570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361039205570220)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(3433360995414570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361211571570220)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(3433361110498570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361478504570220)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(3433361317092570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361654506570221)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(3433361541366570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361745537570221)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(3433360995414570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433361863240570221)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(3433361110498570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362006791570221)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(3433361966043570221)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362114528570221)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(3433361966043570221)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362200643570221)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(3433361966043570221)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362329311570221)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(3433360715633570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362492683570221)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(3433361541366570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362588865570221)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(3433361317092570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362796122570222)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(3433362605315570221)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362880472570222)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(3433360715633570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433362993402570222)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(3433360715633570220)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433363181197570222)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(3433363037396570222)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433363316513570222)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(3433363279159570222)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433363551358570222)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(3433363411575570222)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433363792748570222)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(3433363630680570222)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433363893933570222)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(3433363630680570222)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433364065071570222)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(3433363966857570222)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433364148283570222)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(3433363279159570222)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433364373539570223)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(3433364245331570223)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433364485408570223)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(3433364548713570223)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(3433364245331570223)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(3433442437364598170)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(3433364905973570235)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(3433364766831570226)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(3433265777553564938)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(3433344309971568918)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(3433364641012570225)
,p_nav_bar_list_template_id=>wwv_flow_api.id(3433344248824568830)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JOSHUA.AROSTIQUE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150428205844'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433365574649570243)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433310494578567308)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3433365069301570237)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3433359341627570107)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3557691288909658884)
,p_plug_name=>'Pie Chart Link'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<body>',
'    <a href="https://apex.oracle.com/pls/apex/f?p=95803:17:16506183127690:::::">Link to Pie Chart</a>',
'</body>'))
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3643297620125954350)
,p_plug_name=>'Add Members to List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3650921628691451650)
,p_plug_name=>'Clone Lists to Active Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3653251261972620990)
,p_plug_name=>'Home Region Display Selector'
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3653422379595625721)
,p_plug_name=>'Remove Employee From All Lists'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3658438595008970238)
,p_plug_name=>'Video region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<body>',
'    <iframe width="420" height="315" src="https://www.youtube.com/embed/OKimsq9lE64" frameborder="0" allowfullscreen></iframe>',
'</body>'))
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3662897527030254822)
,p_plug_name=>'Search From Home'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>18
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3662957347466264053)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(3662897527030254822)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>19
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3769816014492333404)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3662957347466264053)
,p_button_name=>'SEARCH_BUTTON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::P25_SEARCH:&P1_SEARCH.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3646316634630190475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3643297620125954350)
,p_button_name=>'SUBMIT_SHUTTLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Submit Shuttle'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3651441884577471818)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3650921628691451650)
,p_button_name=>'CLONE_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Clone'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3653851304337643381)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3653422379595625721)
,p_button_name=>'REMOVE_FROM_LISTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Remove From Lists'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3663453648268327719)
,p_branch_name=>'Search Results'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:1, 25:P25_SEARCH:&P1_SEARCH.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3769816014492333404)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3645861193476148251)
,p_name=>'EMP_SHUTTLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3643297620125954350)
,p_prompt=>'Employee Shuttle'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, EMP_ID as return_value ',
'  from NL_EMP',
'where emp_id != 200 and emp_status = ''A''',
' order by 1'))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>10
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3647195855074222269)
,p_name=>'SHUTTLE_LIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3643297620125954350)
,p_prompt=>'Notification List'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select list_name, list_id from nl_list where list_id != 181'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3651206739691455779)
,p_name=>'EMP_TO_CLONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3650921628691451650)
,p_prompt=>'To Clone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, EMP_ID as return_value ',
'  from NL_EMP',
'where emp_id != 200',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3651437185746467844)
,p_name=>'EMP_CLONE_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3650921628691451650)
,p_prompt=>'Clone To'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, EMP_ID as return_value ',
'  from NL_EMP',
'where emp_id != 200 and emp_status = ''A''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3653848790188639818)
,p_name=>'REMOVE_LIST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3653422379595625721)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, EMP_ID as return_value ',
'  from NL_EMP',
'where emp_id != 200',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3663175998471295551)
,p_name=>'P1_SEARCH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3662957347466264053)
,p_prompt=>'Search'
,p_placeholder=>'"Search All Tables..."'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_css_classes=>'t-Form-searchField'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346882544569315)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3667523129045601661)
,p_name=>'Set Focus on Search Field'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3667523508690601661)
,p_event_id=>wwv_flow_api.id(3667523129045601661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_SEARCH'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3649800233682361538)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'shuttle submit process'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  tab apex_application_global.vc_arr2;',
'begin',
'  tab := apex_util.string_to_table(:EMP_SHUTTLE);',
'  for i in 1..tab.count loop',
'      insert into nl_mem (date_added, nl_emp_emp_id, nl_list_list_id)',
'      values (SYSDATE, tab(i), :SHUTTLE_LIST);',
'  end loop;',
'end;'))
,p_process_error_message=>'Error inserting list members'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3646316634630190475)
,p_process_success_message=>'Inserted list members'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3651982300914533478)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clone process'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'    for rec in (select * from nl_mem where nl_emp_emp_id = :EMP_TO_CLONE) loop',
'        insert into nl_mem(date_added, nl_emp_emp_id, nl_list_list_id)',
'        values (SYSDATE, :EMP_CLONE_TO, rec.nl_list_list_id);',
'    end loop;',
'end;'))
,p_process_error_message=>'Error while cloning'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3651441884577471818)
,p_process_success_message=>'Clone successful'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3654121144152640624)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove process'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'    delete from nl_mem where nl_emp_emp_id = :REMOVE_LIST;',
'end;'))
,p_process_error_message=>'Error when removing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3653851304337643381)
,p_process_success_message=>'Removal successful'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Lists'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lists'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_PUBLIC_USER'
,p_last_upd_yyyymmddhh24miss=>'20150424202141'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433450070328598521)
,p_plug_name=>'Lists'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "LIST_ID", ',
'"LIST_NAME",',
'"OWNERSHIP_DIV_CODE",',
'"LIST_DESCRIPTION",',
'"EXTERNAL_VIEW_NAME",',
'"CREATION_DATE",',
'"LIST_STATUS",',
'"STATUS_EFF_DATE"',
'from "#OWNER#"."NL_LIST" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3433450492876598522)
,p_name=>'Lists'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::::P3_LIST_ID:#LIST_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3433450492876598522
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433450558465598525)
,p_db_column_name=>'LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'List Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433450904925598526)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433451376694598527)
,p_db_column_name=>'OWNERSHIP_DIV_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ownership Div Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433451761530598527)
,p_db_column_name=>'LIST_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'List Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433452140897598528)
,p_db_column_name=>'EXTERNAL_VIEW_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'External View Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433452546256598528)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433452951623598529)
,p_db_column_name=>'LIST_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'List Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433453321456598529)
,p_db_column_name=>'STATUS_EFF_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status Eff Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3433681456974620080)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34336815'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LIST_ID:LIST_NAME:OWNERSHIP_DIV_CODE:LIST_DESCRIPTION:EXTERNAL_VIEW_NAME:CREATION_DATE:LIST_STATUS:STATUS_EFF_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433454618292598531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3433450070328598521)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433453774472598529)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3433450070328598521)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433454239350598530)
,p_event_id=>wwv_flow_api.id(3433453774472598529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3433450070328598521)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433455061501598531)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3433454618292598531)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433455568399598532)
,p_event_id=>wwv_flow_api.id(3433455061501598531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3433450070328598521)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Form on NL_LIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JOSHUA.AROSTIQUE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150427042453'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433439952257598161)
,p_plug_name=>'Form on NL_LIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433440616663598164)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433277055522566423)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433441052769598165)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3433440616663598164)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433440511108598164)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3433440616663598164)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433440476241598164)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3433440616663598164)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433440399783598164)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3433440616663598164)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433443913531598489)
,p_name=>'P3_LIST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Id'
,p_source=>'LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433444223095598499)
,p_name=>'P3_LIST_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Name'
,p_source=>'LIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433347266441569610)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433444677055598501)
,p_name=>'P3_OWNERSHIP_DIV_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ownership Div Code'
,p_source=>'OWNERSHIP_DIV_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DIVISION CODES'
,p_lov=>'select name, name as div_names from nl_div;'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433445023042598501)
,p_name=>'P3_LIST_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Description'
,p_source=>'LIST_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>3500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433347266441569610)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433445444959598502)
,p_name=>'P3_EXTERNAL_VIEW_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External View Name'
,p_source=>'EXTERNAL_VIEW_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433445830371598503)
,p_name=>'P3_CREATION_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_item_default=>'to_char(sysdate,''dd-MON-yy'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433446268863598503)
,p_name=>'P3_LIST_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'List Status'
,p_source=>'LIST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433446612291598503)
,p_name=>'P3_STATUS_EFF_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3433439952257598161)
,p_use_cache_before_default=>'NO'
,p_item_default=>'to_char(sysdate,''dd-MON-yy'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Status Eff Date'
,p_source=>'STATUS_EFF_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433441108024598165)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3433441052769598165)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433441964426598167)
,p_event_id=>wwv_flow_api.id(3433441108024598165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433447471091598506)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NL_LIST'
,p_attribute_02=>'NL_LIST'
,p_attribute_03=>'P3_LIST_ID'
,p_attribute_04=>'LIST_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433447873341598506)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NL_LIST'
,p_attribute_02=>'NL_LIST'
,p_attribute_03=>'P3_LIST_ID'
,p_attribute_04=>'LIST_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433448282747598507)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3433440511108598164)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433448621599598507)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150427222452'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433551876601593055)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "EMP_ID", ',
'"EMP_NAME",',
'"EMP_LAB",',
'"EMP_DIVISION",',
'"EMP_STATUS",',
'"STATUS_EFF_DATE",',
'"IS_ADMIN"',
'from "#OWNER#"."NL_EMP" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3433552263167593056)
,p_name=>'Employees'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::::P5_EMP_ID:#EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3433552263167593056
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433552306800593057)
,p_db_column_name=>'EMP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433552735244593061)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433553154980593061)
,p_db_column_name=>'EMP_LAB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Lab'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433553520135593062)
,p_db_column_name=>'EMP_DIVISION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433553907159593062)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433554358391593063)
,p_db_column_name=>'STATUS_EFF_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status Eff Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3433554764454593063)
,p_db_column_name=>'IS_ADMIN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Is Admin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3433688767566603163)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34336888'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMP_ID:EMP_NAME:EMP_LAB:EMP_DIVISION:EMP_STATUS:STATUS_EFF_DATE:IS_ADMIN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3662649479996226290)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3433551876601593055)
,p_button_name=>'DOWNLOAD_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Download Button'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433556030763593065)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3433551876601593055)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433555123234593063)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3433551876601593055)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433555699738593064)
,p_event_id=>wwv_flow_api.id(3433555123234593063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3433551876601593055)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433556453439593065)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3433556030763593065)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433556948990593066)
,p_event_id=>wwv_flow_api.id(3433556453439593065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3433551876601593055)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3662908524446255404)
,p_name=>'Download'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3662649479996226290)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3662908923521255406)
,p_event_id=>wwv_flow_api.id(3662908524446255404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3662649479996226290)
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    var pID = $v(''pFlowId'');',
'    var pStepId = $v(''pFlowStepId'');',
'    var pIn = $v(''pInstance'');',
'    var url = ''http://apex.oracle.com/pls/apex/f?p='' + pID + '':'' + pStepId + '':'' + pIn + '':CSV:'';',
'    window.open(url, "_blank");',
'    console.log(url);',
'});'))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Form on NL_EMP'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on NL_EMP'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JOSHUA.AROSTIQUE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150428195721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433532245385592713)
,p_plug_name=>'Form on NL_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3433532963019592713)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433277055522566423)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433533393189592715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3433532963019592713)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433532824547592713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3433532963019592713)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433532759367592713)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3433532963019592713)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3433532664289592713)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3433532963019592713)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3763485296246880451)
,p_branch_name=>'return to modal'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433536137117593021)
,p_name=>'P5_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Id'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433536482164593033)
,p_name=>'P5_EMP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Name'
,p_source=>'EMP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433536836626593035)
,p_name=>'P5_EMP_LAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Lab'
,p_source=>'EMP_LAB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAB CODES'
,p_lov=>'select name, name as lab_name from nl_labs;'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433537233143593035)
,p_name=>'P5_EMP_DIVISION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Division'
,p_source=>'EMP_DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DIVISION CODES'
,p_lov=>'select name, name as div_names from nl_div;'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433537615613593035)
,p_name=>'P5_EMP_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Status'
,p_source=>'EMP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433548053486593036)
,p_name=>'P5_STATUS_EFF_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Eff Date'
,p_source=>'STATUS_EFF_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433548416570593037)
,p_name=>'P5_IS_ADMIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3433532245385592713)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Admin'
,p_source=>'IS_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3433533488101592715)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3433533393189592715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3433534326458592718)
,p_event_id=>wwv_flow_api.id(3433533488101592715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433549280546593039)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NL_EMP'
,p_attribute_02=>'NL_EMP'
,p_attribute_03=>'P5_EMP_ID'
,p_attribute_04=>'EMP_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433549615150593040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NL_EMP'
,p_attribute_02=>'NL_EMP'
,p_attribute_03=>'P5_EMP_ID'
,p_attribute_04=>'EMP_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433550056166593040)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3433532824547592713)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3433550443696593041)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Regions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Regions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150425220102'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493643046306825926)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from nl_emp;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3493643148039825926)
,p_name=>'Employees'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3493643148039825926
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493643422626825929)
,p_db_column_name=>'EMP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493643854789825930)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493644250047825930)
,p_db_column_name=>'EMP_LAB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Lab'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493644661679825930)
,p_db_column_name=>'EMP_DIVISION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493645093057825931)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493645454683825931)
,p_db_column_name=>'STATUS_EFF_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status Eff Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493645855763825931)
,p_db_column_name=>'IS_ADMIN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Is Admin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493646218896825932)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493646675617825932)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493647028877825933)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493647440527825933)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493647887210825933)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3493721688733846253)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34937217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMP_ID:EMP_NAME:EMP_LAB:EMP_DIVISION:EMP_STATUS:STATUS_EFF_DATE:IS_ADMIN:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493681408567832919)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493707205710843707)
,p_plug_name=>'Lists'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from nl_list;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3493707315714843707)
,p_name=>'Lists'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3493707315714843707
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493707687624843710)
,p_db_column_name=>'LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'List Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493708027901843711)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493708405994843711)
,p_db_column_name=>'OWNERSHIP_DIV_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ownership Div Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493708800772843714)
,p_db_column_name=>'LIST_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'List Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493709220723843714)
,p_db_column_name=>'EXTERNAL_VIEW_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'External View Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493709616771843715)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493710065434843715)
,p_db_column_name=>'LIST_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'List Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493710485073843716)
,p_db_column_name=>'STATUS_EFF_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status Eff Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493710810762843716)
,p_db_column_name=>'CREATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493711237456843716)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493711604649843717)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493712039142843717)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493712419517843718)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3493722149198846256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34937222'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LIST_ID:LIST_NAME:OWNERSHIP_DIV_CODE:LIST_DESCRIPTION:EXTERNAL_VIEW_NAME:CREATION_DATE:LIST_STATUS:STATUS_EFF_DATE:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493762730116841046)
,p_plug_name=>'List Members'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from nl_mem;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3493762816236841046)
,p_name=>'List Members'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3493762816236841046
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493763181695841047)
,p_db_column_name=>'MEMBER_LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Member List Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493763513948841048)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493763976586841048)
,p_db_column_name=>'NL_EMP_EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nl Emp Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493764341884841049)
,p_db_column_name=>'NL_LIST_LIST_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nl List List Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493764753470841049)
,p_db_column_name=>'NL_LIST_LIST_ID1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nl List List Id1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493765150145841050)
,p_db_column_name=>'CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493765574722841050)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493765987722841050)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493766326948841051)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493766726844841051)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3493767465302841458)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34937675'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'MEMBER_LIST_ID:DATE_ADDED:NL_EMP_EMP_ID:NL_LIST_LIST_ID:NL_LIST_LIST_ID1:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Documents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Documents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_PUBLIC_USER'
,p_last_upd_yyyymmddhh24miss=>'20150425220449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493814156580877067)
,p_plug_name=>'Documents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "DOCUMENT_ID", ',
'"FILENAME",',
'"FILE_MIMETYPE",',
'"FILE_CHARSET",',
'dbms_lob.getlength("FILE_DATA") "FILE_DATA",',
'"FILE_COMMENTS",',
'"TAGS",',
'"NL_EMPLOYEES_EMP_ID"',
'from "#OWNER#"."NL_DOC" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3493814425707877068)
,p_name=>'Documents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::::P10_DOCUMENT_ID:#DOCUMENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3493814425707877068
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493814517301877071)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493814928589877071)
,p_db_column_name=>'FILENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493815369384877072)
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493815767245877073)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493816126777877074)
,p_db_column_name=>'FILE_DATA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'File Data'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'DOWNLOAD:NL_DOC:FILE_DATA:DOCUMENT_ID'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493816583806877074)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493816960796877075)
,p_db_column_name=>'TAGS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3493817350370877075)
,p_db_column_name=>'NL_EMPLOYEES_EMP_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Nl Employees Emp Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3493823927459877504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34938240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DOCUMENT_ID:FILENAME:FILE_MIMETYPE:FILE_CHARSET:FILE_DATA:FILE_COMMENTS:TAGS:NL_EMPLOYEES_EMP_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3493818664271877077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3493814156580877067)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3493817725430877076)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3493814156580877067)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3493818231048877077)
,p_event_id=>wwv_flow_api.id(3493817725430877076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3493814156580877067)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3493819030208877078)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3493818664271877077)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3493819527595877079)
,p_event_id=>wwv_flow_api.id(3493819030208877078)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3493814156580877067)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Form on NL_DOC'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on NL_DOC'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428202716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493804067069876682)
,p_plug_name=>'Form on NL_DOC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3493804708696876682)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433277055522566423)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3493805153680876683)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3493804708696876682)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3493804650409876682)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3493804708696876682)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3493804559927876682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3493804708696876682)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3493804489268876682)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3493804708696876682)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493808062838877043)
,p_name=>'P10_DOCUMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Document Id'
,p_source=>'DOCUMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493808333999877050)
,p_name=>'P10_FILENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493808753236877050)
,p_name=>'P10_FILE_MIMETYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Mimetype'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493809144962877051)
,p_name=>'P10_FILE_CHARSET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Charset'
,p_source=>'FILE_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493809549527877052)
,p_name=>'P10_FILE_DATA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Data'
,p_source=>'FILE_DATA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493809996732877052)
,p_name=>'P10_FILE_COMMENTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Comments'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493810328054877052)
,p_name=>'P10_TAGS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3493810703974877053)
,p_name=>'P10_NL_EMPLOYEES_EMP_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3493804067069876682)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nl Employees Emp Id'
,p_source=>'NL_EMPLOYEES_EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMP_IDS'
,p_lov=>'select emp_name, nullif(emp_id, 200) from nl_emp;'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3493805298361876683)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3493805153680876683)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3493806004429876684)
,p_event_id=>wwv_flow_api.id(3493805298361876683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3493811520876877054)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NL_DOC'
,p_attribute_02=>'NL_DOC'
,p_attribute_03=>'P10_DOCUMENT_ID'
,p_attribute_04=>'DOCUMENT_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3493811924054877055)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NL_DOC'
,p_attribute_02=>'NL_DOC'
,p_attribute_03=>'P10_DOCUMENT_ID'
,p_attribute_04=>'DOCUMENT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3493812360430877056)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3493804650409876682)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3493812739815877056)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Pie Chart'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pie Chart'
,p_step_sub_title=>'Pie Chart'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150427035945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3557451575214632502)
,p_plug_name=>'Pie Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3433302207435567116)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(3557451960737632502)
,p_default_chart_type=>'2DPie'
,p_chart_title=>'Percentage of Active and Inactive Employees'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_3557451960737632502'
,p_chart_width=>700
,p_chart_height=>500
,p_display_attr=>':H:N:V:X::N:::Y:None:::N:::Default:::S'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_label_font=>'Tahoma:10:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(3557452317409632503)
,p_chart_id=>wwv_flow_api.id(3557451960737632502)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL LINK,',
'       emp_status LABEL,',
'       count(emp_status) VALUE',
'FROM   "NOTICE_LISTS"."NL_EMP"',
'where emp_id != 200',
'group by emp_status',
'ORDER  BY  emp_status;'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'View Employees'' Lists'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Employees'' Lists'
,p_step_sub_title=>'View Employees'' Lists'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150427215734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3659205493912040839)
,p_plug_name=>'View Employees'' Lists'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select list_name, nl_list_list_id from nl_mem',
'    join nl_list on nl_mem.nl_list_list_id = nl_list.list_id',
'where nl_emp_emp_id = :SELECT_EMP;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3659205529087040839)
,p_name=>'View Employees'' Lists'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3659205529087040839
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3659205971519040841)
,p_db_column_name=>'NL_LIST_LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nl List List Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3660959176540111432)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3659688601813058092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'36596887'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NL_LIST_LIST_ID:LIST_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3659632272566044773)
,p_name=>'SELECT_EMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3659205493912040839)
,p_prompt=>'Select Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, EMP_ID as return_value ',
'  from NL_EMP',
'where emp_id != 200',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Search Results'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search Results'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JOSHUA.AROSTIQUE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20150427235143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3663607166441340449)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433289174929566731)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3663751031676346198)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(3663607166441340449)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3664457090334394699)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(3433302207435567116)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_LAB,',
'       EMP_NAME,',
'       EMP_ID,',
'       EMP_DIVISION',
'  from NL_EMP where EMP_LAB      like :P25_SEARCH',
'                 or EMP_NAME     like :P25_SEARCH',
'                 or EMP_ID       like :P25_SEARCH',
'                 or EMP_DIVISION like :P25_SEARCH',
'                 or EMP_LAB      like :P1_SEARCH',
'                 or EMP_NAME     like :P1_SEARCH',
'                 or EMP_ID       like :P1_SEARCH',
'                 or EMP_DIVISION like :P1_SEARCH',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_LAB,',
'       EMP_NAME,',
'       EMP_ID,',
'       EMP_DIVISION',
'  from NL_EMP'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(3433334640493567985)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3664457620846394702)
,p_query_column_id=>1
,p_column_alias=>'EMP_LAB'
,p_column_display_sequence=>1
,p_column_heading=>'Emp Lab'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3664458086290394702)
,p_query_column_id=>2
,p_column_alias=>'EMP_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Emp Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3664458411659394703)
,p_query_column_id=>3
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Emp Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3664458866906394703)
,p_query_column_id=>4
,p_column_alias=>'EMP_DIVISION'
,p_column_display_sequence=>4
,p_column_heading=>'Emp Division'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3664302353004376779)
,p_branch_name=>'Search Results'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3664138762385380406)
,p_name=>'P25_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3663751031676346198)
,p_prompt=>'Search'
,p_source=>'P1_SEARCH'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346882544569315)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'View Employees on List'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Employees on List'
,p_step_sub_title=>'View Employees on List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428213048'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3759559341498619891)
,p_plug_name=>'other interactive'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select nl_emp.emp_name, nl_list.list_name from (select nl_emp_emp_id, nl_list_list_id, nl_list_list_id1, LEVEL',
'from nl_mem',
'start with nl_list_list_id = :SELECT_LIST',
'connect by NOCYCLE PRIOR nl_list_list_id1 = nl_list_list_id) t join nl_emp on t.nl_emp_emp_id = nl_emp.emp_id',
'join nl_list on t.nl_list_list_id = nl_list.list_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3759559472155619891)
,p_name=>'other interactive'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3759559472155619891
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3772193458987589500)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3772194160695589502)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3759568672796633269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37595687'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMP_NAME:LIST_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3664302677277377130)
,p_button_sequence=>10
,p_button_name=>'DOWNLOAD_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Download '
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3664092126509364441)
,p_name=>'SELECT_LIST'
,p_item_sequence=>10
,p_prompt=>'Select Notification List'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select LIST_NAME as display_value, LIST_ID as return_value ',
'  from NL_LIST',
'where list_id != 181',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'test emp report'
,p_page_mode=>'NORMAL'
,p_step_title=>'test emp report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_PUBLIC_USER'
,p_last_upd_yyyymmddhh24miss=>'20150428193929'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3764126854559921248)
,p_plug_name=>'test emp report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "EMP_ID", ',
'"EMP_NAME",',
'"EMP_LAB",',
'"EMP_DIVISION",',
'"EMP_STATUS",',
'"STATUS_EFF_DATE",',
'"IS_ADMIN"',
'from "#OWNER#"."NL_EMP" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3764127205709921248)
,p_name=>'test emp report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:31:&APP_SESSION.::::P31_EMP_ID:#EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3764127205709921248
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764127355843921249)
,p_db_column_name=>'EMP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764127772179921250)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764128132722921250)
,p_db_column_name=>'EMP_LAB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Lab'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764128549476921251)
,p_db_column_name=>'EMP_DIVISION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764128909586921251)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764129366286921252)
,p_db_column_name=>'STATUS_EFF_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status Eff Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3764129788240921252)
,p_db_column_name=>'IS_ADMIN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Is Admin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3764132514136921722)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37641326'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMP_ID:EMP_NAME:EMP_LAB:EMP_DIVISION:EMP_STATUS:STATUS_EFF_DATE:IS_ADMIN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3764131011966921253)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3764126854559921248)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3764130133901921253)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3764126854559921248)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3764130647698921253)
,p_event_id=>wwv_flow_api.id(3764130133901921253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3764126854559921248)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3764131479425921254)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3764131011966921253)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3764131949334921254)
,p_event_id=>wwv_flow_api.id(3764131479425921254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3764126854559921248)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Form on NL_EMP'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on NL_EMP'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428194047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3764118284191921164)
,p_plug_name=>'Form on NL_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3764118977589921164)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433277055522566423)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3764119307440921165)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3764118977589921164)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3764118800976921164)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3764118977589921164)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3764118717822921164)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3764118977589921164)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3764118611141921164)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3764118977589921164)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_EMP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764121732169921227)
,p_name=>'P31_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Id'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764122137494921235)
,p_name=>'P31_EMP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Name'
,p_source=>'EMP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764122576649921236)
,p_name=>'P31_EMP_LAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Lab'
,p_source=>'EMP_LAB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764122972871921236)
,p_name=>'P31_EMP_DIVISION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Division'
,p_source=>'EMP_DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764123394924921236)
,p_name=>'P31_EMP_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp Status'
,p_source=>'EMP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764123781060921237)
,p_name=>'P31_STATUS_EFF_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Eff Date'
,p_source=>'STATUS_EFF_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3764124187619921238)
,p_name=>'P31_IS_ADMIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3764118284191921164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Admin'
,p_source=>'IS_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3764119439525921165)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3764119307440921165)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3764120215707921166)
,p_event_id=>wwv_flow_api.id(3764119439525921165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3764124946071921239)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NL_EMP'
,p_attribute_02=>'NL_EMP'
,p_attribute_03=>'P31_EMP_ID'
,p_attribute_04=>'EMP_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3764125364445921240)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NL_EMP'
,p_attribute_02=>'NL_EMP'
,p_attribute_03=>'P31_EMP_ID'
,p_attribute_04=>'EMP_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3764125764314921240)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3764118800976921164)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'List Members'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Members'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428214838'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3766818760095119425)
,p_plug_name=>'List Members'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433296294102566920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select member_list_id, date_added, nl_emp_emp_id "emp id", nl_emp.emp_name, nl_list_list_id "list id", nl.list_name, nl_list_list_id1 "sublist id", nl1.list_name "sublist name"',
'from nl_mem',
'left join nl_emp on nl_mem.nl_emp_emp_id = nl_emp.emp_id',
'join nl_list nl on nl_mem.nl_list_list_id = nl.list_id',
'left join nl_list nl1 on nl_mem.nl_list_list_id1 = nl1.list_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3766819114255119426)
,p_name=>'List Members'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:34:&APP_SESSION.::::P34_MEMBER_LIST_ID:#MEMBER_LIST_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'LAWRENCE.YING@UTEXAS.EDU'
,p_internal_uid=>3766819114255119426
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3766819239116119427)
,p_db_column_name=>'MEMBER_LIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Member List Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773182079284683484)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773182784379683486)
,p_db_column_name=>'emp id'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773183418077683486)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773184159292683489)
,p_db_column_name=>'list id'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'List Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773184821798683490)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773185553655683491)
,p_db_column_name=>'sublist id'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sublist Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3773186264863683493)
,p_db_column_name=>'sublist name'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sublist Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3766824892942120276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37668249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'MEMBER_LIST_ID:DATE_ADDED:emp id:EMP_NAME:list id:LIST_NAME:sublist id:sublist name'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3766822052674119431)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3766818760095119425)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3766821177302119430)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3766818760095119425)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3766821653995119430)
,p_event_id=>wwv_flow_api.id(3766821177302119430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3766818760095119425)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3766822460555119431)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3766822052674119431)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3766822924116119432)
,p_event_id=>wwv_flow_api.id(3766822460555119431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3766818760095119425)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(3433364766831570226)
,p_name=>'Form on NL_MEM'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on NL_MEM'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAWRENCE.YING@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20150428202757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3766808608639119331)
,p_plug_name=>'Form on NL_MEM'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433276774105566324)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3766809390869119332)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3433277055522566423)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3766809764362119332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3766809390869119332)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3766809205302119332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3766809390869119332)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_MEMBER_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3766809156128119332)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3766809390869119332)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P34_MEMBER_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3766809073704119332)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3766809390869119332)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3433358709918569906)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P34_MEMBER_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3766813711088119400)
,p_name=>'P34_MEMBER_LIST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3766808608639119331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Member List Id'
,p_source=>'MEMBER_LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3766814133254119410)
,p_name=>'P34_DATE_ADDED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3766808608639119331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Added'
,p_source=>'DATE_ADDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3766814521792119411)
,p_name=>'P34_NL_EMP_EMP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3766808608639119331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nl Emp Emp Id'
,p_source=>'NL_EMP_EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMP_NAME as display_value, nullif(emp_id, 200) as return_value ',
'  from NL_EMP',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3766814917829119412)
,p_name=>'P34_NL_LIST_LIST_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3766808608639119331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nl List List Id'
,p_source=>'NL_LIST_LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST IDS'
,p_lov=>'select list_name, nullif(list_id, 181) from nl_list;'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3766815366872119412)
,p_name=>'P34_NL_LIST_LIST_ID1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3766808608639119331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nl List List Id1'
,p_source=>'NL_LIST_LIST_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST IDS'
,p_lov=>'select list_name, nullif(list_id, 181) from nl_list;'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(3433346938986569413)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3766809873440119332)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3766809764362119332)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3766810793104119334)
,p_event_id=>wwv_flow_api.id(3766809873440119332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3766816108799119413)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NL_MEM'
,p_attribute_02=>'NL_MEM'
,p_attribute_03=>'P34_MEMBER_LIST_ID'
,p_attribute_04=>'MEMBER_LIST_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3766816583402119414)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NL_MEM'
,p_attribute_02=>'NL_MEM'
,p_attribute_03=>'P34_MEMBER_LIST_ID'
,p_attribute_04=>'MEMBER_LIST_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3766816913722119414)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3766809205302119332)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3766817321686119414)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(3494998428510066754)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

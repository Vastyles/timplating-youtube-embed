prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>1748486311670242969
,p_default_application_id=>177310
,p_default_id_offset=>17545842170155679470
,p_default_owner=>'TIMPLATING'
);
end;
/

prompt APPLICATION 177310 - APEX Escapes
--
-- Application Export:
--   Application:     177310
--   Name:            Timplating
--   Date and Time:   01:41 Monday July 29, 2024
--   Exported By:     Tim Kimberl
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 17610153400759390722
--   Manifest End
--   Version:         24.1.2
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/youtube_embed
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(19284326982887552127)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'YOUTUBE_EMBED'
,p_display_name=>'Youtube Embed'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>'<iframe width="560" height="315" title="#APEX$TITLE#" tabindex="-1" src="https://www.youtube-nocookie.com/embed/#YOUTUBE_ID#?{if VIDEO_AUTO_PLAY/}&autoplay=1{endif/}{if !VIDEO_CONTROLS/}&controls=0{endif/}&fs=0&modestbranding=1{if VIDEO_MUTE/}&mute=1'
||'{endif/}{if VIDEO_LOOP/}&loop=1&playlist=#YOUTUBE_ID#&playsinline=1{endif/}&rel=0" frameborder="0" allow="accelerometer; {if VIDEO_AUTO_PLAY/}autoplay;{endif/} encrypted-media; gyroscope; picture-in-picture; fullscreen"></iframe>'
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_substitute_attributes=>true
,p_version_scn=>15548954798796
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/Vastyles/timplating-youtube-embed'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19284327224527552128)
,p_plugin_id=>wwv_flow_imp.id(19284326982887552127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'YOUTUBE_ID'
,p_prompt=>'Youtube ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19285197469605606809)
,p_plugin_id=>wwv_flow_imp.id(19284326982887552127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VIDEO_MUTE'
,p_prompt=>'Mute Audio'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Mute the audio from autoplaying.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19284872627002869715)
,p_plugin_id=>wwv_flow_imp.id(19284326982887552127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'VIDEO_AUTO_PLAY'
,p_prompt=>'Auto Play Video'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Autoplay video once the video loads.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19285259905760627687)
,p_plugin_id=>wwv_flow_imp.id(19284326982887552127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'VIDEO_LOOP'
,p_prompt=>'Loop Video'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Play the video in a loop, this is ideal for any hero video.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(19285281251081637611)
,p_plugin_id=>wwv_flow_imp.id(19284326982887552127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'VIDEO_CONTROLS'
,p_prompt=>'Show Video Controls'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Show video controls, they may still not be visible depending on where the video is used.'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

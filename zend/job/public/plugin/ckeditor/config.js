/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	config.language = 'vi';
	// config.uiColor = '#AADC6E';
	config.resize_enabled = false;
	config.forcePasteAsPlainText = true; 
	config.toolbar_Full = [
    ['Bold','Italic','Underline', 'TextColor'],['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['NumberedList','BulletedList'],['Outdent','Indent'],['button-pre','Blockquote'],['Link','Unlink'],['Undo','Redo'],['Maximize','RemoveFormat'],];
	//config.startupOutlineBlocks = true;
	config.extraPlugins = "button-pre";
	config.format_tags = 'pre;p';
	config.protectedSource.push( /<\?[\s\S]*?\?>/g );   // PHP code
};
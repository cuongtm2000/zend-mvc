/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	config.language = 'vi';
	// config.uiColor = '#AADC6E';
    config.resize_enabled = false;
    config.toolbarCanCollapse = false;
    config.forcePasteAsPlainText = true;    
    config.toolbar_Full = [
    ['Bold','Italic','Underline', '-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-', 'NumberedList','BulletedList','-','TextColor','-','Subscript','Superscript','-','Outdent','Indent','-','Link','Unlink'],
    '/',
    ['Undo','Redo'], ['NewPage','Preview','Templates', 'Format','Font','FontSize'], ['Image','Flash','Table','Maximize','RemoveFormat'], ['Blockquote','Find'],];
	// Integration Kcfinder
	/*config.filebrowserBrowseUrl = '/kcfinder/browse.php?type=files';
	config.filebrowserImageBrowseUrl = '/kcfinder/browse.php?type=images';
	config.filebrowserFlashBrowseUrl = '/kcfinder/browse.php?type=flash';
	config.filebrowserUploadUrl = '/kcfinder/upload.php?type=files';
	config.filebrowserImageUploadUrl = '/kcfinder/upload.php?type=images';
	config.filebrowserFlashUploadUrl = '/kcfinder/upload.php?type=flash';*/
	
	// Url
	var sPath = window.location.pathname;
	var sPage = sPath.substring(sPath.lastIndexOf('webadmin'), 0);
	// Integration Ckfinder
	config.filebrowserBrowseUrl = sPage+'public/plugin/ckfinder/ckfinder.html';
	config.filebrowserImageBrowseUrl =  sPage+'public/plugin/ckfinder/ckfinder.html?Type=Images';
	config.filebrowserFlashBrowseUrl =  sPage+'public/plugin/ckfinder/ckfinder.html?Type=Flash';
	config.filebrowserUploadUrl =  sPage+'public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl =  sPage+'public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl =  sPage+'public/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};

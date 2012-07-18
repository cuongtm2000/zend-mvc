
var SWFUpload;if(SWFUpload==undefined){SWFUpload=function(settings){this.initSWFUpload(settings);};}
SWFUpload.prototype.initSWFUpload=function(settings){try{this.customSettings={};this.settings=settings;this.eventQueue=[];this.movieName="SWFUpload_"+SWFUpload.movieCount++;this.movieElement=null;SWFUpload.instances[this.movieName]=this;this.initSettings();this.loadFlash();this.displayDebugInfo();}catch(ex){delete SWFUpload.instances[this.movieName];throw ex;}};SWFUpload.instances={};SWFUpload.movieCount=0;SWFUpload.version="2.2.0 2009-03-25";SWFUpload.QUEUE_ERROR={QUEUE_LIMIT_EXCEEDED:-100,FILE_EXCEEDS_SIZE_LIMIT:-110,ZERO_BYTE_FILE:-120,INVALID_FILETYPE:-130};SWFUpload.UPLOAD_ERROR={HTTP_ERROR:-200,MISSING_UPLOAD_URL:-210,IO_ERROR:-220,SECURITY_ERROR:-230,UPLOAD_LIMIT_EXCEEDED:-240,UPLOAD_FAILED:-250,SPECIFIED_FILE_ID_NOT_FOUND:-260,FILE_VALIDATION_FAILED:-270,FILE_CANCELLED:-280,UPLOAD_STOPPED:-290};SWFUpload.FILE_STATUS={QUEUED:-1,IN_PROGRESS:-2,ERROR:-3,COMPLETE:-4,CANCELLED:-5};SWFUpload.BUTTON_ACTION={SELECT_FILE:-100,SELECT_FILES:-110,START_UPLOAD:-120};SWFUpload.CURSOR={ARROW:-1,HAND:-2};SWFUpload.WINDOW_MODE={WINDOW:"window",TRANSPARENT:"transparent",OPAQUE:"opaque"};SWFUpload.completeURL=function(url){if(typeof(url)!=="string"||url.match(/^https?:\/\//i)||url.match(/^\//)){return url;}
var currentURL=window.location.protocol+"//"+window.location.hostname+(window.location.port?":"+window.location.port:"");var indexSlash=window.location.pathname.lastIndexOf("/");if(indexSlash<=0){path="/";}else{path=window.location.pathname.substr(0,indexSlash)+"/";}
return path+url;};SWFUpload.prototype.initSettings=function(){this.ensureDefault=function(settingName,defaultValue){this.settings[settingName]=(this.settings[settingName]==undefined)?defaultValue:this.settings[settingName];};this.ensureDefault("upload_url","");this.ensureDefault("preserve_relative_urls",false);this.ensureDefault("file_post_name","Filedata");this.ensureDefault("post_params",{});this.ensureDefault("use_query_string",false);this.ensureDefault("requeue_on_error",false);this.ensureDefault("http_success",[]);this.ensureDefault("assume_success_timeout",0);this.ensureDefault("file_types","*.*");this.ensureDefault("file_types_description","All Files");this.ensureDefault("file_size_limit",0);this.ensureDefault("file_upload_limit",0);this.ensureDefault("file_queue_limit",0);this.ensureDefault("flash_url","swfupload.swf");this.ensureDefault("prevent_swf_caching",true);this.ensureDefault("button_image_url","");this.ensureDefault("button_width",1);this.ensureDefault("button_height",1);this.ensureDefault("button_text","");this.ensureDefault("button_text_style","color: #000000; font-size: 16pt;");this.ensureDefault("button_text_top_padding",0);this.ensureDefault("button_text_left_padding",0);this.ensureDefault("button_action",SWFUpload.BUTTON_ACTION.SELECT_FILES);this.ensureDefault("button_disabled",false);this.ensureDefault("button_placeholder_id","");this.ensureDefault("button_placeholder",null);this.ensureDefault("button_cursor",SWFUpload.CURSOR.ARROW);this.ensureDefault("button_window_mode",SWFUpload.WINDOW_MODE.WINDOW);this.ensureDefault("debug",false);this.settings.debug_enabled=this.settings.debug;this.settings.return_upload_start_handler=this.returnUploadStart;this.ensureDefault("swfupload_loaded_handler",null);this.ensureDefault("file_dialog_start_handler",null);this.ensureDefault("file_queued_handler",null);this.ensureDefault("file_queue_error_handler",null);this.ensureDefault("file_dialog_complete_handler",null);this.ensureDefault("upload_start_handler",null);this.ensureDefault("upload_progress_handler",null);this.ensureDefault("upload_error_handler",null);this.ensureDefault("upload_success_handler",null);this.ensureDefault("upload_complete_handler",null);this.ensureDefault("debug_handler",this.debugMessage);this.ensureDefault("custom_settings",{});this.customSettings=this.settings.custom_settings;if(!!this.settings.prevent_swf_caching){this.settings.flash_url=this.settings.flash_url+(this.settings.flash_url.indexOf("?")<0?"?":"&")+"preventswfcaching="+new Date().getTime();}
if(!this.settings.preserve_relative_urls){this.settings.upload_url=SWFUpload.completeURL(this.settings.upload_url);this.settings.button_image_url=SWFUpload.completeURL(this.settings.button_image_url);}
delete this.ensureDefault;};SWFUpload.prototype.loadFlash=function(){var targetElement,tempParent;if(document.getElementById(this.movieName)!==null){throw"ID "+this.movieName+" is already in use. The Flash Object could not be added";}
targetElement=document.getElementById(this.settings.button_placeholder_id)||this.settings.button_placeholder;if(targetElement==undefined){throw"Could not find the placeholder element: "+this.settings.button_placeholder_id;}
tempParent=document.createElement("div");tempParent.innerHTML=this.getFlashHTML();targetElement.parentNode.replaceChild(tempParent.firstChild,targetElement);if(window[this.movieName]==undefined){window[this.movieName]=this.getMovieElement();}};SWFUpload.prototype.getFlashHTML=function(){return['<object id="',this.movieName,'" type="application/x-shockwave-flash" data="',this.settings.flash_url,'" width="',this.settings.button_width,'" height="',this.settings.button_height,'" class="swfupload">','<param name="wmode" value="',this.settings.button_window_mode,'" />','<param name="movie" value="',this.settings.flash_url,'" />','<param name="quality" value="high" />','<param name="menu" value="false" />','<param name="allowScriptAccess" value="always" />','<param name="flashvars" value="'+this.getFlashVars()+'" />','</object>'].join("");};SWFUpload.prototype.getFlashVars=function(){var paramString=this.buildParamString();var httpSuccessString=this.settings.http_success.join(",");return["movieName=",encodeURIComponent(this.movieName),"&amp;uploadURL=",encodeURIComponent(this.settings.upload_url),"&amp;useQueryString=",encodeURIComponent(this.settings.use_query_string),"&amp;requeueOnError=",encodeURIComponent(this.settings.requeue_on_error),"&amp;httpSuccess=",encodeURIComponent(httpSuccessString),"&amp;assumeSuccessTimeout=",encodeURIComponent(this.settings.assume_success_timeout),"&amp;params=",encodeURIComponent(paramString),"&amp;filePostName=",encodeURIComponent(this.settings.file_post_name),"&amp;fileTypes=",encodeURIComponent(this.settings.file_types),"&amp;fileTypesDescription=",encodeURIComponent(this.settings.file_types_description),"&amp;fileSizeLimit=",encodeURIComponent(this.settings.file_size_limit),"&amp;fileUploadLimit=",encodeURIComponent(this.settings.file_upload_limit),"&amp;fileQueueLimit=",encodeURIComponent(this.settings.file_queue_limit),"&amp;debugEnabled=",encodeURIComponent(this.settings.debug_enabled),"&amp;buttonImageURL=",encodeURIComponent(this.settings.button_image_url),"&amp;buttonWidth=",encodeURIComponent(this.settings.button_width),"&amp;buttonHeight=",encodeURIComponent(this.settings.button_height),"&amp;buttonText=",encodeURIComponent(this.settings.button_text),"&amp;buttonTextTopPadding=",encodeURIComponent(this.settings.button_text_top_padding),"&amp;buttonTextLeftPadding=",encodeURIComponent(this.settings.button_text_left_padding),"&amp;buttonTextStyle=",encodeURIComponent(this.settings.button_text_style),"&amp;buttonAction=",encodeURIComponent(this.settings.button_action),"&amp;buttonDisabled=",encodeURIComponent(this.settings.button_disabled),"&amp;buttonCursor=",encodeURIComponent(this.settings.button_cursor)].join("");};SWFUpload.prototype.getMovieElement=function(){if(this.movieElement==undefined){this.movieElement=document.getElementById(this.movieName);}
if(this.movieElement===null){throw"Could not find Flash element";}
return this.movieElement;};SWFUpload.prototype.buildParamString=function(){var postParams=this.settings.post_params;var paramStringPairs=[];if(typeof(postParams)==="object"){for(var name in postParams){if(postParams.hasOwnProperty(name)){paramStringPairs.push(encodeURIComponent(name.toString())+"="+encodeURIComponent(postParams[name].toString()));}}}
return paramStringPairs.join("&amp;");};SWFUpload.prototype.destroy=function(){try{this.cancelUpload(null,false);var movieElement=null;movieElement=this.getMovieElement();if(movieElement&&typeof(movieElement.CallFunction)==="unknown"){for(var i in movieElement){try{if(typeof(movieElement[i])==="function"){movieElement[i]=null;}}catch(ex1){}}
try{movieElement.parentNode.removeChild(movieElement);}catch(ex){}}
window[this.movieName]=null;SWFUpload.instances[this.movieName]=null;delete SWFUpload.instances[this.movieName];this.movieElement=null;this.settings=null;this.customSettings=null;this.eventQueue=null;this.movieName=null;return true;}catch(ex2){return false;}};SWFUpload.prototype.displayDebugInfo=function(){this.debug(["---SWFUpload Instance Info---\n","Version: ",SWFUpload.version,"\n","Movie Name: ",this.movieName,"\n","Settings:\n","\t","upload_url:               ",this.settings.upload_url,"\n","\t","flash_url:                ",this.settings.flash_url,"\n","\t","use_query_string:         ",this.settings.use_query_string.toString(),"\n","\t","requeue_on_error:         ",this.settings.requeue_on_error.toString(),"\n","\t","http_success:             ",this.settings.http_success.join(", "),"\n","\t","assume_success_timeout:   ",this.settings.assume_success_timeout,"\n","\t","file_post_name:           ",this.settings.file_post_name,"\n","\t","post_params:              ",this.settings.post_params.toString(),"\n","\t","file_types:               ",this.settings.file_types,"\n","\t","file_types_description:   ",this.settings.file_types_description,"\n","\t","file_size_limit:          ",this.settings.file_size_limit,"\n","\t","file_upload_limit:        ",this.settings.file_upload_limit,"\n","\t","file_queue_limit:         ",this.settings.file_queue_limit,"\n","\t","debug:                    ",this.settings.debug.toString(),"\n","\t","prevent_swf_caching:      ",this.settings.prevent_swf_caching.toString(),"\n","\t","button_placeholder_id:    ",this.settings.button_placeholder_id.toString(),"\n","\t","button_placeholder:       ",(this.settings.button_placeholder?"Set":"Not Set"),"\n","\t","button_image_url:         ",this.settings.button_image_url.toString(),"\n","\t","button_width:             ",this.settings.button_width.toString(),"\n","\t","button_height:            ",this.settings.button_height.toString(),"\n","\t","button_text:              ",this.settings.button_text.toString(),"\n","\t","button_text_style:        ",this.settings.button_text_style.toString(),"\n","\t","button_text_top_padding:  ",this.settings.button_text_top_padding.toString(),"\n","\t","button_text_left_padding: ",this.settings.button_text_left_padding.toString(),"\n","\t","button_action:            ",this.settings.button_action.toString(),"\n","\t","button_disabled:          ",this.settings.button_disabled.toString(),"\n","\t","custom_settings:          ",this.settings.custom_settings.toString(),"\n","Event Handlers:\n","\t","swfupload_loaded_handler assigned:  ",(typeof this.settings.swfupload_loaded_handler==="function").toString(),"\n","\t","file_dialog_start_handler assigned: ",(typeof this.settings.file_dialog_start_handler==="function").toString(),"\n","\t","file_queued_handler assigned:       ",(typeof this.settings.file_queued_handler==="function").toString(),"\n","\t","file_queue_error_handler assigned:  ",(typeof this.settings.file_queue_error_handler==="function").toString(),"\n","\t","upload_start_handler assigned:      ",(typeof this.settings.upload_start_handler==="function").toString(),"\n","\t","upload_progress_handler assigned:   ",(typeof this.settings.upload_progress_handler==="function").toString(),"\n","\t","upload_error_handler assigned:      ",(typeof this.settings.upload_error_handler==="function").toString(),"\n","\t","upload_success_handler assigned:    ",(typeof this.settings.upload_success_handler==="function").toString(),"\n","\t","upload_complete_handler assigned:   ",(typeof this.settings.upload_complete_handler==="function").toString(),"\n","\t","debug_handler assigned:             ",(typeof this.settings.debug_handler==="function").toString(),"\n"].join(""));};SWFUpload.prototype.addSetting=function(name,value,default_value){if(value==undefined){return(this.settings[name]=default_value);}else{return(this.settings[name]=value);}};SWFUpload.prototype.getSetting=function(name){if(this.settings[name]!=undefined){return this.settings[name];}
return"";};SWFUpload.prototype.callFlash=function(functionName,argumentArray){argumentArray=argumentArray||[];var movieElement=this.getMovieElement();var returnValue,returnString;try{returnString=movieElement.CallFunction('<invoke name="'+functionName+'" returntype="javascript">'+__flash__argumentsToXML(argumentArray,0)+'</invoke>');returnValue=eval(returnString);}catch(ex){throw"Call to "+functionName+" failed";}
if(returnValue!=undefined&&typeof returnValue.post==="object"){returnValue=this.unescapeFilePostParams(returnValue);}
return returnValue;};SWFUpload.prototype.selectFile=function(){this.callFlash("SelectFile");};SWFUpload.prototype.selectFiles=function(){this.callFlash("SelectFiles");};SWFUpload.prototype.startUpload=function(fileID){this.callFlash("StartUpload",[fileID]);};SWFUpload.prototype.cancelUpload=function(fileID,triggerErrorEvent){if(triggerErrorEvent!==false){triggerErrorEvent=true;}
this.callFlash("CancelUpload",[fileID,triggerErrorEvent]);};SWFUpload.prototype.stopUpload=function(){this.callFlash("StopUpload");};SWFUpload.prototype.getStats=function(){return this.callFlash("GetStats");};SWFUpload.prototype.setStats=function(statsObject){this.callFlash("SetStats",[statsObject]);};SWFUpload.prototype.getFile=function(fileID){if(typeof(fileID)==="number"){return this.callFlash("GetFileByIndex",[fileID]);}else{return this.callFlash("GetFile",[fileID]);}};SWFUpload.prototype.addFileParam=function(fileID,name,value){return this.callFlash("AddFileParam",[fileID,name,value]);};SWFUpload.prototype.removeFileParam=function(fileID,name){this.callFlash("RemoveFileParam",[fileID,name]);};SWFUpload.prototype.setUploadURL=function(url){this.settings.upload_url=url.toString();this.callFlash("SetUploadURL",[url]);};SWFUpload.prototype.setPostParams=function(paramsObject){this.settings.post_params=paramsObject;this.callFlash("SetPostParams",[paramsObject]);};SWFUpload.prototype.addPostParam=function(name,value){this.settings.post_params[name]=value;this.callFlash("SetPostParams",[this.settings.post_params]);};SWFUpload.prototype.removePostParam=function(name){delete this.settings.post_params[name];this.callFlash("SetPostParams",[this.settings.post_params]);};SWFUpload.prototype.setFileTypes=function(types,description){this.settings.file_types=types;this.settings.file_types_description=description;this.callFlash("SetFileTypes",[types,description]);};SWFUpload.prototype.setFileSizeLimit=function(fileSizeLimit){this.settings.file_size_limit=fileSizeLimit;this.callFlash("SetFileSizeLimit",[fileSizeLimit]);};SWFUpload.prototype.setFileUploadLimit=function(fileUploadLimit){this.settings.file_upload_limit=fileUploadLimit;this.callFlash("SetFileUploadLimit",[fileUploadLimit]);};SWFUpload.prototype.setFileQueueLimit=function(fileQueueLimit){this.settings.file_queue_limit=fileQueueLimit;this.callFlash("SetFileQueueLimit",[fileQueueLimit]);};SWFUpload.prototype.setFilePostName=function(filePostName){this.settings.file_post_name=filePostName;this.callFlash("SetFilePostName",[filePostName]);};SWFUpload.prototype.setUseQueryString=function(useQueryString){this.settings.use_query_string=useQueryString;this.callFlash("SetUseQueryString",[useQueryString]);};SWFUpload.prototype.setRequeueOnError=function(requeueOnError){this.settings.requeue_on_error=requeueOnError;this.callFlash("SetRequeueOnError",[requeueOnError]);};SWFUpload.prototype.setHTTPSuccess=function(http_status_codes){if(typeof http_status_codes==="string"){http_status_codes=http_status_codes.replace(" ","").split(",");}
this.settings.http_success=http_status_codes;this.callFlash("SetHTTPSuccess",[http_status_codes]);};SWFUpload.prototype.setAssumeSuccessTimeout=function(timeout_seconds){this.settings.assume_success_timeout=timeout_seconds;this.callFlash("SetAssumeSuccessTimeout",[timeout_seconds]);};SWFUpload.prototype.setDebugEnabled=function(debugEnabled){this.settings.debug_enabled=debugEnabled;this.callFlash("SetDebugEnabled",[debugEnabled]);};SWFUpload.prototype.setButtonImageURL=function(buttonImageURL){if(buttonImageURL==undefined){buttonImageURL="";}
this.settings.button_image_url=buttonImageURL;this.callFlash("SetButtonImageURL",[buttonImageURL]);};SWFUpload.prototype.setButtonDimensions=function(width,height){this.settings.button_width=width;this.settings.button_height=height;var movie=this.getMovieElement();if(movie!=undefined){movie.style.width=width+"px";movie.style.height=height+"px";}
this.callFlash("SetButtonDimensions",[width,height]);};SWFUpload.prototype.setButtonText=function(html){this.settings.button_text=html;this.callFlash("SetButtonText",[html]);};SWFUpload.prototype.setButtonTextPadding=function(left,top){this.settings.button_text_top_padding=top;this.settings.button_text_left_padding=left;this.callFlash("SetButtonTextPadding",[left,top]);};SWFUpload.prototype.setButtonTextStyle=function(css){this.settings.button_text_style=css;this.callFlash("SetButtonTextStyle",[css]);};SWFUpload.prototype.setButtonDisabled=function(isDisabled){this.settings.button_disabled=isDisabled;this.callFlash("SetButtonDisabled",[isDisabled]);};SWFUpload.prototype.setButtonAction=function(buttonAction){this.settings.button_action=buttonAction;this.callFlash("SetButtonAction",[buttonAction]);};SWFUpload.prototype.setButtonCursor=function(cursor){this.settings.button_cursor=cursor;this.callFlash("SetButtonCursor",[cursor]);};SWFUpload.prototype.queueEvent=function(handlerName,argumentArray){if(argumentArray==undefined){argumentArray=[];}else if(!(argumentArray instanceof Array)){argumentArray=[argumentArray];}
var self=this;if(typeof this.settings[handlerName]==="function"){this.eventQueue.push(function(){this.settings[handlerName].apply(this,argumentArray);});setTimeout(function(){self.executeNextEvent();},0);}else if(this.settings[handlerName]!==null){throw"Event handler "+handlerName+" is unknown or is not a function";}};SWFUpload.prototype.executeNextEvent=function(){var f=this.eventQueue?this.eventQueue.shift():null;if(typeof(f)==="function"){f.apply(this);}};SWFUpload.prototype.unescapeFilePostParams=function(file){var reg=/[$]([0-9a-f]{4})/i;var unescapedPost={};var uk;if(file!=undefined){for(var k in file.post){if(file.post.hasOwnProperty(k)){uk=k;var match;while((match=reg.exec(uk))!==null){uk=uk.replace(match[0],String.fromCharCode(parseInt("0x"+match[1],16)));}
unescapedPost[uk]=file.post[k];}}
file.post=unescapedPost;}
return file;};SWFUpload.prototype.testExternalInterface=function(){try{return this.callFlash("TestExternalInterface");}catch(ex){return false;}};SWFUpload.prototype.flashReady=function(){var movieElement=this.getMovieElement();if(!movieElement){this.debug("Flash called back ready but the flash movie can't be found.");return;}
this.cleanUp(movieElement);this.queueEvent("swfupload_loaded_handler");};SWFUpload.prototype.cleanUp=function(movieElement){try{if(this.movieElement&&typeof(movieElement.CallFunction)==="unknown"){this.debug("Removing Flash functions hooks (this should only run in IE and should prevent memory leaks)");for(var key in movieElement){try{if(typeof(movieElement[key])==="function"){movieElement[key]=null;}}catch(ex){}}}}catch(ex1){}
window["__flash__removeCallback"]=function(instance,name){try{if(instance){instance[name]=null;}}catch(flashEx){}};};SWFUpload.prototype.fileDialogStart=function(){this.queueEvent("file_dialog_start_handler");};SWFUpload.prototype.fileQueued=function(file){file=this.unescapeFilePostParams(file);this.queueEvent("file_queued_handler",file);};SWFUpload.prototype.fileQueueError=function(file,errorCode,message){file=this.unescapeFilePostParams(file);this.queueEvent("file_queue_error_handler",[file,errorCode,message]);};SWFUpload.prototype.fileDialogComplete=function(numFilesSelected,numFilesQueued,numFilesInQueue){this.queueEvent("file_dialog_complete_handler",[numFilesSelected,numFilesQueued,numFilesInQueue]);};SWFUpload.prototype.uploadStart=function(file){file=this.unescapeFilePostParams(file);this.queueEvent("return_upload_start_handler",file);};SWFUpload.prototype.returnUploadStart=function(file){var returnValue;if(typeof this.settings.upload_start_handler==="function"){file=this.unescapeFilePostParams(file);returnValue=this.settings.upload_start_handler.call(this,file);}else if(this.settings.upload_start_handler!=undefined){throw"upload_start_handler must be a function";}
if(returnValue===undefined){returnValue=true;}
returnValue=!!returnValue;this.callFlash("ReturnUploadStart",[returnValue]);};SWFUpload.prototype.uploadProgress=function(file,bytesComplete,bytesTotal){file=this.unescapeFilePostParams(file);this.queueEvent("upload_progress_handler",[file,bytesComplete,bytesTotal]);};SWFUpload.prototype.uploadError=function(file,errorCode,message){file=this.unescapeFilePostParams(file);this.queueEvent("upload_error_handler",[file,errorCode,message]);};SWFUpload.prototype.uploadSuccess=function(file,serverData,responseReceived){file=this.unescapeFilePostParams(file);this.queueEvent("upload_success_handler",[file,serverData,responseReceived]);};SWFUpload.prototype.uploadComplete=function(file){file=this.unescapeFilePostParams(file);this.queueEvent("upload_complete_handler",file);};SWFUpload.prototype.debug=function(message){this.queueEvent("debug_handler",message);};SWFUpload.prototype.debugMessage=function(message){if(this.settings.debug){var exceptionMessage,exceptionValues=[];if(typeof message==="object"&&typeof message.name==="string"&&typeof message.message==="string"){for(var key in message){if(message.hasOwnProperty(key)){exceptionValues.push(key+": "+message[key]);}}
exceptionMessage=exceptionValues.join("\n")||"";exceptionValues=exceptionMessage.split("\n");exceptionMessage="EXCEPTION: "+exceptionValues.join("\nEXCEPTION: ");SWFUpload.Console.writeLine(exceptionMessage);}else{SWFUpload.Console.writeLine(message);}}};SWFUpload.Console={};SWFUpload.Console.writeLine=function(message){var console,documentForm;try{console=document.getElementById("SWFUpload_Console");if(!console){documentForm=document.createElement("form");document.getElementsByTagName("body")[0].appendChild(documentForm);console=document.createElement("textarea");console.id="SWFUpload_Console";console.style.fontFamily="monospace";console.setAttribute("wrap","off");console.wrap="off";console.style.overflow="auto";console.style.width="700px";console.style.height="350px";console.style.margin="5px";documentForm.appendChild(console);}
console.value+=message+"\n";console.scrollTop=console.scrollHeight-console.clientHeight;}catch(ex){alert("Exception: "+ex.name+" Message: "+ex.message);}};$(document).ready(function(){if($("#broker_search").length){if($("#hdBrokerSearchCondition").val()!=null&&$("#hdBrokerSearchCondition").val()!="")
BindDataFrm($("#hdBrokerSearchCondition").val());$("#cmbCategory").change(function(){LoadTypeofBDS($("#cmbCategory").val(),0);LoadPrj($("#cmbCategory").val(),$("#cmbCity").val(),$("#cmbDistrict").val(),0);});$("#cmbTypeBDS").change(function(){var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadPrj(cat,$("#cmbCity").val(),$("#cmbDistrict").val(),0);});$("#cmbCity").change(function(){LoadDistricts($("#cmbCity").val(),0);var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadPrj(cat,$("#cmbCity").val(),0,0);});$("#cmbDistrict").change(function(){var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadPrj(cat,$("#cmbCity").val(),$("#cmbDistrict").val(),0);});}
if($("#demand_search").length){if($('#hdSearch').length){BindDemandSearch($('#hdSearch').val());$('#cboRootCat').change(function(){LoadSubCategory($(this).val(),0);});}}
if($("#divSearchRe").length){ShowTab(1);$("#cboTypeRe").change(function(){LoadProjects($("#cboTypeRe").val(),$("#cboCity").val(),$("#cboDistrict").val(),0,"cboListProj");SearchCount();});$("#cboCity").change(function(){var strUrl='/Ajax/DistrictOptions/?city='+$("#cboCity").val()+'&district=0';$.ajax({url:strUrl,success:function(html){$("#cboDistrict").html(html);LoadProjects($("#cboTypeRe").val(),$("#cboCity").val(),0,0,"cboListProj");SearchCount();}});});$("#cboDistrict").change(function(){LoadProjects($("#cboTypeRe").val(),$("#cboCity").val(),$("#cboDistrict").val(),0,"cboListProj");SearchCount();});$("#cmbCategory").change(function(){$.ajax({url:'/Ajax/CategoryOptions/?parent='+$("#cmbCategory").val()+"&category=0",success:function(html){$("#cmbTypeBDS").html(html);LoadProjects($("#cmbCategory").val(),$("#cmbCity").val(),$("#cmbDistrict").val(),0,"cmbProject");}});});$("#cmbTypeBDS").change(function(){var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadProjects(cat,$("#cmbCity").val(),$("#cmbDistrict").val(),0,"cmbProject");});$("#cmbCity").change(function(){$.ajax({url:'/Ajax/DistrictOptions/?city='+$("#cmbCity").val()+'&district=0',success:function(html){$("#cmbDistrict").html(html);var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadProjects(cat,$("#cmbCity").val(),0,0,"cmbProject");}});});$("#cmbDistrict").change(function(){var cat=$("#cmbTypeBDS").val()!=""?$("#cmbTypeBDS").val():$("#cmbCategory").val();LoadProjects(cat,$("#cmbCity").val(),$("#cmbDistrict").val(),0,"cmbProject");});}
if($("#product_search").length){BindFrmSearch($("#hdSearch").val());$('#cboCategory').change(function(){ChangeCat($('#cboCategory').val(),0);LoadProjects($('#cboCategory').val(),$("#cboCity").val(),$("#cboDistrict").val(),0,"cboListProj");GetPrice($('#cboCategory').val(),"");});$("#cboTypeRe").change(function(){var cat=$(this).val()!=""?$(this).val():$('#cboCategory').val();LoadProjects($(this).val(),$("#cboCity").val(),$("#cboDistrict").val(),0,"cboListProj");});$("#cboCity").change(function(){GetDistrict($("#cboCity").val(),0);var cat=$('#cboTypeRe').val()!=""?$('#cboTypeRe').val():$('#cboCategory').val();LoadProjects(cat,$(this).val(),0,0,"cboListProj");});$("#cboDistrict").change(function(){var cat=$('#cboTypeRe').val()!=""?$('#cboTypeRe').val():$('#cboCategory').val();LoadProjects(cat,$("#cboCity").val(),$(this).val(),0,"cboListProj");});}
if($("#user_manage_product").length){$("#cboTypeOfRe").change(function(){$.ajax({url:'/Ajax/CategoryOptions/?parent='+$(this).val()+"&category=0",success:function(html){$("#cboType").html(html);}});$.ajax({url:'/Ajax/UnitPriceOptions/?category='+$(this).val()+'&price=',success:function(html){$("#slCostUnit").html(html);}});var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),$("#cboDist").val(),0,"cboInProject");});$("#cboType").change(function(){$("#addition_attr").getAdditionAttribute($(this).val());var cat=$(this).val()!=""?$(this).val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),$("#cboDist").val(),0,"cboInProject");});$("#cboCity").change(function(){$.ajax({url:'/Ajax/DistrictOptions/?city='+$(this).val()+'&district=0',success:function(html){$("#cboDist").html(html);var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),0,0,"cboInProject");}});});$("#cboDist").change(function(){var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),$(this).val(),0,"cboInProject");});$("#txtCost").blur(function(){if($(this).val()){$("#slCostUnit").rules("add",{required:true,messages:{required:MSGUser.MUST_CHOOSE}});}
else{$("#slCostUnit").rules("remove","required");$("#slCostUnit").val("");if($("#slCostUnit").hasClass('error'))$("#slCostUnit").removeClass('error');}});$("div[class='rowHeader']").click(function(){var content=$("div[class='rowContent']");var header=$("div[class='rowHeader']");for(var i=0;i<header.length;i++){if(header[i]==this){$(content[i]).slideToggle('slow',function(){});}}});$("#txtTitle").mouseover(function(){$("#helpMessageTitle").show();});$("#txtTitle").mouseout(function(){$("#helpMessageTitle").hide();});$("#textdes").mouseover(function(){$("#helpMessageContent").show();});$("#textdes").mouseout(function(){$("#helpMessageContent").hide();});$("#txtContactName").mouseover(function(){$("#helpMessageContactName").show();});$("#txtContactName").mouseout(function(){$("#helpMessageContactName").hide();});$("#btnCancel").click(function(){window.location="/home";});$("#reloadCapcha").click(function(){$("#imageCaptcha").attr('src',MEDIA.Source+"/images/loading.gif");$("#imageCaptcha").reloadCapchaImg();});$("#receivedAdEmailYN").click(function(){$(this).val($(this).attr('checked'));});$("#receivedAdMsgYN").click(function(){$(this).val($(this).attr('checked'));});}
if($("#user_manage_demand").length){$("#cboTypeOfRe").change(function(){$.ajax({url:'/Ajax/CategoryOptions/?parent='+$(this).val()+"&category=0",success:function(html){$("#cboType").html(html);}});$.ajax({url:'/Ajax/UnitPriceOptions/?category='+$(this).val()+'&price=',success:function(html){$("#txtCostUnit").html(html);}});LoadProjects($("#cboTypeOfRe").val(),$("#cboCity").val(),$("#cboDist").val(),0,"cboInProject");});$("#cboType").change(function(){var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),$("#cboDist").val(),0,"cboInProject");});$("#cboCity").change(function(){$.ajax({url:'/Ajax/DistrictOptions/?city='+$(this).val()+'&district=0',success:function(html){$("#cboDist").html(html);var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),0,0,"cboInProject");}});});$("#cboDist").change(function(){var cat=$("#cboType").val()!=""?$("#cboType").val():$("#cboTypeOfRe").val();LoadProjects(cat,$("#cboCity").val(),$(this).val(),0,"cboInProject");});$("div[class='rowHeader']").click(function(){var content=$("div[class='rowContent']");var header=$("div[class='rowHeader']");for(var i=0;i<header.length;i++){if(header[i]==this){$(content[i]).slideToggle('slow',function(){});}}});$("#txtTitle").mouseover(function(){$("#helpMessageTitle").show();});$("#txtTitle").mouseout(function(){$("#helpMessageTitle").hide();});$("#textdes").mouseover(function(){var py=$("#leftArea").position().top;var y=$(this).position().top;$("#helpMessageTitle1").css("margin-top",Math.abs(y-py)+"px");$("#helpMessageTitle1").show();});$("#textdes").mouseout(function(){$("#helpMessageTitle1").hide();});$("#txtContactName").mouseover(function(){$("#helpMessageContactName").show();});$("#txtContactName").mouseout(function(){$("#helpMessageContactName").hide();});$("#divArea").mouseover(function(){var py=$(this).parent().position().top;var y=$(this).position().top;$("#helpMessageArea").css("margin-top",Math.abs(y-py)+"px");$("#helpMessageArea").css("display","block");});$("#divArea").mouseout(function(){$("#helpMessageArea").hide();});$("#txtBeginDate").datepicker({dateFormat:'dd/mm/yy',maxDate:'+365',minDate:'+0',onClose:function(dateText,inst){_handerChangeBeginDate(dateText,inst);}});$("#txtEndDate").datepicker({dateFormat:'dd/mm/yy',maxDate:'+365',minDate:'+0',onClose:function(dateText,inst){_handerChangeEndDate(dateText,inst);}});$("#btnCancel").click(function(){$("#dialog").html(MSGUser.DONT_WANT_POST_NEWS);$("#dialog").dialog('destroy');$("#dialog").dialog({modal:true,width:200,buttons:{'Đồng ý':function(){window.location="/Users";$(this).dialog('close');},'Hủy':function(){$(this).dialog('close');}}});});$("#reloadCapcha").click(function(){$("#imageCaptcha").attr('src',MEDIA.Source+"/images/loading.gif");$("#imageCaptcha").reloadCapchaImg();});$("#chckVipYN").click(function(){$(this).val($(this).attr('checked'));});}
if($("#sub-page-menus").length){var location=window.location;if($("#hidUrl").length&&$("#hidUrl").val!="")
{location=$("#hidUrl").val();}
$.ajax({url:'/Ajax/DoLoadMenu/',data:"url="+location,success:function(html){$("#sub-page-menus").html(html);$("#sub-page-menus ul.dropdown li").DropDownMenu();$("#page-nav li a").each(function(){var curURL=window.location.href.toString();var alink=$(this).attr("href");if(alink.indexOf(curURL)>-1||curURL.indexOf(alink)>-1){$(this).parents("li").attr("class","li_selected");}});}})}});function load(url){window.open(url);}
function getId(id){$.post("/Products/IncreaseUserClick/"+id,"html");}
function DisplaySearchAdvan(mnSearchAv,divLabelS){x=document.getElementById(mnSearchAv);y=document.getElementById(divLabelS);if(x.style.display=="none"){x.style.display="";updateSpanWithValue(MSGProduct.REMOVE_ADVANCE_SEARCH);}
else{x.style.display="none";updateSpanWithValue(MSGProduct.ADVANCE_SEARCH);}}
function updateSpanWithValue(value){var span=document.getElementById('lblSearch');var text=document.createTextNode(value);if(span.childNodes.length==0){span.appendChild(text)}
else{span.firstChild.nodeValue=value;}}
function ChangeCat(catId,isCount){var strUrl='/Ajax/CategoryList/?parent='+catId.value+"&category=0";$.ajax({url:strUrl,cache:false,success:function(html){$("#listCategoryRe").attr("innerHTML",html);$("#cboTypeRe").change(function(){if(isCount==true){SearchCount();}
LoadProjects($("#cboTypeRe").val(),$("#cboCity").val(),$("#cboDistrict").val(),0);});}});}
function GetPrice(catId,isCount){var strUrl='/Ajax/PriceList/?cat='+catId.value+'&price=-1';$.ajax({url:strUrl,cache:false,success:function(html){$("#divPrice").attr("innerHTML",html);if(isCount==true){$("#cboPrice").change(function(){SearchCount();});}}});}
function BindDataFrm(bindValue){var dataArr=bindValue.split("#~#");var len=dataArr.length;if(len==6){if(dataArr[0]>0){$('#cmbCategory').val(dataArr[0]);LoadTypeofBDS(dataArr[0],dataArr[1]);}
if(dataArr[2]!="CN"&&dataArr[2]!="MT"&&dataArr[2]!="MN"&&dataArr[2]!="MB"){$('#cmbCity').val(dataArr[2]);LoadDistricts(dataArr[2],dataArr[3]);}
if(dataArr[4]>0){LoadPrj(dataArr[1],dataArr[2],dataArr[3],dataArr[4]);}
if(dataArr[5]!=""){$('#txtBrokerName').val(dataArr[5]);}}}
function LoadTypeofBDS(catID,svalue){if(catID==null||catID=="")catID=0;$.ajax({url:'/Ajax/CategoryOptions/?parent='+catID+'&category='+svalue,success:function(html){$("#cmbTypeBDS").html(html);}});}
function LoadDistricts(city,district){$.ajax({url:'/Ajax/DistrictOptions/?city='+city+'&district='+district,success:function(html){$("#cmbDistrict").html(html);}});}
function LoadPrj(cat,city,district,project){$.ajax({url:'/Ajax/ProjectOptions/?cat='+cat+'&city='+city+'&district='+district+'&project='+project,success:function(html){$("#cmbProject").html(html);}});}
function BrokShowDiv(){$("#broker_intro").hide();$("#broker_contact").show();$("#divIntro").attr("class","listitem");$("#divContact").attr("class","listitem_over");}
function BrokHideDiv(){$("#broker_intro").show();$("#broker_contact").hide();$("#divIntro").attr("class","listitem_over");$("#divContact").attr("class","listitem");}
function LoadSubCategory(parent,selected){$.get('/Ajax/CategoryOptions/?parent='+parent+"&category="+selected,function(html){$("#cboDmType").html(html);},"html");}
function BindDemandSearch(sValue){var rowArr=sValue.split("#~#");var rowcount=rowArr.length;if(rowcount==3){if(parseInt(rowArr[0])>0&&parseInt(rowArr[1])>0){$("#cboRootCat").val(rowArr[0]);LoadSubCategory(rowArr[0],rowArr[1]);}
if(rowArr[2]!="CN"&&rowArr[2]!="MT"&&rowArr[2]!="MN"&&rowArr[2]!="MB"){$("#cboDmCity").val(rowArr[2]);}}}
function SearchCount(){return;sdata=$("#frmSearchProduct").serialize();var strUrl='/Products/SearchCount/';$.ajax({type:'POST',url:strUrl,data:sdata,success:function(html){$("#searchCount").html(html);;}});}
function ShowTab1(id){var cboCategory=document.getElementById("cboCategory");switch(id){case 1:$("#divOfSeach").show();$("#divReSaler").hide();$("#divTabRESale").attr("class","divSearchAct");$("#divTabREBorrow").attr("class","divSearchInAct");$("#divTabRESaler").attr("class","divSearchInAct");ChangeClassName('divTabREBorrow',false);ChangeClassName('divTabRESale',true);ChangeClassName('divTabRESaler',false);cboCategory.value=cboCategory.options[1].value;ChangeCategory(cboCategory,true);GetPrices(cboCategory,true);SearchCount();break;case 2:$("#divOfSeach").show();$("#divReSaler").hide();$("#divTabRESale").attr("class","divSearchInAct");$("#divTabREBorrow").attr("class","divSearchAct");$("#divTabRESaler").attr("class","divSearchInAct");ChangeClassName('divTabREBorrow',true);ChangeClassName('divTabRESale',false);ChangeClassName('divTabRESaler',false);cboCategory.value=cboCategory.options[2].value;ChangeCategory(cboCategory,true);GetPrices(cboCategory,true);SearchCount();break;case 3:$("#divOfSeach").hide();$("#divReSaler").show();$("#divTabRESale").attr("class","divSearchInAct");$("#divTabREBorrow").attr("class","divSearchInAct");$("#divTabRESaler").attr("class","divSearchAct");ChangeClassName('divTabREBorrow',false);ChangeClassName('divTabRESale',false);ChangeClassName('divTabRESaler',true);break;}}

function ShowTab(id){
	var cboCategory=document.getElementById("cboCategory");
	switch(id){
	case 1:
		$("#divOfSeach").show();
		$("#divReSaler").hide();
		$("#divTabRESale").attr("class","divSearchAct");
		$("#divTabREBorrow").attr("class","divSearchInAct");
		$("#divTabRESaler").attr("class","divSearchInAct");
		$("#tab-line_1").css("display", "none");
		$("#tab-line_2").css("display", "block");
		ChangeClassName('divTabREBorrow',false);
		ChangeClassName('divTabRESale',true);
		ChangeClassName('divTabRESaler',false);
		cboCategory.value=cboCategory.options[1].value;ChangeCategory(cboCategory,true);
		GetPrices(cboCategory,true);SearchCount();
		if ($.browser.opera ||($.browser.msie && $.browser.version.substr(0,1)<=7))
		{
		}
		else{
		    $("#cboTypeRe option[value='']").attr("value", "0");
		    $("#cboCity option[value='']").attr("value", "0");
		    $("#cboDistrict option[value='']").attr("value", "0");
		    $("#cboArea option[value='']").attr("value", "0");
		    $("#cboPrice option[value='']").attr("value", "0");
		    $("#cboBedRoom option[value='']").attr("value", "0");
		    $("#cboHomeDirection option[value='']").attr("value", "0");
		    $("#cboListProj option[value='']").attr("value", "0");
		    $("#cmbCategory option[value='']").attr("value", "0");
		    $("#cmbTypeBDS option[value='']").attr("value", "0");
		    $("#cmbCity option[value='']").attr("value", "0");
		    $("#cmbDistrict option[value='']").attr("value", "0");
		    $("#cmbProject option[value='']").attr("value", "0");
		}
		break;
	case 2:
		$("#divOfSeach").show();
		$("#divReSaler").hide();
		$("#divTabRESale").attr("class","divSearchInAct");
		$("#divTabREBorrow").attr("class","divSearchAct");
		$("#divTabRESaler").attr("class","divSearchInAct");
		$("#tab-line_1").css("display", "none");
		$("#tab-line_2").css("display", "none");
		ChangeClassName('divTabREBorrow',true);
		ChangeClassName('divTabRESale',false);
		ChangeClassName('divTabRESaler',false);
		cboCategory.value=cboCategory.options[2].value;ChangeCategory(cboCategory,true);
		GetPrices(cboCategory,true);SearchCount();
		break;
	case 3:
		$("#divOfSeach").hide();
		$("#divReSaler").show();
		$("#divTabRESale").attr("class","divSearchInAct");
		$("#divTabREBorrow").attr("class","divSearchInAct");
		$("#divTabRESaler").attr("class","divSearchAct");
		$("#tab-line_1").css("display", "block");
		$("#tab-line_2").css("display", "none");
		ChangeClassName('divTabREBorrow',false);
		ChangeClassName('divTabRESale',false);ChangeClassName('divTabRESaler',true);
		break;
	}
}

function ChangeClassName(divName,isActive){var o=document.getElementById(divName).getElementsByTagName("div");if(isActive==true){for(var i=0;i<o.length;i++){if(o[i].className=="tabLeftInAct"){o[i].className="tabLeftAct";}
else
if(o[i].className=="tabCenterInAct"){o[i].className="tabCenterAct";}
else
if(o[i].className=="tabRightInAct"){o[i].className="tabRightAct";}}}
else{for(var i=0;i<o.length;i++){if(o[i].className=="tabLeftAct"){o[i].className="tabLeftInAct";}
else
if(o[i].className=="tabCenterAct"){o[i].className="tabCenterInAct";}
else
if(o[i].className=="tabRightAct"){o[i].className="tabRightInAct";}}}}
function DisplaySearchAdvance(){if($("#lblSearch").text()==MSGProduct.REMOVE_ADVANCE_SEARCH){$("#lblSearch").text(MSGProduct.ADVANCE_SEARCH);$(".adv-search").css("display","none");}else{$("#lblSearch").text(MSGProduct.REMOVE_ADVANCE_SEARCH);$(".adv-search").css("display","block");}}
function DisplaySearchAdvanceHome(){if($("#lblSearch").text()=="Bỏ tìm nâng cao"){$("#lblSearch").text("Tìm nâng cao");$(".adv-search").css("display","none");}else{$("#lblSearch").text("Bỏ tìm nâng cao");$(".adv-search").css("display","block");}}
function ChangeCategory(catId){var strUrl='/Ajax/CategoryOptions/?parent='+catId.value+"&category=0";$.ajax({url:strUrl,async:false,success:function(html){$("#cboTypeRe").html(html);}});}
function GetPrices(catId){var strUrl='/Ajax/PriceOptions/?cat='+catId.value+'&price=';$.ajax({url:strUrl,success:function(html){$("#cboPrice").html(html);}});}
function updateSpanWithValue(value){var span=document.getElementById('lblSearch');var text=document.createTextNode(value);if(span.childNodes.length==0)
span.appendChild(text)
else
span.firstChild.nodeValue=value;}
function ChangeCat(parent,currentCategory){$.ajax({url:'/Ajax/CategoryOptions/?parent='+parent+"&category="+currentCategory,success:function(html){$("#cboTypeRe").html(html);}});}
function GetDistrict(city,district){var strUrl='/Ajax/DistrictOptions/?city='+city+'&district='+district;$.ajax({url:strUrl,success:function(html){$("#cboDistrict").html(html);}});}
function GetPrice(cateogry,currentPrice){$.ajax({url:'/Ajax/PriceOptions/?cat='+cateogry+'&price='+currentPrice,success:function(html){$("#cboPrice").html(html);}});}
function LoadProjects(cat,city,district,project,selectid){var strUrl='/Ajax/ProjectOptions/?cat='+cat+'&city='+city+'&district='+district+'&project='+project;$.ajax({url:strUrl,success:function(html){$("#"+selectid).html(html);}});}
function BindFrmSearch(sValue){var rowArr=sValue.split("#~#");var rowcount=rowArr.length;var category=document.getElementById("cboCategory");var cboTypeRe=document.getElementById("cboTypeRe");var cityCode=document.getElementById("cboCity");var cboDistrict=document.getElementById("cboDistrict");var cboArea=document.getElementById("cboArea");var cboPrice=document.getElementById("cboPrice");var cboBedRoom=document.getElementById("cboBedRoom");var cboHomeDirection=document.getElementById("cboHomeDirection");var cboListProj=document.getElementById("cboListProj");if(rowcount==9){if(parseInt(rowArr[0])>0&&parseInt(rowArr[1])>0){category.value=rowArr[0];ChangeCat(rowArr[0],rowArr[1]);}
if(rowArr[2]!="CN"&&rowArr[2]!="MT"&&rowArr[2]!="MN"&&rowArr[2]!="MB"){cityCode.value=rowArr[2];GetDistrict(rowArr[2],rowArr[3]);}
if(parseInt(rowArr[4])>0){cboArea.value=rowArr[4];}
if(parseInt(rowArr[5])>=0){GetPrice(rowArr[0],rowArr[5]);}
if(parseInt(rowArr[6])>0){cboBedRoom.value=rowArr[6];}
if(parseInt(rowArr[7])>0){cboHomeDirection.value=rowArr[7];}
if(parseInt(rowArr[8])>0){LoadProjects(rowArr[1],rowArr[2],rowArr[3],rowArr[8],"cboListProj");}}}
(function($){$.fn.reloadCapchaImg=function(){return this.each(function(){try{var tag=this.tagName.toLowerCase();if(tag!='img')return false;$(this).attr('src','/Users/RequestCaptcha?'+parseInt(Math.random()*191+1));$("#secode").resetForm();}
catch(Error){alert(Error+' có lỗi. Ấn F5 để thử lại!');}});}
$.fn.disableSpellChk=function(){return this.each(function(){var type=this.type,tag=this.tagName.toLowerCase();if(tag=='form')
return $(':input',this).disableSpellChk();if(type=='text'||type=='textarea')
$(this).attr("spellcheck","false");});}
$.fn.getlistCheckedAttributes=function(){var seperators=";";var regexPattern="chkAttr";var attributesCheckedId=new String();$.each($("input:checked",this),function(i,item){attributesCheckedId+=new String($(item).attr('id')).replace(regexPattern,'')+seperators;});return attributesCheckedId;}
$.fn.getAdditionAttribute=function(aRealEstateType){var obj=$(this);$.ajax({url:"/Users/getListAttrF1/"+new String(aRealEstateType),dataType:"json",success:function(list){var f1="<div class='support'>{0}{1}</div>";var f21="<div class='support1'>{0}</div>";var f22="<div class='support2'>{0}</div>";var f3="<div class='child'><input id='chkAttr{0}' type='{1}' />{2}</div>";var html=new String();$.each(list,function(i,a){html+=new String(f1)
.replace("{0}",new String(f21).replace("{0}",a.nameGroup))
.replace("{1}",new String(f22));var childs=new String();$.each(a.listChild,function(j,c){childs+=new String(f3)
.replace("{0}",c.code)
.replace("{1}",c.type)
.replace("{2}",c.name);});html=new String(html).replace("{0}",childs);});$(obj).html(html);},error:function(){alert('error');$(obj).html("&nbsp");}});}})(jQuery);;(function($){Array.prototype.contains=function(a){for(var i=0;i<this.length;i++){if(this[i]==a){return true;}}
return false;}
String.prototype.isEmail=function(){this._emailRegex=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;return this._emailRegex.test(this);}
function TinyMailSystem(){this._o=null;this._defines={inbox:0,outbox:1,send:2,en:'en',vi:'vi',prefix:{inbox:'inbox_',outbox:'outbox_'},exist:{inbox:false,outbox:false,send:false}}
this._defaults={user_id:0,lang:'vi',paging:{inbox:{pSize:5,pNum:0},outbox:{pSize:5,pNum:0},listPageSize:[5,10,15,20,25,30,35,40,45,50]},tab:0,url:{getList:'/Users/getListUserMessage',getListCount:'/Users/getPageCount',getDetail:'/Users/getMesDetail',del:'/Users/deleteMes',send:'/Users/sendMsg',updateReadYN:'/Users/changeReadYN',autocomplete:'/Users/mailListAutocomplete'}}
this._curPageIns=[];this._curInsId={};this._sendMsgInfo={to:'',title:'',content:''};this._res={en:{},vi:{bds_tinymail_msgid_0001:'Tin đã nhận',bds_tinymail_msgid_0002:'Tin đã gửi',bds_tinymail_msgid_0003:'Viết tin nhắn gửi đi',bds_tinymail_msgid_0004:'Không có bài viết nào trong phần tin nhận',bds_tinymail_msgid_0005:'Tiêu đề',bds_tinymail_msgid_0006:'Người gửi',bds_tinymail_msgid_0007:'Thời gian',bds_tinymail_msgid_0008:'Xóa',bds_tinymail_msgid_0009:'Hiển thị số tin: ',bds_tinymail_msgid_0010:'Từ:&nbsp;',bds_tinymail_msgid_0011:'Thời gian:&nbsp;',bds_tinymail_msgid_0012:'Trả lời',bds_tinymail_msgid_0013:'Xóa',bds_tinymail_msgid_0014:'Người nhận',bds_tinymail_msgid_0015:'Tiêu đề&nbsp;',bds_tinymail_msgid_0016:'Nội dung',bds_tinymail_msgid_0017:'(Bạn có thể nhập tối đa 300 chữ)',bds_tinymail_msgid_0018:'Gửi tin',bds_tinymail_msgid_0019:'Bạn phải chọn tin nhắn cần xóa!',bds_tinymail_msgid_0020:'Bạn muốn xóa các tin nhắn này?',bds_tinymail_msgid_0021:'Chuyển tiếp',bds_tinymail_msgid_0022:'Bạn muốn xóa tin nhắn này?',bds_tinymail_msgid_0023:'<br/><br/>Vào {0}, {1} đã viết: <br/>{2}',bds_tinymail_msgid_0024:'<br/><br/>---------- Thư đã chuyển tiếp ----------<br/>'+
'Từ: {0}<br/>'+
'Ngày: {1}<br/>'+
'Chủ đề: {2}<br/>'+
'Đến: {3}<br/><br/>{4}',bds_tinymail_msgid_0025:'Fwd:{0}',bds_tinymail_msgid_0026:'Bạn phải nhập tiêu đề!',bds_tinymail_msgid_0027:'Bạn phải nhập nội dung!',bds_tinymail_msgid_0028:'Nội dung quá dài!',bds_tinymail_msgid_0029:'Tin nhắn của bạn đã được gửi đi!',bds_tinymail_msgid_0030:'Tới:&nbsp;',bds_tinymail_msgid_0031:'Bạn phải nhập danh sách gửi tin',bds_tinymail_msgid_0032:'Danh sách gửi tin không hợp lệ: ',bds_tinymail_msgid_0033:'Tin nhắn của bạn đã được gửi!',bds_tinymail_msgid_0034:'{0} <{1}>',bds_tinymail_msgid_0035:'Có lỗi xảy ra trong quá trình gửi tin \r\nChi tiết: {0}',bds_tinymail_msgid_0099:'',bds_tinymail_format_msg_row_unread:'<div class="MsgInner">'+
'<div class="title"><p><a href="#detail" name="{4}" class="nocheck">{1}</a></p></div>'+
'<div class="sender"><p>{2}</p></div>'+
'<div class="sentdate"><p>{3}</p></div>'+
'<div class="delete"><p><input type="checkbox" value="{4}"/></p></div>'+
'</div>',bds_tinymail_format_msg_row_read:'<div class="MsgInner">'+
'<div class="title"><p><a href="#detail" name="{4}">{1}</a></p></div>'+
'<div class="sender"><p>{2}</p></div>'+
'<div class="sentdate"><p>{3}</p></div>'+
'<div class="delete"><p><input type="checkbox" value="{4}"/></p></div>'+
'</div>',bds_tinymail_format_msg_detail:'<div id="inbox_detail">'+
'<div class="subject">{1}</div>'+
'<div><span class="info">{2}</span>{3}</div>'+
'<div><span class="info">{4}</span>{5}</div>'+
'<div class="line">&nbsp;</div>'+
'<div class="body">{6}</div>'+
'<div style="text-align: center">'+
'<input type="button" id="btnReplyFoward" value="{7}" />&nbsp;&nbsp;'+
'<input type="button" id="btnDeleteMsg" value="{8}" />'+
'</div>'+
'</div>',bds_tinymail_format_page:'<div id="usercp_header">'+
'<ul>'+
'<li id="tab_1"><a class="active" id="a_tab0" title="{0}">{0}</a> </li>'+
'<li id="tab_2"><a class="unactive" id="a_tab1" title="{1}">{1}</a></li>'+
'<li id="tab_3"><a class="unactive" id="a_tab2" title="{2}">{2}</a> </li>'+
'</ul>'+
'</div>'+
'<div id="msg_content" class="MsgContent">'+
'<div id="inbox">'+
'<div id="listInbox">'+
'<div class="MsgInner">'+
'<div class="title header"><p>{4}</p></div>'+
'<div class="sender header"><p>{5}</p></div>'+
'<div class="sentdate header"><p>{6}</p></div>'+
'<div class="delete header" style="text-align: center;"><p><input id="delMsgInbox" type="button" value="{7}" /></p></div>'+
'</div>'+
'<div id="usermsgcp_content_inbox"></div>'+
'<div style="clear: both; margin-top: 10px; padding-top: 10px;" class="PagingCust">'+
'<div class="Paging">'+
'<div class="pager" style="text-align: left;">'+
'<div id="inbox_paging" style="float: left; width: 70%">&nbsp;&nbsp;</div>'+
'<div style="float: right; margin-right: 0px">{8}'+
'<select name="cboItemInbox" id="cboItemInbox" style="border: 1px solid #999999"></select>'+
'</div>'+
'</div>'+
'</div>'+
'</div>'+
'<div style="padding-top:10px;">(<span style="color:red">*</span>) Hệ thống chỉ lưu tối đa 100 tin đã nhận. Quá số lượng trên hệ thống sẽ tự động xóa bớt các tin cũ nhất.</div>'+
'</div>'+
'</div>'+
'<div id="usermsgcp_detail" class="hidden"></div>'+
'<div id="empty_message" align="center" class="hidden">'+
'<div>{9}</div>'+
'</div>'+
'<div id="my_ib_loading_item" class="hidden" style="width: 100%; text-align: center; background-color: White; border: none;">'+
'<img src="'+MEDIA.Source+'/Images/common/Loading.gif" alt="Loading..." />'+
'</div>'+
'<div id="outbox" class="my_items hidden" style="margin-top: 10px;">'+
'<div id="listOutbox">'+
'<div class="MsgInner">'+
'<div class="title header"><p>{10}</p></div>'+
'<div class="sender header"><p>{11}</p></div>'+
'<div class="sentdate header"><p>{12}</p></div>'+
'<div class="delete header" style="text-align:center;">'+
'<p><input id="delMsgOutbox" type= "button" value="{13}" /></p>'+
'</div>'+
'</div>'+
'<div id="usermsgcp_content_outbox"></div>'+
'<div style="clear: both; margin-top: 10px; padding-top: 10px;" class="PagingCust">'+
'<div class="Paging">'+
'<div class="pager" style="text-align: left;">'+
'<div id="outbox_paging" style="float: left; width: 70%">&nbsp;&nbsp;</div>'+
'<div style="float: right; margin-right: 0px">{14}'+
'<select name="cboItemOutbox" id="cboItemOutbox" onchange="" style="border: 1px solid #999999"></select>'+
'</div>'+
'</div>'+
'</div>'+
'</div>'+
'</div>'+
'<div style="padding-top:10px;">(<span style="color:red">*</span>) Hệ thống chỉ lưu tối đa 100 tin đã gửi. Quá số lượng trên hệ thống sẽ tự động xóa bớt các tin cũ nhất.</div>'+
'</div>'+
'<div id="divSentMsg" class="hidden">'+
'<div class="row">'+
'<div class="label"><label>{19}</label></div>'+
'<div class="input">'+
'<input id="txtMsgTo" name="txtMsgTo" style="width:100%" value="" class="inputbox" spellcheck="false"/>'+
'</div>'+
'</div>'+
'<div class="row">'+
'<div class="label"><label>{15}</label></div>'+
'<div class="input">'+
'<input id="txtMsgTitle" name="txtMsgTitle" style="width:100%" value="" class="inputbox" spellcheck="false"/>'+
'</div>'+
'</div>'+
'<div class="row">'+
'<div class="label"><label>{16}</label></div>'+
'<div class="input">'+
'<textarea id="wysiwyg" cols="10" rows="10" name="wysiwyg" style="width: 100%; border: 1.1px solid #999;" spellcheck="false"></textarea>'+
'<br /><span class="note">{17}</span>'+
'</div>'+
'</div>'+
'<div class="row" style="text-align:center"><input id="btnSendMsg" type="button" value="{18}" /></div>'+
'</div>'+
'<div class="clear"></div>'+
'</div>'}}}
$.extend(TinyMailSystem.prototype,{_init:function(opts){$.extend($.tinymail._defaults,opts||{});$.tinymail._start();},_start:function(){$.tinymail._buildPAGE();$($.tinymail).unbind('build_list_done');$($.tinymail).bind('build_list_done',function(){$.tinymail._buildPaging();$.tinymail._bindEventHandler();$.tinymail._showTabContent();});$.tinymail._buildListMsg();},_get:function(){var type=$.tinymail._defaults.tab;var pSize=type==$.tinymail._defines.inbox?$.tinymail._defaults.paging.inbox.pSize:$.tinymail._defaults.paging.outbox.pSize;var pNum=type==$.tinymail._defines.inbox?$.tinymail._defaults.paging.inbox.pNum:$.tinymail._defaults.paging.outbox.pNum;$.ajax({url:$.tinymail._defaults.url.getList,data:{type:type,ps:pSize,pn:pNum},dataType:'json',success:function(ans){$.tinymail._curPageIns=ans;$($.tinymail).trigger('get_list_done');},error:function(ans){console.log(ans);return false;}});},_send:function(){var lng=$.tinymail._defaults.lang;var url=$.tinymail._defaults.url.send;$.ajax({url:url,async:false,dataType:'json',contentType:'application/json; charset=utf-8',data:$.tinymail._sendMsgInfo,success:function(ans){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0033));return true;},error:function(xhr,statusText,err){var mes=new String($.tinymail._res[lng].bds_tinymail_msgid_0035)
.replace("{0}",statusText);alert(mes);console.log(mes);return false;}});},_del:function(del_list){var l=new String();var seps=";";if(del_list!=undefined&&del_list!=null&&del_list.length>0){$.each(del_list,function(i,v){l+=$.tinymail._curPageIns[i].id+seps;});$.ajax({url:$.tinymail._defaults.url.del,dataType:'json',data:{type:$.tinymail._defaults.tab,msgsId:l},success:function(ans){$($.tinymail).trigger('delete_complete');},error:function(mes){alert(mes);console.log(mes);return false;}});}},_setStatus:function(){var lng=$.tinymail._defaults.lang;var url=$.tinymail._defaults.url.updateReadYN;var msgid=$.tinymail._curInsId.id;var type=$.tinymail._defaults.tab;$.ajax({url:url,dataType:'json',data:{msgid:msgid,type:type},success:function(){$($.tinymail).trigger('update_msg_status_complete');return true;},error:function(mes){alert(mes);console.log(mes);return false;}});},_buildPAGE:function(){var o=$.tinymail._o;var lng=$.tinymail._defaults.lang;var html=new String($.tinymail._res[lng].bds_tinymail_format_page)
.replace(/\{0\}/gi,$.tinymail._res[lng].bds_tinymail_msgid_0001)
.replace(/\{1\}/gi,$.tinymail._res[lng].bds_tinymail_msgid_0002)
.replace(/\{2\}/gi,$.tinymail._res[lng].bds_tinymail_msgid_0003)
.replace("{4}",$.tinymail._res[lng].bds_tinymail_msgid_0005)
.replace("{5}",$.tinymail._res[lng].bds_tinymail_msgid_0006)
.replace("{6}",$.tinymail._res[lng].bds_tinymail_msgid_0007)
.replace("{7}",$.tinymail._res[lng].bds_tinymail_msgid_0008)
.replace("{8}",$.tinymail._res[lng].bds_tinymail_msgid_0009)
.replace("{9}",$.tinymail._res[lng].bds_tinymail_msgid_0009)
.replace("{10}",$.tinymail._res[lng].bds_tinymail_msgid_0005)
.replace("{11}",$.tinymail._res[lng].bds_tinymail_msgid_0014)
.replace("{12}",$.tinymail._res[lng].bds_tinymail_msgid_0007)
.replace("{13}",$.tinymail._res[lng].bds_tinymail_msgid_0013)
.replace("{14}",$.tinymail._res[lng].bds_tinymail_msgid_0009)
.replace("{15}",$.tinymail._res[lng].bds_tinymail_msgid_0015)
.replace("{16}",$.tinymail._res[lng].bds_tinymail_msgid_0016)
.replace("{17}",$.tinymail._res[lng].bds_tinymail_msgid_0017)
.replace("{18}",$.tinymail._res[lng].bds_tinymail_msgid_0018)
.replace("{19}",$.tinymail._res[lng].bds_tinymail_msgid_0030);$(o).html(html);return true;},_buildListMsg:function(){$($.tinymail).unbind('get_list_done');$($.tinymail).bind('get_list_done',function(){$($.tinymail).unbind('build_rows_done');$($.tinymail).bind('build_rows_done',function(e,html){switch(parseInt($.tinymail._defaults.tab)){case parseInt($.tinymail._defines.inbox):$("#usermsgcp_content_inbox").html(html);$($.tinymail).trigger('build_list_done');break;case parseInt($.tinymail._defines.outbox):$("#usermsgcp_content_outbox").html(html);$($.tinymail).trigger('build_list_done');break;}});$.tinymail._buildRow();});$.tinymail._get();},_buildRow:function(){var lng=$.tinymail._defaults.lang;var html=new String();var tab=$.tinymail._defaults.tab;var inbox=$.tinymail._defines.inbox;$.each($.tinymail._curPageIns,function(i,o){switch(new String(o.readyn).toLowerCase()){case'true':html+=new String($.tinymail._res[lng].bds_tinymail_format_msg_row_read)
.replace("{1}",o.title)
.replace("{2}",tab==inbox?o.sender.pe:o.receiver.pe)
.replace("{3}",o.time)
.replace(/\{4\}/gi,i);break;case'false':html+=new String($.tinymail._res[lng].bds_tinymail_format_msg_row_unread)
.replace("{1}",o.title)
.replace("{2}",tab==inbox?o.sender.pe:o.receiver.pe)
.replace("{3}",o.time)
.replace(/\{4\}/gi,i);break;}});$($.tinymail).trigger('build_rows_done',[html]);},_buildRowDetail:function(){var tab=parseInt($.tinymail._defaults.tab);var inbox=parseInt($.tinymail._defines.inbox);var outbox=parseInt($.tinymail._defines.outbox);var o=$.tinymail._curInsId;var lng=$.tinymail._defaults.lang;var html=new String();switch(tab){case inbox:html=new String($.tinymail._res[lng].bds_tinymail_format_msg_detail)
.replace("{1}",o.title)
.replace("{2}",$.tinymail._res[lng].bds_tinymail_msgid_0010)
.replace("{3}",o.sender.pe)
.replace("{4}",$.tinymail._res[lng].bds_tinymail_msgid_0011)
.replace("{5}",o.time)
.replace("{6}",o.content)
.replace("{7}",$.tinymail._res[lng].bds_tinymail_msgid_0012)
.replace("{8}",$.tinymail._res[lng].bds_tinymail_msgid_0013);break;case outbox:html=new String($.tinymail._res[lng].bds_tinymail_format_msg_detail)
.replace("{1}",o.title)
.replace("{2}",$.tinymail._res[lng].bds_tinymail_msgid_0010)
.replace("{3}",o.sender.pe)
.replace("{4}",$.tinymail._res[lng].bds_tinymail_msgid_0011)
.replace("{5}",o.time)
.replace("{6}",o.content)
.replace("{7}",$.tinymail._res[lng].bds_tinymail_msgid_0021)
.replace("{8}",$.tinymail._res[lng].bds_tinymail_msgid_0013);break;}
return html;},_buildPaging:function(){var type=$.tinymail._defaults.tab;var o=$.tinymail._defines.inbox==type?$("#inbox_paging"):$("#outbox_paging");var pSize=type==$.tinymail._defines.inbox?$.tinymail._defaults.paging.inbox.pSize:$.tinymail._defaults.paging.outbox.pSize;var pNum=type==$.tinymail._defines.inbox?$.tinymail._defaults.paging.inbox.pNum:$.tinymail._defaults.paging.outbox.pNum;var url=$.tinymail._defaults.url.getListCount;$.ajax({url:url,dataType:'json',data:{type:type,ps:pSize},success:function(ans){$(o).pagination(ans,{items_per_page:pSize,current_page:pNum,prev_text:'<',next_text:'>',num_edge_entries:2,callback:$.tinymail._handlerChangePage});return true;},error:function(mes){alert('[ERROR] Can not load paging! '+mes);console.log(mes);return false;}});var opt='<option value="{0}">{0}</option>';var l=$.tinymail._defaults.paging.listPageSize;var html=new String();$.each(l,function(i,value){html+=new String(opt).replace(/\{0\}/gi,value);});switch(parseInt(type)){case parseInt($.tinymail._defines.inbox):if($("#cboItemInbox").val()!=null&&$("#cboItemInbox").val()!=""&&$("#cboItemInbox").val()!='')return true;$("#cboItemInbox").html(html);break;default:if($("#cboItemOutbox").val()!=null&&$("#cboItemOutbox").val()!=""&&$("#cboItemOutbox").val()!='')return true;$("#cboItemOutbox").html(html);break;}},_setupTextEditor:function(){var to=$.tinymail._sendMsgInfo.to;var title=$.tinymail._sendMsgInfo.title;var content=$.tinymail._sendMsgInfo.content;var txtIns=tinyMCE.get('wysiwyg');if(txtIns==null||txtIns==undefined){$("#wysiwyg").val(content);tinyMCE.init({mode:"textareas",theme:"advanced",height:"300px",theme_advanced_buttons1:"mybutton,bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright, justifyfull,bullist,numlist,undo,redo,link,unlink",theme_advanced_buttons2:"",theme_advanced_buttons3:"",theme_advanced_toolbar_location:"top",theme_advanced_toolbar_align:"left",theme_advanced_statusbar_location:"bottom"});}
else{tinyMCE.get('wysiwyg').setContent(content);}
$("#txtMsgTo").val(to);var url=$.tinymail._defaults.url.autocomplete;$("#txtMsgTo").result=function(event,data,formatted){data=new String(data).split(",");}
$("#txtMsgTo").autocomplete(url,{dataType:'json',parse:function(data){var rows=[];for(var i=0;i<data.length;i++){rows[i]={data:data[i],value:data[i].pe,result:data[i].pe};}
return rows;},matchContains:"word",multiple:true,formatItem:function(row,i,max){var formatted=row.fn+' ['+row.pe+']';return formatted;}});$("#txtMsgTitle").val(title);$("#btnSendMsg").unbind('click');$("#btnSendMsg").click(function(){$.tinymail._handlerSend();});},_showLoading:function(){$("#inbox").hide();$("#usermsgcp_detail").hide();$("#empty_message").hide();$("#outbox").hide();$("#divSentMsg").hide();$("#my_ib_loading_item").fadeIn('slow');},_showTabContent:function(){$("#my_ib_loading_item").hide();$("#usermsgcp_detail").hide();$("#empty_message").hide();$("#outbox").hide();$("#divSentMsg").hide();$("#inbox").hide();var tab=parseInt($.tinymail._defaults.tab);var inbox=parseInt($.tinymail._defines.inbox);var outbox=parseInt($.tinymail._defines.outbox);var send=parseInt($.tinymail._defines.send);switch(tab){case inbox:$("#inbox").fadeIn('slow');break;case outbox:$("#outbox").fadeIn('slow');break;case send:$("#divSentMsg").fadeIn('slow');break;}},_showDetailMsg:function(){$("#my_ib_loading_item").hide();$("#usermsgcp_detail").hide();$("#empty_message").hide();$("#outbox").hide();$("#divSentMsg").hide();$("#inbox").hide();var html=$.tinymail._buildRowDetail();$("#usermsgcp_detail").html(html);$("#usermsgcp_detail").fadeIn('slow');},_bindEventHandler:function(){$('a[id*="a_tab"]').unbind('click');$('a[id*="a_tab"]').click(function(){$.tinymail._handlerTabs(this);});$("#delMsgInbox").unbind('click');$("#delMsgInbox").click(function(){$.tinymail._handlerDelAll();});$("#cboItemInbox").unbind('change');$("#cboItemInbox").change(function(){$.tinymail._handlerChangePageSize(this);});$('a[href="#detail"]').unbind('click');$('a[href="#detail"]').click(function(){$.tinymail._handlerDetail(this);});$("#btnReplyFoward").unbind('click');$("#btnReplyFoward").click(function(){$.tinymail._handerReplyFoward();});$("#btnDeleteMsg").unbind('click');$("#btnDeleteMsg").click(function(){$.tinymail._handlerDel();});$("#delMsgOutbox").unbind('click');$("#delMsgOutbox").click(function(){$.tinymail._handlerDelAll();});$("#cboItemOutbox").unbind('change');$("#cboItemOutbox").change(function(){$.tinymail._handlerChangePageSize(this);});},_tabToggle:function(){var obj=$('a[id="a_tab'+$.tinymail._defaults.tab+'"]');$.each($('a[id*="a_tab"]'),function(i,it){if($(it).hasClass('active')){$(it).removeClass('active');$(it).addClass('unactive');}});$(obj).removeClass('unactive');$(obj).addClass('active');},_handlerTabs:function(obj){var tab=new String(obj.id).replace('a_tab','');var inbox=new String($.tinymail._defines.inbox);var outbox=new String($.tinymail._defines.outbox);$.tinymail._defaults.tab=tab;$.tinymail._tabToggle();if(parseInt(tab)==parseInt(inbox)||parseInt(tab)==parseInt(outbox)){$($.tinymail).unbind('build_list_done');$($.tinymail).bind('build_list_done',function(){$.tinymail._buildPaging();$.tinymail._bindEventHandler();$.tinymail._showTabContent();});$.tinymail._buildListMsg();}
else{$.tinymail._sendMsgInfo.to='';$.tinymail._sendMsgInfo.title='';$.tinymail._sendMsgInfo.content='';$.tinymail._setupTextEditor();$.tinymail._showTabContent();}},_handlerDetail:function(obj){var id=$(obj).attr('name');$.tinymail._curInsId=$.tinymail._curPageIns[id];$.tinymail._showDetailMsg();$.tinymail._bindEventHandler();$.tinymail._setStatus();},_handlerDelAll:function(){var l=$('div[class="delete"] input:checked');var ol=[];$.each(l,function(i,it){ol.push($(it).val());});var count=l.length;var lng=$.tinymail._defaults.lang;if(count==0){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0019));return true;}
var cf=confirm(new String($.tinymail._res[lng].bds_tinymail_msgid_0020));if(cf){$($.tinymail).unbind('delete_complete');$($.tinymail).bind('delete_complete',function(){$.tinymail._buildListMsg();$.tinymail._showTabContent();$.tinymail._bindEventHandler();});$.tinymail._del(l);}},_handerReplyFoward:function(){var lng=$.tinymail._defaults.lang;var type=$.tinymail._defaults.tab;$.tinymail._defaults.tab=$.tinymail._defines.send;var inbox=$.tinymail._defines.inbox;switch(parseInt(type)){case parseInt(inbox):$.tinymail._sendMsgInfo.to=$.tinymail._curInsId.sender.pe;$.tinymail._sendMsgInfo.title=$.tinymail._curInsId.title;$.tinymail._sendMsgInfo.content=new String($.tinymail._res[lng].bds_tinymail_msgid_0023)
.replace("{0}",$.tinymail._curInsId.time)
.replace("{1}",$.tinymail._curInsId.sender.pe)
.replace("{2}",$.tinymail._curInsId.content);break;default:$.tinymail._sendMsgInfo.to='';$.tinymail._sendMsgInfo.title=new String($.tinymail._res[lng].bds_tinymail_msgid_0025)
.replace("{0}",$.tinymail._curInsId.title);$.tinymail._sendMsgInfo.content=new String($.tinymail._res[lng].bds_tinymail_msgid_0024)
.replace("{0}",$.tinymail._curInsId.sender.pe)
.replace("{1}",$.tinymail._curInsId.time)
.replace("{2}",$.tinymail._curInsId.title)
.replace("{3}",$.tinymail._curInsId.receiver.pe)
.replace("{4}",$.tinymail._curInsId.content);break;}
$.tinymail._tabToggle();$.tinymail._setupTextEditor();$.tinymail._showTabContent();},_handlerDel:function(){var o=$.tinymail._curInsId;var lng=$.tinymail._defaults.lang;var cf=confirm($.tinymail._res[lng].bds_tinymail_msgid_0022);if(cf){var l=[];$.each($.tinymail._curPageIns,function(i,obj){if(obj==o){$($.tinymail).unbind('delete_complete');$($.tinymail).bind('delete_complete',function(){$.tinymail._buildListMsg();$.tinymail._showTabContent();$.tinymail._bindEventHandler();});l.push(i);$.tinymail._del(l);}});}},_handlerChangePage:function(new_page_index,pagination_container){var type=$.tinymail._defaults.tab;var curPage=type==$.tinymail._defines.inbox?$.tinymail._defaults.paging.inbox.pNum:$.tinymail._defaults.paging.outbox.pNum;if(curPage==new_page_index){return false;}
if(type==$.tinymail._defines.inbox)
$.tinymail._defaults.paging.inbox.pNum=new_page_index;else
$.tinymail._defaults.paging.outbox.pNum=new_page_index;$($.tinymail).unbind('build_list_done');$($.tinymail).bind('build_list_done',function(){$.tinymail._bindEventHandler();$.tinymail._showTabContent();});$.tinymail._buildListMsg();return true;},_handlerChangePageSize:function(obj){var type=$.tinymail._defaults.tab;if(type==$.tinymail._defines.inbox){$.tinymail._defaults.paging.inbox.pSize=$(obj).val();}
else{$.tinymail._defaults.paging.outbox.pSize=$(obj).val();}
$($.tinymail).unbind('build_list_done');$($.tinymail).bind('build_list_done',function(){$.tinymail._buildPaging();$.tinymail._showTabContent();$.tinymail._bindEventHandler();});$.tinymail._buildListMsg();return true;},_handlerSend:function(){var _seperators=',';var lng=$.tinymail._defaults.lang;var to=$("#txtMsgTo").val();if(to==''||to==""||to==null||to==undefined){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0031));$("#txtMsgTo").focus();return false;}
var lto=to.split(_seperators);var invalid=new String($.tinymail._res[lng].bds_tinymail_msgid_0032);var flag=false;$.each(lto,function(i,v){lto[i]=$.trim(lto[i]);if(!new String(lto[i]).isEmail()){if(i<(lto.length-1)||(lto.length==1)){invalid+=lto[i];flag=true;}
else{to=to.slice(0,to.length-2);}}});if(flag){alert(invalid);$("#txtMsgTo").focus();return false;}
var t=$("#txtMsgTitle").val();if(t==''||t==""||t==null||t==undefined){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0026));$("#txtMsgTitle").focus();return false;}
var c=tinyMCE.get('wysiwyg').getContent({format:'text'});if(c==''||c==""||c==null||c==undefined){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0027));$("#wysiwyg").focus();return false;}
if(c.length>300){alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0028));return false;}
$.tinymail._sendMsgInfo.to=to;$.tinymail._sendMsgInfo.title=t;$.tinymail._sendMsgInfo.content=c;$($.tinymail).unbind('send_complete');$($.tinymail).bind('send_complete',function(){var lng=$.tinymail._default.lang;alert(new String($.tinymail._res[lng].bds_tinymail_msgid_0029));$.tinymail._showTabContent();});$.tinymail._send();}});$.tinymail=new TinyMailSystem();$.fn.tinymail=function(){$.tinymail._o=$(this);var opts=arguments[0];$.tinymail._init(opts);}})(jQuery);function DisplayDiv(divTag,isDisplay){if(isDisplay==true){divTag.style.display="block";}
else{divTag.style.display="none";}}
function getURLParam(name){name=name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");var regexS="[\\?&]"+name+"=([^&#]*)";var regex=new RegExp(regexS);var results=regex.exec(window.location.href);if(results==null)
return"0";else
return results[1];}
String.format=function(text){if(arguments.length<=1){return text;}
var tokenCount=arguments.length-2;for(var token=0;token<=tokenCount;token++){text=text.replace(new RegExp("\\{"+token+"\\}","gi"),arguments[token+1]);}
return text;};function SelectedValue(cbo,value){var i=0
for(i=0;i<cbo.options.length;i++){if(cbo.options[i].value==value){cbo.options.selectedIndex=i;cbo.options[cbo.selectedIndex].selected=true;break}}}
function echeck(str){var at="@"
var dot="."
var lat=str.indexOf(at)
var lstr=str.length
var ldot=str.indexOf(dot)
if(str.indexOf(at)==-1){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.indexOf(at)==-1||str.indexOf(at)==0||str.indexOf(at)==lstr){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.indexOf(dot)==-1||str.indexOf(dot)==0||str.indexOf(dot)==lstr){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.indexOf(at,(lat+1))!=-1){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.substring(lat-1,lat)==dot||str.substring(lat+1,lat+2)==dot){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.indexOf(dot,(lat+2))==-1){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
if(str.indexOf(" ")!=-1){alert(MSGScript.EMAIL_NOT_ACCEPT)
return false}
return true}
function ValidateEmail(txtEmail){var emailID=document.getElementById(txtEmail)
if((emailID.value==null)||(emailID.value=="")){alert(MSGProduct.EMAIL_BLANK)
emailID.focus()
return false}
if(echeck(emailID.value)==false){emailID.value=""
emailID.focus()
return false}
return true}
function ValidateEmailLogon(emailID){if((emailID.value==null)||(emailID.value=="")){alert(MSGProduct.EMAIL_BLANK)
emailID.focus()
return false}
if(echeck(emailID.value)==false){emailID.value=""
emailID.focus()
return false}
return true}
function classBasicInformation(){this._elements={FullName:null,Type:null,Address:null,City:null,District:null,Website:null,Submit:null};this._TabIndex=1;this._CompanyID=0;this._FullName=new String("");this._Type=0;this._Address=new String("");this._City=new String("");this._District=new String("");this._Website=new String("");this._Logo=new String("");this._LogoName=new String("");}
$.extend(classBasicInformation.prototype,{getDistrictByCity:function(aCity){var params={city:aCity};var optFormat=new String("<option value={0}>{1}</option>");$.ajax({dataType:"json",url:"/Users/getDistrictByCity",data:params,success:function(ans){var html=new String();$.each(ans,function(i,item){html+=new String(optFormat)
.replace("{0}",item.code)
.replace("{1}",item.name);});$("#"+$.BasicInformation._elements.District).html(html);}});},handlerFullName:function(){var value=new String($(this).val());if(value.length>200)alert(MSGScript.MAXIMUM_INPUT);else $.BasicInformation._FullName=value;},handlerType:function(){$.BasicInformation._Type=$(this).val();},handlerAddress:function(){var value=new String($(this).val());if(value.length>200)alert(MSGScript.MAXIMUM_INPUT);else $.BasicInformation._Address=value;},handlerCity:function(){$.BasicInformation._City=$(this).val();if(!validator.IsNullOrEmpty($.BasicInformation._City)){$.BasicInformation.getDistrictByCity($.BasicInformation._City);}},handlerDistrict:function(){$.BasicInformation._District=$(this).val();},handlerWebsite:function(){var value=new String($(this).val());if(value.length>200)alert(MSGScript.MAXIMUM_INPUT);else $.BasicInformation._Website=value;},parseJson:function(){var json={CompanyID:$.BasicInformation._CompanyID,TabIndex:$.BasicInformation._TabIndex,FullName:""+$.BasicInformation._FullName,Type:$.BasicInformation._Type,Address:""+$.BasicInformation._Address,City:$.BasicInformation._City,District:$.BasicInformation._District,Website:""+$.BasicInformation._Website,Logo:$.BasicInformation._Logo,LogoName:$.BasicInformation._LogoName};return json;},handlerSubmit:function(){if(!validator.IsNullOrEmpty($("#list_guid").val())){$.BasicInformation._Logo=$("#list_guid").val();$.BasicInformation._LogoName=$("#list_guid").name();}
$.ajax({dataType:"json",url:"/Users/UpdateCompanyProfile",data:$.BasicInformation.parseJson(),success:function(message){alert(message);}});}});$.fn.BasicInfor=function(arrayOpts){var i=0;$.each($.BasicInformation._elements,function(e,v){$.BasicInformation._elements[e]=arrayOpts[i];$("#"+arrayOpts[i]).bind('change',$.BasicInformation["handler"+e]);$.BasicInformation["_"+e]=$("#"+arrayOpts[i]).val();i+=1;});$.BasicInformation["_CompanyID"]=$("#txtCompanyID").val();$("#"+arrayOpts[arrayOpts.length-1]).bind('click',$.BasicInformation["handlerSubmit"]);}
$.BasicInformation=new classBasicInformation();function classCompanyIntroduction(){this._elements={CompanyDescription:null};this._TabIndex=2;this._CompanyID=0;this._CompanyDescription=new String("");}
$.extend(classCompanyIntroduction.prototype,{handlerCompanyDescription:function(){$.IntroductionInfor._CompanyDescription=$($.IntroductionInfor._elements["CompanyDescription"]).tinymce.getContent();},parseJson:function(){var json={CompanyID:$.IntroductionInfor._CompanyID,TabIndex:$.IntroductionInfor._TabIndex,CompanyDescription:$.IntroductionInfor._CompanyDescription};return json;},handlerSubmit:function(){$.IntroductionInfor._CompanyDescription=tinyMCE.get($.IntroductionInfor._elements["CompanyDescription"]).getContent();$.ajax({dataType:"json",url:"/Users/UpdateCompanyProfile",data:$.IntroductionInfor.parseJson(),success:function(message){alert(message);},error:function(message){alert('Error: '+message);}});}});$.IntroductionInfor=new classCompanyIntroduction();$.fn.IntroInfor=function(arrayOpts){var i=0;$.each($.IntroductionInfor._elements,function(e,v){$.IntroductionInfor._elements[e]=arrayOpts[i];$("#"+arrayOpts[i]).bind('change',$.IntroductionInfor["handler"+e]);$.IntroductionInfor["_"+e]=$("#"+arrayOpts[i]).val();i+=1;});$.IntroductionInfor["_CompanyID"]=$("#txtCompanyID").val();$("#"+arrayOpts[arrayOpts.length-1]).bind('click',$.IntroductionInfor["handlerSubmit"]);}
function classContactInformation(){this._elements={ContactName:null,ContactAddress:null,ContactEmail:null,ContactPhone:null,ContactFax:null,ContactMobile:null,ContactYahoo:null,ContactSkype:null};this._errors={ContactName:0,ContactAddress:0,ContactEmail:0,ContactPhone:0,ContactFax:0,ContactMobile:0,ContactYahoo:0,ContactSkype:0};this._TabIndex=3;this._CompanyID=0;this._ContactName=new String("");this._ContactAddress=new String("");this._ContactEmail=new String("");this._ContactPhone=new String("");this._ContactFax=new String("");this._ContactMobile=new String("");this._ContactYahoo=new String("");this._ContactSkype=new String("");}
$.extend(classContactInformation.prototype,{handlerContactName:function(){var value=new String($(this).val());if(value.length>50){$.ContactInformation._errors["ContactName"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactName"]=0;$(this).removeClass('error');$.ContactInformation._ContactName=value;}},handlerContactAddress:function(){var value=new String($(this).val());if(value.length>200){$.ContactInformation._errors["ContactAddress"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactAddress"]=0;$(this).removeClass('error');$.ContactInformation._ContactAddress=value;}},handlerContactEmail:function(){var value=new String($(this).val());if(value.length>100){$.ContactInformation._errors["ContactEmail"]=1;$(this).addClass('error');}
else if(!validator.IsValidEmail(value)){$.ContactInformation._errors["ContactEmail"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactEmail"]=0;$(this).removeClass('error');$.ContactInformation._ContactEmail=value;}},handlerContactPhone:function(){var value=new String($(this).val());if(value.length>16){$.ContactInformation._errors["ContactPhone"]=1;$(this).addClass('error');}
else if(!validator.IsNumber(value)){$.ContactInformation._errors["ContactPhone"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactPhone"]=0;$(this).removeClass('error');$.ContactInformation._ContactPhone=value;}},handlerContactFax:function(){var value=new String($(this).val());if(value.length>16){$.ContactInformation._errors["ContactFax"]=1;$(this).addClass('error');}
else if(!validator.IsNumber(value)){$.ContactInformation._errors["ContactFax"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactFax"]=0;$(this).removeClass('error');$.ContactInformation._ContactFax=value;}},handlerContactMobile:function(){var value=new String($(this).val());if(value.length>16){$.ContactInformation._errors["ContactMobile"]=1;$(this).addClass('error');}
else if(!validator.IsNumber(value)){$.ContactInformation._errors["ContactMobile"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactMobile"]=0;$(this).removeClass('error');$.ContactInformation._ContactMobile=value;}},handlerContactYahoo:function(){var value=new String($(this).val());if(value.length>50){$.ContactInformation._errors["ContactYahoo"]=1;$(this).addClass('error');}
else if(!validator.IsValidYahooID(value)){$.ContactInformation._errors["ContactYahoo"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactYahoo"]=0;$(this).removeClass('error');$.ContactInformation._ContactYahoo=value;}},handlerContactSkype:function(){var value=new String($(this).val());if(value.length>50){$.ContactInformation._errors["ContactSkype"]=1;$(this).addClass('error');}
else if(!validator.IsValidSkypeID(value)){$.ContactInformation._errors["ContactSkype"]=1;$(this).addClass('error');}
else{$.ContactInformation._errors["ContactSkype"]=0;$(this).removeClass('error');$.ContactInformation._ContactSkype=value;}},parseJson:function(){var json={CompanyID:$.ContactInformation._CompanyID,TabIndex:$.ContactInformation._TabIndex,ContactName:""+$.ContactInformation._ContactName,ContactAddress:""+$.ContactInformation._ContactAddress,ContactEmail:""+$.ContactInformation._ContactEmail,ContactPhone:""+$.ContactInformation._ContactPhone,ContactFax:""+$.ContactInformation._ContactFax,ContactMobile:""+$.ContactInformation._ContactMobile,ContactYahoo:""+$.ContactInformation._ContactYahoo,ContactSkype:""+$.ContactInformation._ContactSkype};return json;},handlerSubmit:function(){var abort=false;$.each($.ContactInformation["_errors"],function(id,v){if(new String("1").match(v)){alert(MSGScript.ERROR_CORRECT_REQUIRE);abort=true;$("#"+$.ContactInformation["_elements"][id]).focus();return false;}});if(!abort){$.ajax({dataType:"json",url:"/Users/UpdateCompanyProfile",data:$.ContactInformation.parseJson(),success:function(message){alert(message);},error:function(message){alert('Error'+message);}});}}});$.ContactInformation=new classContactInformation();$.fn.ContactInfor=function(arrayOpts){var i=0;$.each($.ContactInformation._elements,function(e,v){$.ContactInformation._elements[e]=arrayOpts[i];$("#"+arrayOpts[i]).bind('change',$.ContactInformation["handler"+e]);$.ContactInformation["_"+e]=$("#"+arrayOpts[i]).val();i+=1;});$.ContactInformation["_CompanyID"]=$("#txtCompanyID").val();$("#"+arrayOpts[arrayOpts.length-1]).bind('click',$.ContactInformation["handlerSubmit"]);}
function classCompanyGMap(){this._elements={Latitude:null,Longitude:null};this._TabIndex=4;this._CompanyID=0;this._Latitude=new String("");this._Longitude=new String("");}
$.extend(classCompanyGMap.prototype,{handlerLatitude:function(){},handlerLongitude:function(){},parseJson:function(){var json={CompanyID:$.GMapInformation._CompanyID,TabIndex:$.GMapInformation._TabIndex,Latitude:$("#"+$.GMapInformation._elements.Latitude).val(),Longitude:$("#"+$.GMapInformation._elements.Longitude).val()};return json;},handlerSubmit:function(){$.ajax({dataType:"json",url:"/Users/UpdateCompanyProfile",data:$.GMapInformation.parseJson(),success:function(message){alert(message);},error:function(message){alert('Error '+message);}});}});$.GMapInformation=new classCompanyGMap();$.fn.GMapInfor=function(arrayOpts){var i=0;$.each($.GMapInformation._elements,function(e,v){$.GMapInformation._elements[e]=arrayOpts[i];$("#"+arrayOpts[i]).bind('change',$.GMapInformation["handler"+e]);$.GMapInformation["_"+e]=$("#"+arrayOpts[i]).val();i+=1;});$.GMapInformation["_CompanyID"]=$("#txtCompanyID").val();$("#"+arrayOpts[arrayOpts.length-1]).bind('click',$.GMapInformation["handlerSubmit"]);}
function classValidator(){this._EmailRegex=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;this._SkypeYahooRegex=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))/i;this._YahooDomain=new String("yahoo.com");this._StringEmpty=new String("");}
$.extend(classValidator.prototype,{IsNumber:function(value){return!isNaN(value);},IsNullOrEmpty:function(value){var temp=new String(value);return(temp==""||temp==''||temp==null||temp==undefined||temp.match("-1"));},IsValidEmail:function(email){return this._EmailRegex.test(email);},IsValidPhone:function(o,value){$.ajax({type:"post",mode:"abort",url:"/users/checktelephone/",data:"phone="+value,success:function(rtVal){if(new String(rtVal).toUpperCase()==="FALSE"){$(o).addClass('error');return false;}
$(o).removeClass('error');return true;}});},IsValidMobile:function(o,value){$.ajax({type:"post",url:"/users/checkmobile/",mode:"abort",data:"mobile="+value,success:function(rtVal){if(new String(rtVal).toUpperCase()==="FALSE"){$(o).addClass('error');return false;}
$(o).removeClass('error');return true;}});},IsValidCapcha:function(value){$.ajax({type:"post",url:"/users/ValidateCaptcha",mode:"abort",data:"&code="+value,success:function(retVal){var returnValue=new String(retVal).toLowerCase();switch(returnValue){case"false":return false;case"true":return true;default:return false;}}});},IsValidYahooID:function(value){var temp=new String(value).toLowerCase();if(temp==null||temp==""||temp=='')return false;var index=temp.indexOf("@",0);if(index>0&&(!temp.substring(index+1,temp.length).match(this._YahooDomain)))return false;return this._SkypeYahooRegex.test(temp.substring(0,index));},IsValidSkypeID:function(value){var temp=new String(value);if(temp==null||temp==""||temp=='')return true;return this._SkypeYahooRegex.test(temp);}});var validator=new classValidator();$.extend($.fn,{iValidate:function(options,params){var value=$(this).val();var splitor=";";var arrayFromOptions=new String(options).split(splitor);for(var i=0;i<arrayFromOptions.length;i++){switch(arrayFromOptions[i]){case"required":return!validator.IsNullOrEmpty(value);break;case"number":return validator.IsNumber(value);break;case"min":if(value.length<parseInt(param))return false;break;case"max":if(value.length>parseInt(param))return false;break;case"captcha":return validator.IsValidCapcha(value);break;case"phone":return validator.IsValidPhone(value);break;case"email":return validator.IsValidEmail(value);break;case"yahoo":return validator.IsValidYahooID(value);break;case"skype":return validator.IsValidSkypeID(value);break;}}
return true;},name:function(){return $(this).attr("name");},name:function(value){return $(this).attr("name",value);}});;(function($){function BrokerFieldManager(){this._root=null;this._nextId=0;this._inst=[];this._default={region:{Sell:'',Rent:''},buttonAdd:{Sell:'',Rent:''},StartUrl:"/Users/getBrokerFields",ChildCatsUrl:"/Users/getChildCatOfRealEstate",CitiesUrl:"/Users/getListCitiesVN",DistrictsUrl:"/Users/getDistrictByCity",ProjectsUrl:"/Users/getProjectByCity",ID:{Company:'',Broker:''},Type:{Sell:'',Rent:''}}}
$.extend(BrokerFieldManager.prototype,{_register:function(inst){var id=$.broker_fields_manager._nextId++;$.broker_fields_manager._inst[id]=inst;return id;},_unregister:function(inst){var id=inst._id;$.broker_fields_manager._inst[id]=null;},_getInstFromSrv:function(){$.ajax({url:$.broker_fields_manager._default.StartUrl,dataType:"json",data:{ci:$.broker_fields_manager._default.ID.Company,bi:$.broker_fields_manager._default.ID.Broker,ty:$.broker_fields_manager._default.Type.Sell},success:function(ans){$.each(ans,function(i,item){var ins=new BrokerFieldInstance();ins._init({Type:item._Cat,City:item._Cit,Dist:item._Dis,Proj:item._Pro});ins._generatorHTML($.broker_fields_manager._default.region.Sell);});},error:function(ans){console.log(ans);return false;}});$.ajax({url:$.broker_fields_manager._default.StartUrl,dataType:"json",data:{ci:$.broker_fields_manager._default.ID.Company,bi:$.broker_fields_manager._default.ID.Broker,ty:$.broker_fields_manager._default.Type.Rent},success:function(ans){$.each(ans,function(i,item){var ins=new BrokerFieldInstance();ins._init({Type:item._Cat,City:item._Cit,Dist:item._Dis,Proj:item._Pro});ins._generatorHTML($.broker_fields_manager._default.region.Rent);});},error:function(ans){console.log(ans);return false;}});},_getInst:function(id){return $.broker_fields_manager._inst[id]||id;},_getType:function(regionObj){if(regionObj==$.broker_fields_manager._default.region.Sell){return $.broker_fields_manager._default.Type.Sell;}
else{return $.broker_fields_manager._default.Type.Rent;}},_handlerStartSellBtn:function(){var ins=new BrokerFieldInstance();ins._generatorHTML($.broker_fields_manager._default.region.Sell);},_handlerStartRentBtn:function(){var ins=new BrokerFieldInstance();ins._generatorHTML($.broker_fields_manager._default.region.Rent);},_parseRawDataJsonBrokerFields:function(){alert('_parseRawDataJsonBrokerFields');var lcat=new String(),lcit=new String(),ldis=new String(),lpro=new String();$.broker_fields_manager._inst.RemoveEmptyEntry();$.each($.broker_fields_manager._inst,function(i,ins){if(ins!=null){var jSonDat=ins._parseJson();lcat+=jSonDat.Type+';';lcit+=jSonDat.City+';';ldis+=jSonDat.Dist+';';lpro+=jSonDat.Proj+';';}});return{CompanyID:$.broker_fields_manager._default.ID.Company,BrokerID:$.broker_fields_manager._default.ID.Broker,Types:lcat,Cities:lcit,Districts:ldis,Projects:lpro};},_init:function(settings){$.extend($.broker_fields_manager._default,settings);$("#"+$.broker_fields_manager._default.buttonAdd.Sell).bind('click',$.broker_fields_manager["_handlerStartSellBtn"]);$("#"+$.broker_fields_manager._default.buttonAdd.Rent).bind('click',$.broker_fields_manager["_handlerStartRentBtn"]);$.broker_fields_manager._getInstFromSrv();},_reloadBrokerFields:function(){var divSell=$.broker_fields_manager._default.region.Sell;var divRent=$.broker_fields_manager._default.region.Rent;$('div[id="'+divRent+'"]').html('');$('div[id="'+divSell+'"]').html('');$.broker_fields_manager._inst=[];$.broker_fields_manager._nextId=0;$.broker_fields_manager._getInstFromSrv();},_insertRow:function(jObject,html){if(jObject==null||jObject==undefined){console.log('Can not find container!');return false;}
return $("#"+jObject).append(html);}});function BrokerFieldInstance(){this._id=$.broker_fields_manager._register(this);this._opt='<option value="{0}">{1}</option>';this._optSelected='<option value="{0}" selected="selected">{1}</option>';this._defines={Type:"cboType_tab5_",City:"cboCity_tab5_",Dist:"cboDist_tab5_",Proj:"cboProj_tab5_"};this._delID="a_del_tab5_";this._rowFormat='<div class="row" id="row_'+this._id+'" name="row_'+this._id+'" >'+
'<div class="ptable">'+
'<div class="hcol">{0}</div>'+
'<div class="hcol">{1}</div>'+
'<div class="hcol">{2}</div>'+
'<div class="hcol">{3}</div>'+
'<div>{4}</div>'+
'</div>'+
'</div>';this._slType='<select id="cboType_tab5_'+this._id+'" name="cboType_tab5_'+this._id+'" class="combo selectbox2"><option value="-1">--Chọn loại BĐS--</option></select>';this._slCity='<select id="cboCity_tab5_'+this._id+'" name="cboCity_tab5_'+this._id+'" class="combo selectbox2"><option value="-1">--Chọn Tỉnh/Thành--</option></select>';this._slDist='<select id="cboDist_tab5_'+this._id+'" name="cboDist_tab5_'+this._id+'" class="combo selectbox2"><option value="-1">--Chọn Quận/Huyện--</option></select>';this._slProj='<select id="cboProj_tab5_'+this._id+'" name="cboProj_tab5_'+this._id+'" class="combo selectbox2"><option value="-1">--Chọn Dự án--</option></select>';this._aDelRow='<a id="a_del_tab5_'+this._id+'" name="a_del_tab5_'+this._id+'" href="javascript:void(0)" class="del">Xóa</a>';this._typeConfig={url:"",data:""};this._selectedType=-1;this._selectedCity=-1;this._selectedDist=-1;this._selectedProj=-1;}
$.extend(BrokerFieldInstance.prototype,{_init:function(){var settings=arguments[0];this._selectedType=settings.Type;this._selectedCity=settings.City;this._selectedDist=settings.Dist;this._selectedProj=settings.Proj;},_getInst:function(){return $("#row_"+this._id)},_parseJson:function(){alert('_parseJson');return{Type:this._selectedType,City:this._selectedCity,Dist:this._selectedDist,Proj:this._selectedProj};},_loadType:function(jObjRegion,ins){var o=$("#"+ins._defines.Type+ins._id);if(o==null||o==undefined){console.log(MSGScript.NOT_RECOGNIZE_OBJ);return false;}
var type=$.broker_fields_manager._getType(jObjRegion);$.ajax({url:$.broker_fields_manager._default.ChildCatsUrl,dataType:"json",data:{recode:type},success:function(ans){if(ans==null||ans.length<=0)return;var html=new String(ins._opt)
.replace("{0}","-1")
.replace("{1}",MSGScript.BDS_CHOOSE);$.each(ans,function(i,item){if(!new String(ins._selectedType).match(new String(item.code))){html+=new String(ins._opt)
.replace("{0}",item.code)
.replace("{1}",item.name);}else{html+=new String(ins._optSelected)
.replace("{0}",item.code)
.replace("{1}",item.name);}});$(o).html(html);},error:function(ans){console.log(ans);return false;}});},_loadCity:function(jObjRegion,ins){var oC=$("#"+ins._defines.City+ins._id);if(oC==null||oC==undefined){console.log(MSGScript.CITY_NOT_RECOGNIZE);return false;}
$.ajax({url:$.broker_fields_manager._default.CitiesUrl,dataType:"json",success:function(ans){if(ans==null||ans.length<=0)return;var html=new String(ins._opt)
.replace("{0}","-1")
.replace("{1}",MSGScript.CITY_CHOOSE);$.each(ans,function(i,item){if(!new String(ins._selectedCity).match(new String(item.code))){html+=new String(ins._opt)
.replace("{0}",item.code)
.replace("{1}",item.name);}else{html+=new String(ins._optSelected)
.replace("{0}",item.code)
.replace("{1}",item.name);}});$(oC).html(html);},error:function(ans){console.log(ans);return false;}});},_loadDist:function(jObjRegion,ins){var oD=$("#"+ins._defines.Dist+ins._id);if(oD==null||oD==undefined){console.log(MSGScript.CITY_NOT_RECOGNIZE);return false;}
$.ajax({url:$.broker_fields_manager._default.DistrictsUrl,dataType:"json",data:{city:ins._selectedCity},success:function(ans){if(ans==null||ans.length<=0)return;var html=new String(ins._opt)
.replace("{0}","-1")
.replace("{1}",MSGUser.CHOOSE_DISTRICT);$.each(ans,function(i,item){if(!new String(ins._selectedDist).match(new String(item.code))){html+=new String(ins._opt)
.replace("{0}",item.code)
.replace("{1}",item.name);}else{html+=new String(ins._optSelected)
.replace("{0}",item.code)
.replace("{1}",item.name);}});$(oD).html(html);},error:function(ans){console.log(ans);return false;}});},_loadProj:function(jObjRegion,ins){var oP=$("#"+ins._defines.Proj+ins._id);if(oP==null||oP==undefined){console.log(MSGScript.CITY_NOT_RECOGNIZE);return false;}
var html=new String(ins._opt)
.replace("{0}","-1")
.replace("{1}",MSGUser.CHOOSE_PRJ);$.ajax({url:$.broker_fields_manager._default.ProjectsUrl,dataType:"json",data:{type:ins._selectedType,city:ins._selectedCity,dist:ins._selectedDist},success:function(ans){$.each(ans,function(i,item){if(!new String(ins._selectedProj).match(new String(item.code))){html+=new String(ins._opt)
.replace("{0}",item.code)
.replace("{1}",item.name);}else{html+=new String(ins._optSelected)
.replace("{0}",item.code)
.replace("{1}",item.name);}});$(oP).html(html);},error:function(ans){console.log(ans);return false;}});},_handlerType:function(jObjRegion,ins){var oT=$("#"+ins._defines.Type+ins._id);var oP=$("#"+ins._defines.Proj+ins._id);ins._selectedType=$(oT).val();$(oP).trigger('change');},_handlerCity:function(jObjRegion,ins){var oC=$("#"+ins._defines.City+ins._id);var oD=$("#"+ins._defines.Dist+ins._id);var oP=$("#"+ins._defines.Proj+ins._id);ins._selectedCity=$(oC).val();$(oD).trigger('change');$(oP).trigger('change');},_handlerDist:function(jObjRegion,ins){var oC=$("#"+ins._defines.City+ins._id);var oD=$("#"+ins._defines.Dist+ins._id);var oP=$("#"+ins._defines.Proj+ins._id);if($(oD).val()!=ins._selectedDist){ins._selectedDist=$(oD).val();$(oP).trigger('change');}
else{ins._loadDist(jObjRegion,ins);}},_handlerProj:function(jObjRegion,ins){var oP=$("#"+ins._defines.Proj+ins._id);if($(oP).val()!=ins._selectedProj){ins._selectedProj=$(oP).val();}else{ins._loadProj(jObjRegion,ins);}},_handlerDel:function(jObjRegion,ins){var accept=confirm(MSGScript.WANT_DEL_ACT);if(!accept)return false;var o=ins._getInst();if(o==null||o==undefined){console.log('Can not find this row tag!');return false;}
$(o).remove();$.broker_fields_manager._unregister(ins);return true;},_generatorHTML:function(objRegion){var ins=this;var html=new String(this._rowFormat)
.replace("{0}",this._slType)
.replace("{1}",this._slCity)
.replace("{2}",this._slDist)
.replace("{3}",this._slProj)
.replace("{4}",this._aDelRow);$.broker_fields_manager._insertRow(objRegion,html);this._loadType(objRegion,ins);this._loadCity(objRegion,ins);if(parseInt(this._selectedDist)>0){this._loadDist(objRegion,ins);}
if(parseInt(this._selectedProj)>0){this._loadDist(objRegion,ins);this._loadProj(objRegion,ins);}
$.each(this._defines,function(i,item){$("#"+item+ins._id).bind('change',function(){ins["_handler"+i](objRegion,ins);});});$("#"+this._delID+this._id).bind('click',function(){ins._handlerDel(objRegion,ins);});}});$.broker_fields_manager=new BrokerFieldManager();$.fn.brokerfield=function(options){if(typeof options=='string'&&((options=='parseRawDataJson')||(options=='reload'))){alert('_'+options+'BrokerFields');return $.broker_fields_manager['_'+options+'BrokerFields']();}
var args=arguments[0]||{};$.broker_fields_manager._init(args);}
function extendRemove(target,props){$.extend(target,props);for(var name in props)
if(props[name]==null)
target[name]=null;return target;}
$.fn.resetForm=function(){return this.each(function(){var type=this.type,tag=this.tagName.toLowerCase();if(tag=='form')
return $(':input',this).resetForm();if(type=='text'||type=='password'||type=='textarea')
this.value='';else if(type=='checkbox'||type=='radio')
this.checked=false;else if(tag=='select')
this.selectedIndex=-1;});}
Array.prototype.RemoveEmptyEntry=function(){for(var i=0;i<this.length;i++){if(this[i]==null||this[i]==""||this[i]=='')
this.splice(i,1);}
return this;}
function AccountInfo(){this._o=null;this.name='';this.regisDate='';this.addr='';this.curBalance='';this.tranHref='/Users/UsersManageTransaction';this._defaults={lang:'vi',url:{getInfo:'/Users/getAccountInfo'}}
this._res={en:{},vi:{BDS_ACC_INFO_0000:'<div class="white-background">'+
'<div class="bold-title row-title" style="padding-bottom:5px;">{1}</div>'+
'<div class="row-account">'+
'<ul>'+
'<li><span><b>{2}</b>{3}</span></li>'+
'<li><span><b>{4}</b>{5}</span></li>'+
'<li><span><b>{6}</b>{7}</span></li>'+
'<li><span><b>{8}</b>{9}{12}</span></li>'+
'</ul>'+
'</div>'+
'<div class="row-account">'+
'<a href="{10}">{11}</a>'+
'</div>'+
'</div>',BDS_ACC_INFO_0001:'THÔNG TIN TÀI KHOẢN',BDS_ACC_INFO_0002:'Tên:&nbsp;',BDS_ACC_INFO_0004:'Đăng kí:&nbsp;',BDS_ACC_INFO_0006:'Địa chỉ:&nbsp;',BDS_ACC_INFO_0008:'Tài khoản còn:&nbsp;',BDS_ACC_INFO_0010:'Lịch sử giao dịch',BDS_ACC_INFO_0012:'&nbsp;',BDS_ACC_INFO_0099:''}}
this._event={GET_INFO_COMPLETE:'get_info_complete'}}
$.extend(AccountInfo.prototype,{_init:function(opts){$.extend($.accinf._defaults,opts||{});$.accinf._run();},_run:function(){$($.accinf).unbind($.accinf._event.GET_INFO_COMPLETE);$($.accinf).bind($.accinf._event.GET_INFO_COMPLETE,function(){$.accinf._renderHTML();});$.accinf._getInfo();},_renderHTML:function(){var lng=$.accinf._defaults.lang;var html=new String($.accinf._res[lng].BDS_ACC_INFO_0000)
.replace("{1}",$.accinf._res[lng].BDS_ACC_INFO_0001)
.replace("{2}",$.accinf._res[lng].BDS_ACC_INFO_0002)
.replace("{3}",$.accinf.name)
.replace("{4}",$.accinf._res[lng].BDS_ACC_INFO_0004)
.replace("{5}",$.accinf.regisDate)
.replace("{6}",$.accinf._res[lng].BDS_ACC_INFO_0006)
.replace("{7}",$.accinf.addr)
.replace("{8}",$.accinf._res[lng].BDS_ACC_INFO_0008)
.replace("{9}",$.accinf.curBalance)
.replace("{10}",$.accinf.tranHref)
.replace("{11}",$.accinf._res[lng].BDS_ACC_INFO_0010)
.replace("{12}",$.accinf._res[lng].BDS_ACC_INFO_0012);$($.accinf._o).html(html);},_getInfo:function(){$.ajax({url:$.accinf._defaults.url.getInfo,dataType:'json',data:{},success:function(inf){$.accinf.name=inf.name;$.accinf.regisDate=inf.date;$.accinf.addr=inf.address;$.accinf.curBalance=inf.balance;var event=$.accinf._event.GET_INFO_COMPLETE;$($.accinf).trigger(event);return true;},error:function(errmes){alert(errmes);console.log(errmes);return false;}});}});$.accinf=new AccountInfo();$.fn.AccountInfo=function(){var o=$(this);$.accinf._o=o;var opts=arguments[0];$.accinf._init(opts);}
function AccountTransHis(){this._o;this._data=[];this._defaults={lang:'vi',url:{getAccTransHisInf:'/Users/getAccTransHis',getPageCount:'/Users/getAccTransHisCount'},paging:{pNum:'0',pSize:'5',arrPageSize:[5,10,15,20,25,30,35,40,45,50]}}
this._event={LOAD_DATA_DONE:'data_complete_loaded',LOAD_PAGING_DONE:'paging_coplete_loaded'}
this._res={en:{},vi:{BDS_ACC_TRANS_HIS_INFO_PAGE:'<div id="UsTranMng">'+
'<div id="UsTranHeader">'+
'<div id="UsTranInner" class="UsTranInner">'+
'<div class="time header"><p>{1}</p></div>'+
'<div class="money header pad-top"><p>{2}</p></div>'+
'<div class="transfer header pad-top"><p>{3}</p></div>'+
'<div class="receiver header pad-top"><p>{4}</p></div>'+
'<div class="note header pad-top"><p>{5}</p></div>'+
'</div>'+
'</div>'+
'<div id="UsTranRows"></div>'+
'<div style="clear: both; margin-top: 10px; padding-top: 10px;" class="PagingCust">'+
'<div class="Paging">'+
'<div class="pager" style="text-align: left;">'+
'<div id="paging" style="float: left; width: 70%"></div>'+
'<div style="float: right; margin-right: 0px">{11}'+
'<select name="cboItem" id="cboItem" style="border: 1px solid #999999"></select>'+
'</div>'+
'</div>'+
'</div>'+
'</div>'+
'</div>',BDS_ACC_TRANS_HIS_INFO_ROW:'<div id="line{5}" class="UsTranInner">'+
'<div class="time cell"><p>{6}</p></div>'+
'<div class="money cell"><p>{7}</p></div>'+
'<div class="transfer cell"><p>{8}</p></div>'+
'<div class="receiver cell"><p>{9}</p></div>'+
'<div class="note cell"><p>{10}</p></div>'+
'</div>',BDS_ACC_TRANS_HIS_INFO_0001:'Thời điểm giao dịch',BDS_ACC_TRANS_HIS_INFO_0002:'Số tiền',BDS_ACC_TRANS_HIS_INFO_0003:'Người chuyển',BDS_ACC_TRANS_HIS_INFO_0004:'Người nhận',BDS_ACC_TRANS_HIS_INFO_0005:'Chú thích',BDS_ACC_TRANS_HIS_INFO_0011:'Hiển thị số lần giao dịch:',BDS_ACC_TRANS_HIS_INFO_0099:''}}}
$.extend(AccountTransHis.prototype,{_init:function(opts){$.extend($.transhis._defaults,opts||{});$.transhis._start();},_start:function(){$.transhis._buildHTML();$($.transhis).unbind($.transhis._event.LOAD_DATA_DONE);$($.transhis).bind($.transhis._event.LOAD_DATA_DONE,function(){$.transhis._buildRows();$.transhis._buildPaging();}).bind($.transhis._event.LOAD_PAGING_DONE,function(){$.transhis._bindEventHandler();});$.transhis._getData();},_getData:function(){var url=$.transhis._defaults.url.getAccTransHisInf;var pNum=$.transhis._defaults.paging.pNum;var pSize=$.transhis._defaults.paging.pSize;$.ajax({url:url,dataType:'json',data:{pn:pNum,pz:pSize},success:function(data){if(data!=""&&data!=''&&data!=null){$.transhis._data=data;}
var event=$.transhis._event.LOAD_DATA_DONE;$($.transhis).trigger(event);},error:function(mes){alert(mes);console.log(mes);return false;}});},_bindEventHandler:function(){$("#cboItem").unbind('change');$("#cboItem").bind('change',function(){$.transhis._defaults.paging.pSize=$(this).val();$.transhis._handlerChangePageSize();});},_buildRows:function(){var lng=$.transhis._defaults.lang;var data=$.transhis._data;if(data==null||data.length<=0)return true;var html='';$.each(data,function(i,item){html=new String($.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_ROW)
.replace("{5}",item.id)
.replace("{6}",item.date)
.replace("{7}",item.money)
.replace("{8}",item.senderEmail)
.replace("{9}",item.receiverEmail)
.replace("{10}",item.note);});$("#UsTranRows").html(html).fadeIn('slow');},_buildPaging:function(){var pNum=$.transhis._defaults.paging.pNum;var pSize=$.transhis._defaults.paging.pSize;var url=$.transhis._defaults.url.getPageCount;$.ajax({url:url,dataType:'json',data:{},success:function(count){var o=$("#paging");$(o).pagination(count,{items_per_page:pSize,current_page:pNum,prev_text:'<',next_text:'>',num_edge_entries:2,callback:$.transhis._handlerChangePage});var event=$.transhis._event.LOAD_PAGING_DONE;$($.transhis).trigger(event);return true;},error:function(mes){alert(mes);console.log(mes);return false;}});var opt='<option value="{0}">{0}</option>';var l=$.transhis._defaults.paging.arrPageSize;var html=new String();$.each(l,function(i,value){html+=new String(opt).replace(/\{0\}/gi,value);});if($("#cboItem").val()!=null&&$("#cboItem").val()!=""&&$("#cboItem").val()!=''){return true;}
$("#cboItem").html(html).fadeIn('slow');},_buildHTML:function(){var lng=$.transhis._defaults.lang;var html=new String($.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_PAGE)
.replace("{1}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0001)
.replace("{2}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0002)
.replace("{3}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0003)
.replace("{4}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0004)
.replace("{5}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0005)
.replace("{11}",$.transhis._res[lng].BDS_ACC_TRANS_HIS_INFO_0011);$($.transhis._o).html(html);},_handlerChangePage:function(new_page_index,pagination_container){var curPage=$.transhis._defaults.paging.pNum;if(parseInt(curPage)!=parseInt(new_page_index)){$.transhis._defaults.paging.pNum=new_page_index;$.transhis._getData();}},_handlerChangePageSize:function(){$.transhis._getData();}});$.transhis=new AccountTransHis();$.fn.TransactionsHistory=function(){$.transhis._o=$(this);var opts=arguments[0];$.transhis._init(opts);}
Date.prototype.AddDays=function(days){var tmp=new Date(this);tmp.setDate(tmp.getDate()+days);return tmp;}
Date.prototype.Convert=function(value,culture){var tmp=new Date(this);var radix=10;if(typeof value=='string'&&typeof culture=='string'){var array=value.split("/");if(array.length==3){var year='',month='',day='';switch(culture){case"en-EN":year=parseInt(array[2],radix);month=parseInt(array[0],radix);day=parseInt(array[1],radix);break;case"fr-FR":year=parseInt(array[2],radix);month=parseInt(array[1],radix);day=parseInt(array[0],radix);break;}
tmp.setFullYear(year,--month,day);return tmp;}}}
Date.prototype.ToString=function(format,culture){var year=this.getFullYear();var month=this.getMonth();var date=this.getDate();var hour=this.getHours();var minute=this.getMinutes();var second=this.getSeconds();if(typeof format=='string'&&typeof culture=='string'){switch(format){case'd':var retFormat='{0}/{1}/{2}';switch(culture){case'en-EN':return retFormat.replace('{0}',(month+1)).replace('{1}',date).replace('{2}',year);case'fr-FR':return retFormat.replace('{0}',date).replace('{1}',++month).replace('{2}',year);}
default:return new Date(this).toDateString();break;}}}
function VipConfigInstance(settings){this._id=$.vc._register(this);this._dateFormat={en:'yy/mm/dd',vi:'dd/mm/yy'}
this._settings={lang:'vi',dom:$("#vip_cofig_info"),pid:$.vc._defaults.pid,vid:0,pubyn:0,beginDate:{disableYN:true,value:''},endDate:{disableYN:false,value:''},type:{disableYN:false,value:'0'},money:{disableYN:true,value:''},getVipTypeCodesUrl:'/Users/getVipTypeCodes'};$.extend(this._settings,settings||{});this._selected={pid:this._settings.pid,vid:this._settings.vid,bg:'',ed:'',ty:'0'}
this._resource={en:{},vi:{sdt_bdsweb_msgid_0000:'<ul id="row_{1}">'+
'<li class="begindate"><span><label>{2} (<font color="red">*</font>)</label><input name="from_date_{1}" ondblclick="javascript:void(0)" value="{7}" readonly="readonly" {9}/></span></li>'+
'<li class="enddate"><span><label>{3} (<font color="red">*</font>)</label><input name="to_date_{1}" ondblclick="javascript:void(0)" value="{8}" readonly="readonly" {10}/></span></li>'+
'<li class="type"><span><label>{4}</label><select name="type_{1}" readonly="readonly" {11} style="width: 124px;">{13}</select></span></li>'+
'<li class="cost"><span><label>{5}</label><input name="cost_{1}" readonly="readonly" value="{6}" {12}/></span></li>'+
'</ul>',sdt_bdsweb_msgid_0001:'Ngày bắt đầu',sdt_bdsweb_msgid_0002:'Ngày kết thúc',sdt_bdsweb_msgid_0003:'Chọn loại tin',sdt_bdsweb_msgid_0004:'Thành tiền',sdt_bdsweb_msgid_0005:'<ul id="row_{1}">'+
'<li class="begindate"><span><label>{2}</label><input name="from_date_{1}" ondblclick="javascript:void(0)" value="{7}" readonly="readonly" {9}/></span></li>'+
'<li class="enddate"><span><label>{3}</label><input name="to_date_{1}" ondblclick="javascript:void(0)" value="{8}" readonly="readonly" {10}/></span></li>'+
'<li class="type"><span><label>{4}</label><select name="type_{1}" readonly="readonly" {11} style="width: 124px;">{13}</select></span></li>'+
'<li class="cost"><span><label>{5}</label><input name="cost_{1}" readonly="readonly" value="{6}" {12}/></span></li>'+
'<li class="del"><img src="'+MEDIA.Source+'/images/common/cross-disable.png" alt="Delete" name="del_{1}"/></li>'+
'</ul>',sdt_bdsweb_msgid_0006:'class="disabled" disabled="disabled"',sdt_bdsweb_msgid_0007:'<option value="-1">--Chọn loại VIP--</option>',sdt_bdsweb_msgid_0008:'Bạn muốn xóa cấu hình tin này?',sdt_bdsweb_msgid_0009:'',sdt_bdsweb_msgid_0099:''}},this._events={sdt_bdsweb_vcins_eventgid_0001:'build_html_done',sdt_bdsweb_vcins_eventid_0002:'iam_destroyed'}}
$.extend(VipConfigInstance.prototype,{_exist:function(){var pid=this._settings.pid;var vid=this._settings.vid;if(isNaN(pid)||pid==null||pid==undefined||pid==''||pid==""||isNaN(vid)||vid==null||vid==undefined||vid==''||vid==""){return false;}
return true;},_start:function(){$(this).bind(this._events.sdt_bdsweb_vcins_eventgid_0001,function(){var ins=this;var listener=this;this._selected.ty=this._settings.type.value;$('select[name*="type_'+this._id+'"]',this._settings.dom).change(function(){if(parseInt(ins._selected.ty)==parseInt($(this).val()))return;ins._selected.ty=$(this).val();$(listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0004,[listener._id]);});$('img[name*="del_'+this._id+'"]',this._settings.dom).mouseover(function(){$(this).attr('src',MEDIA.Source+'/images/common/cross.png');}).mouseout(function(){$(this).attr('src',MEDIA.Source+'/images/common/cross-disable.png');}).click(function(){var lng=ins._settings.lang;var mes=ins._resource[lng].sdt_bdsweb_msgid_0008;$("#dialogcontrol").html(mes);$("#dialogcontrol").dialog("destroy");$("#dialogcontrol").dialog({modal:true,width:200,buttons:{'Đồng ý':function(){ins._destroy();$(listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0007,[ins._id,ins._parseJson()]);$(this).dialog('close');},'Hủy':function(){$(this).dialog('close');}}});});this._selected.bg=this._settings.beginDate.value;if(!this._settings.beginDate.disableYN){$("input[name*='from_date_"+this._id+"']\"").datepicker({dateFormat:ins._dateFormat[this._settings.lang],maxDate:new Date().AddDays(365),minDate:new Date(),onSelect:function(dateText,obj){if(ins._selected.bg.match(dateText))return;ins._selected.bg=dateText;$(listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0002,[listener._id]);}});}
this._selected.ed=this._settings.endDate.value;if(!this._settings.endDate.disableYN){$("input[name*='to_date_"+this._id+"']\"").datepicker({dateFormat:ins._dateFormat[this._settings.lang],maxDate:new Date().AddDays(365),minDate:new Date(),onSelect:function(dateText,obj){if(ins._selected.ed.match(dateText))return;ins._selected.ed=dateText;$(listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0003,[listener._id]);}});}});this._generateHTML();},_setBeginDate:function(value){this._selected.bg=value;$('input[name*="from_date_'+this._id+'"]',this._settings.dom).val(value);},_getBeginDate:function(){return this._selected.bg;},_setEndDate:function(value){this._selected.ed=value;$('input[name*="to_date_'+this._id+'"]',this._settings.dom).val(value);},_getEndDate:function(){return this._selected.ed;},_setType:function(value){this._selected.ty=value;$('select[name*="type_'+this._id+'"]',this._settings.dom).val(value);},_getType:function(){return this._selected.ty;},_setMoney:function(value){$('input[name*="cost_'+this._id+'"]',this._settings.dom).val(value);},_getPubYN:function(){var pubyn=this._settings.pubyn;if(isNaN(pubyn)||pubyn==null||pubyn==undefined||pubyn==''||pubyn=="")return false;return parseInt(this._settings.pubyn)==1;},_parseJson:function(){return this._selected;},_requestTypeCode:function(selected){var opt='<option value="{0}" {2}>{1}</option>';var dom=this._settings.dom;var ins=this;$.ajax({url:this._settings.getVipTypeCodesUrl,dataType:'json',data:{pid:ins._settings.pid,ty:ins._settings.type.value},success:function(items){items.reverse();var html=new String();if(selected!=null&&selected!=undefined&&selected!=""&&selected!=''){html=new String();}
$.each(items,function(i,item){html+=new String(opt)
.replace("{0}",item.code)
.replace("{1}",item.name)
.replace("{2}",item.code==selected?'selected="selected"':'');});$('select[name*="type_'+ins._id+'"]',dom).html(html);},error:function(mes){alert(mes);console.log(mes);return false;}});},_generateHTML:function(){var diableBD=this._settings.beginDate.disableYN;var disableED=this._settings.endDate.disableYN;var disableTY=this._settings.type.disableYN;var lng=this._settings.lang;var html=''
if(this._id==0||(this._getPubYN()&&this._exist())){html=new String(this._resource[lng].sdt_bdsweb_msgid_0000);}
else{html=new String(this._resource[lng].sdt_bdsweb_msgid_0005);}
html=html
.replace(/\{1\}/gi,this._id)
.replace("{2}",this._resource[lng].sdt_bdsweb_msgid_0001)
.replace("{3}",this._resource[lng].sdt_bdsweb_msgid_0002)
.replace("{4}",this._resource[lng].sdt_bdsweb_msgid_0003)
.replace("{5}",this._resource[lng].sdt_bdsweb_msgid_0004)
.replace("{6}",this._settings.money.value)
.replace("{7}",this._settings.beginDate.value)
.replace("{8}",this._settings.endDate.value)
.replace("{9}",diableBD?this._resource[lng].sdt_bdsweb_msgid_0006:"")
.replace("{10}",disableED?this._resource[lng].sdt_bdsweb_msgid_0006:"")
.replace("{11}",disableTY?this._resource[lng].sdt_bdsweb_msgid_0006:"")
.replace("{12}",this._resource[lng].sdt_bdsweb_msgid_0006)
.replace("{13}",this._resource[lng].sdt_bdsweb_msgid_0007);$(this._settings.dom).append(html);this._requestTypeCode(this._settings.type.value);$(this).trigger(this._events.sdt_bdsweb_vcins_eventgid_0001);},_destroy:function(){$.vc._unregister(this._id);$("input[name*='from_date_"+this._id+"']\"").datepicker("destroy");$("input[name*='to_date_"+this._id+"']\"").datepicker("destroy");$('#row_'+this._id,this._settings.dom).remove();}});function VipConfig(){this._o={};this._listener={};this._nextId=0;this._inst=[];this._data=[];this._defaults={pid:'0',uid:'0',lang:'vi',maxiPubDate:180,url:{getList:'/Users/getListVipConfigProduct',getType:'/Users/getVipTypeCodes',toMoney:'/Users/getVipConfigMoney',getPrice:'/Users/getPrice4VipType',getMaxPubDate:'/Users/getMaximumPubDate',saveTheVipConfig:'/Users/setVipConfig'}}
this._mode={create:0,update:1}
this._drawDate={Year:new Date().getFullYear(),Month:new Date().getMonth(),Day:new Date().getDay()}
this._resource={en:{},vi:{sdt_bdsweb_vipconfig_msgid_0001:'Thêm cấu hình tin',sdt_bdsweb_vipconfig_msgid_0002:'Xóa cấu hình này',sdt_bdsweb_vipconfig_msgid_0003:'<div class="vip_list_container" style="margin: 5px;">'+
'<div id="dialogindialog" name="dialogindialog" style="display:none;" title="Thông báo"></div>'+
'<div id="dialogcontrol" name="dialogcontrol" style="display:none;" title="Xác nhận yêu cầu"></div>'+
'<div id="vip_cofig_info" class="vip_cofig_info"></div>'+
'<div id="vip_cofig_info_explain"></div>'+
'<div class="footer">'+
'<input type="button" class="fg-button fg-button-bg-default fg-button-toggleable ui-corner-all" id="additional" name="additional" value="{1}" />'+
'<input type="button" class="fg-button fg-button-bg-default fg-button-toggleable ui-corner-all" id="saveconfigvip" name="saveconfigvip" value="{3}" />'+
'<input type="button" class="fg-button fg-button-bg-default fg-button-toggleable ui-corner-all" id="close" name="close" value="Đóng lại"   onclick="" style="display:none;"/>'+
'<div id="sending_info" style="display: none; margin-top: 10px;" ></div>'+
'<div id="progressbar" class=".ui-progressbar-value" value="0" style="display: none; margin-top: 5px;"></div>'+
'</div>'+
'</div>',sdt_bdsweb_vipconfig_msgid_0004:'Lưu toàn bộ thay đổi',sdt_bdsweb_vipconfig_msgid_0005:'Bạn phải hoàn thành cầu hình hiện tại',sdt_bdsweb_vipconfig_msgid_0006:'Bạn phải chọn ngày bắt đầu',sdt_bdsweb_vipconfig_msgid_0007:'Bạn phải chọn ngày kết thúc',sdt_bdsweb_vipconfig_msgid_0008:'<div class="vip_list_container" style="margin: 5px;">'+
'<div id="dialogindialog" name="dialogindialog" style="display:none;" title="Thông báo"></div>'+
'<div id="dialogcontrol" name="dialogcontrol" style="display:none;" title="Xác nhận yêu cầu"></div>'+
'<div id="vip_cofig_info" class="vip_cofig_info"></div>'+
'<div id="vip_cofig_info_explain"></div>'+
'<div class="footer">'+
'<input type="button" class="fg-button fg-button-bg-default fg-button-toggleable ui-corner-all" id="additional" name="additional" value="{1}" />'+
'</div>'+
'</div>',sdt_bdsweb_vipconfig_msgid_0009:'',sdt_bdsweb_vipconfig_msgid_0099:''}}
this._VipTypeExplain={en:[''],vi:['<b>Tin thường</b> : Là loại tin đăng bằng chữ <font color="#009AD2">màu xanh</font>, khung <font color="#009AD2">màu xanh</font>.','','<b>Tin Vip 3</b>: Là loại tin đăng bằng chữ <font color="#FF6600"><b>thường màu cam</b></font>, khung <font color="#009AD2"><b>màu xanh</b></font> và luôn nằm dưới tin Vip 2 nhưng luôn luôn hiển thị trên tin thường.','<b>Tin Vip 2</b> : Là loại tin đăng bằng chữ <font color="#FF6600"><b>IN HOA MÀU CAM</b></font>, khung <font color="#009AD2"><b>màu xanh</b></font>, nằm bên dưới tin VIP 1 và ở trên các tin thường.','<b>Tin Vip 1</b> : Là loại tin được đăng tiêu đề bằng chữ <font color="#DF1B23"><b>IN HOA MÀU ĐỎ</b></font>, khung <font color="#DF1B23"><b>màu đỏ</b></font>, hiển thị ở top đầu trang tin và được hưởng nhiều ưu tiên nhất.']}
this._event={sdt_bdsweb_vipconfig_eventid_0001:'get_list_done',sdt_bdsweb_vipconfig_eventid_0002:'change_begin_date',sdt_bdsweb_vipconfig_eventid_0003:'change_end_date',sdt_bdsweb_vipconfig_eventid_0004:'change_vip_type',sdt_bdsweb_vipconfig_eventid_0005:'created_instance',sdt_bdsweb_vipconfig_eventid_0006:'got_money',sdt_bdsweb_vipconfig_eventid_0007:'iam_destroyed',sdt_bdsweb_vipconfig_eventid_0099:''}
this._culture={en:'en-EN',vi:'fr-FR'}}
$.extend(VipConfig.prototype,{_init:function(opts){$.extend($.vc._defaults,opts||{});this._start();},_register:function(inst){var id=this._nextId++;this._inst[id]=inst;var event=this._event.sdt_bdsweb_vipconfig_eventid_0005;$(this._listener).trigger(event,[id]);return id;},_unregister:function(id){this._inst[id]=null;},_start:function(){this._generateHTML();var mode=this._getMode();$("#saveconfigvip").click(function(){$.vc._handlerSaveAllChange();});$("#additional").click(function(){$.vc._handlerAddNewVipConfig();});var event=this._event.sdt_bdsweb_vipconfig_eventid_0001;$(this._listener).unbind(event);$(this._listener).bind(event,function(){var event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0005;$($.vc._listener).unbind(event);$($.vc._listener).bind(event,function(e,id){event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0002;$($.vc._inst[id]).bind(event,function(e,id){$.vc._handlerChangeBeginDate(e,id)});event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0003;$($.vc._inst[id]).bind(event,function(e,id){$.vc._handlerChangeEndDate(e,id)});event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0004;$($.vc._inst[id]).bind(event,function(e,id){$.vc._handlerChangeType(e,id)});event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0007;$($.vc._inst[id]).bind(event,function(e,id,data){$.vc._handlerDeleteVipConfig(e,id,data);});});if($.vc._data.length>0){$.each($.vc._data,function(i,item){var disable=parseInt(item.pubyn)==0?false:true;var setting={vid:item.id,pubyn:disable?1:0,beginDate:{disableYN:disable,value:item.bgdate.date},endDate:{disableYN:disable,value:item.eddate.date},type:{value:item.type.code},money:{value:item.money}};var ins=new VipConfigInstance(setting);ins._start();});}
else{var ins=new VipConfigInstance({beginDate:{disableYN:false,value:''}});ins._start();}});switch(mode){case $.vc._mode.create:$($.vc._listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0001);break;case $.vc._mode.update:this._getList();break;default:break;}},_getMode:function(){if(isNaN(this._defaults.pid)||parseInt(this._defaults.pid)==0||isNaN(this._defaults.uid)||parseInt(this._defaults.uid)==0){return this._mode.create;}
return this._mode.update;},_generateHTML:function(){if($.vc._o==null||$.vc._o==undefined)return false;var lng=this._defaults.lang;var mode=this._getMode();var html='';switch(mode){case $.vc._mode.create:html=new String(this._resource[lng].sdt_bdsweb_vipconfig_msgid_0008)
.replace("{1}",this._resource[lng].sdt_bdsweb_vipconfig_msgid_0001);break;case $.vc._mode.update:html=new String(this._resource[lng].sdt_bdsweb_vipconfig_msgid_0003)
.replace("{1}",this._resource[lng].sdt_bdsweb_vipconfig_msgid_0001)
.replace("{3}",this._resource[lng].sdt_bdsweb_vipconfig_msgid_0004);break;default:html=new String(this._resource[lng].sdt_bdsweb_vipconfig_msgid_0003)
.replace("{1}",this._resource[lng].sdt_bdsweb_vipconfig_msgid_0001)
.replace("{3}",this._resource[lng].sdt_bdsweb_vipconfig_msgid_0004);break;}
$($.vc._o).html(html);},_getList:function(){if(isNaN(this._defaults.pid)||this._defaults.pid==''||this._defaults.pid==''||this._defaults.pid==null)
$(this._listener).trigger(this._event.sdt_bdsweb_vipconfig_eventid_0001);else{$.ajax({url:$.vc._defaults.url.getList,dataType:'json',data:{pid:$.vc._defaults.pid,mid:$.vc._defaults.uid},success:function(list){$.vc._data=list;$($.vc._listener).trigger($.vc._event.sdt_bdsweb_vipconfig_eventid_0001);return true;},error:function(mes){alert(mes);console.log(mes);return false;}});}},_getMoney:function(data,ins){var event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0006;$.ajax({url:$.vc._defaults.url.toMoney,type:'post',dataType:"json",data:data,success:function(ans){$($.vc._listener).trigger(event,[ans.money,ins]);},error:function(ans){alert(ans.message+' error occur!');console.log(ans);return 0;}});},_handlerChangeBeginDate:function(event,id){if(isNaN(id)||id==undefined||id==null||parseInt(id)!=0){console.log('argument exception (id)');return false;}
var ins=$.vc._inst[id];var data=ins._parseJson();if(data.ed==''||data.ed==""||data.ed==null)
return false;var lng=this._defaults.lang;var culture=this._culture[lng];var dateEnd=Date.prototype.Convert(data.ed,culture);var dateBegin=Date.prototype.Convert(data.bg,culture);if(dateBegin>dateEnd){dateBegin=dateEnd;}
var event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0006;$($.vc._listener).bind(event,function(e,money,obj){obj._setMoney(money);$($.vc._listener).unbind(e);});ins._setBeginDate(dateBegin.ToString('d',culture));this._getMoney(ins._parseJson(),ins);},_handlerChangeEndDate:function(event,id){if(isNaN(id)||id==undefined||id==null){console.log('argument exception (id)');return false;}
var ins=$.vc._inst[id];var data=ins._parseJson();if(data.bg==''||data.bg==""||data.bg==null)
return false;var nextins=$.vc._getNextInst(id);var nextdata=nextins!=null&&nextins!=undefined?nextins._parseJson():null;var lng=this._defaults.lang;var culture=this._culture[lng];var dateEnd=Date.prototype.Convert(data.ed,culture);var dateBegin=Date.prototype.Convert(data.bg,culture);if(dateEnd<dateBegin){dateEnd=dateBegin;}
else{var limit=id+1;while(nextdata!=null){if(Date.prototype.Convert(data.ed,culture)<Date.prototype.Convert(nextdata.ed,culture)){break;}
nextins=$.vc._inst[++limit];nextdata=nextins==null||nextins==undefined?null:nextins._parseJson();}
for(var i=id+1;i<limit;i++){$.vc._inst[i]._destroy();}
nextins=$.vc._inst[limit];}
var event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0006;$($.vc._listener).bind(event,function(e,money,obj){obj._setMoney(money);$($.vc._listener).unbind(e);});if(nextins==null||nextins==undefined){ins._setEndDate(dateEnd.ToString('d',culture));}
else{ins._setEndDate(dateEnd.ToString('d',culture));nextins._setBeginDate(dateEnd.AddDays(1).ToString('d',culture));$($.vc._listener).bind(event,function(e,money,obj){obj._setMoney(money);$($.vc._listener).unbind(e);});this._getMoney(nextins._parseJson(),nextins);}
this._getMoney(ins._parseJson(),ins);},_handlerChangeType:function(event,id){if(isNaN(id)||id==undefined||id==null){console.log('argument exception (id)');return false;}
var lng=this._defaults.lang;var ins=$.vc._inst[id];var insPubyn=ins._getPubYN();var data=ins._parseJson();if(data.bg==''||data.bg==""||data.bg==null){ins._setType('-1');var mes=$.vc._resource[lng].sdt_bdsweb_vipconfig_msgid_0006;$.vc._viewNotice(mes);return false;}
if(data.ed==''||data.ed==""||data.ed==null){var mes=$.vc._resource[lng].sdt_bdsweb_vipconfig_msgid_0007;$.vc._viewNotice(mes);ins._setType('-1');return false;}
$("#vip_cofig_info_explain").html(this._VipTypeExplain[lng][ins._getType()]);var preins=$.vc._getPreInst(id);var predata=preins!=null&&preins!=undefined?preins._parseJson():null;var preinsPubYN=preins!=null&&preins!=undefined?preins._getPubYN():false;var nextins=$.vc._getNextInst(id);var nextdata=nextins!=null&&nextins!=undefined?nextins._parseJson():null;var nextinsPubYN=nextins!=null&&nextins!=undefined?nextins._getPubYN():false;var culture=this._culture[lng];var event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0006;$($.vc._listener).bind(event,function(e,money,obj){obj._setMoney(money);$($.vc._listener).unbind(e);});if(predata!=null&&parseInt(data.ty)==parseInt(predata.ty)&&!preinsPubYN){preins._setEndDate(Date.prototype.Convert(ins._getEndDate(),culture).ToString('d',culture));$.vc._getMoney(preins._parseJson(),preins);ins._destroy();}
else if(nextdata!=null&&parseInt(data.ty)==parseInt(nextdata.ty)&&!nextinsPubYN){if(id!=0){nextins._setBeginDate(Date.prototype.Convert(ins._getBeginDate(),culture).ToString('d',culture));$.vc._getMoney(nextins._parseJson(),nextins);ins._destroy();}
else{ins._setEndDate(Date.prototype.Convert(nextins._getEndDate(),culture).ToString('d',culture));$.vc._getMoney(ins._parseJson(),preins);nextins._destroy();}}
else{$.vc._getMoney(ins._parseJson(),ins);}},_getLastInst:function(){for(var i=$.vc._inst.length-1;i>=0;i--){var ins=$.vc._inst[i];if(ins!=null&&ins!=undefined){return ins;}}},_getNextInst:function(id){if(isNaN(id)||id==null||id==undefined)return null;for(var i=id+1;i<$.vc._inst.length;i++){var ins=$.vc._inst[i];if(ins!=null&&ins!=undefined){return ins;}}
return null;},_getPreInst:function(id){if(isNaN(id)||id==null||id==undefined)return null;for(var i=id-1;i>=0;i--){var ins=$.vc._inst[i];if(ins!=null&&ins!=undefined){return ins;}}
return null;},_viewNotice:function(mes){alert(mes);return;},_handlerAddNewVipConfig:function(){var lng=this._defaults.lang;var lastInst=this._getLastInst();if(lastInst==null||lastInst==undefined){var ins=new VipConfigInstance();ins._start();return;}
var data=lastInst._parseJson();if(data.bg==''||data.bg==""||data.bg==null||data.ed==''||data.ed==""||data.ed==null||data.ty==''||data.ty==""||data.ty==null){var mes=$.vc._resource[lng].sdt_bdsweb_vipconfig_msgid_0005;$.vc._viewNotice(mes);return;}
var culture=this._culture[lng];var beginDate=Date.prototype.Convert(lastInst._getEndDate(),culture).AddDays(1).ToString('d',culture);var setting={beginDate:{disableYN:true,value:beginDate}}
var ins=new VipConfigInstance(setting);ins._start();},_handlerDeleteVipConfig:function(event,id,data){if(isNaN(id)||id==null||id==undefined||data==null||data==undefined)return;var lng=this._defaults.lang;var culture=this._culture[lng];var preins=this._getPreInst(id);var nextins=this._getNextInst(id);var event='';if(nextins!=null&&nextins!=undefined){preins._setEndDate(data.bg);event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0006;$($.vc._listener).bind(event,function(e,money,obj){obj._setMoney(money);$($.vc._listener).unbind(e);});$.vc._getMoney(preins._parseJson(),preins);event=$.vc._event.sdt_bdsweb_vipconfig_eventid_0004;$(preins).trigger(event,[preins._id]);}},_handlerSaveAllChange:function(){var progress=0;$("#progressbar").progressbar('destroy');$("#progressbar").progressbar({value:0});$("#progressbar").fadeIn('slow');$("#sending_info").html(MSGScript.PRE_SEND);$("#sending_info").fadeIn('slow');var len=$.vc._inst.length;$.each($.vc._inst,function(i,item){$("#sending_info").html(MSGScript.SENDING_POST_NUM+(i+1));var data=item._parseJson();$.ajax({url:'/Users/setVipConfig',type:'post',dataType:'json',data:data,success:function(retval){progress=progress+1;if(new String(retval).toLowerCase()!='false'){$("#sending_info").html(MSGScript.SENT_POST+(i+1));$("#progressbar").progressbar("value",((progress)*100/len));if(progress==len){$("#sending_info").html(MSGScript.SENT_WHOLE);}}
else{$("#sending_info").html(MSGScript.POST_NUM+(i+1)+MSGScript.HAS_ERROR+' '+retval);}},error:function(response,status,xhr){$("#sending_info").html(MSGScript.POST_NUM+(i+1)+MSGScript.HAS_ERROR_DETAIL+xhr.statusText);return false;}});});},_getListVipConfig:function(){var list=[];for(var i=0;i<$.vc._inst.length;i++){var ins=$.vc._inst[i];if(ins!=null&&ins!=undefined){list.push(ins._parseJson());}}
return list;},_exit:function(){for(var i=0;i<this._inst.length;i++){if(this._inst[i]!=null&&this._inst[i]!=undefined){$(this._inst[i]).unbind();this._inst[i]._destroy();}}
this._o={};this._listener={};$(this._listener).unbind();this._nextId=0;this._inst=[];this._data=[];this._defaults={pid:'0',uid:'0',lang:'vi',maxiPubDate:180,url:{getList:'/Users/getListVipConfigProduct',getType:'/Users/getVipTypeCodes',toMoney:'/Users/getVipConfigMoney',getMaxPubDate:'/Users/getMaximumPubDate',saveChanges:'/Users/saveChangesVipConfig'}}}});$.vc=new VipConfig();$.fn.vipconfig=function(command){if(typeof command=='string'&&(command=='exit'||command=='getListVipConfig')){return $.vc['_'+command]();}
$.vc._o=$(this);var opts=arguments[0];$.vc._init(opts);}
function Transfer(settings){this._defaults={fromid:0,toid:0,amount:0,lang:'vi'}
this._resource={en:{sdt_bds_web_trans_0000:''},vi:{sdt_bds_web_trans_0000:''}}
this._listener={};this._events={sdt_bds_web_trans_evt_0000:''}
this._actionsURL={getBalance:'',getListMember:'',doTranfer:''}
$.extend(this._defaults,settings||{});}
$.extend(Transfer.prototype,{_init:function(){},_start:function(){},_buildHTML:function(){},_getAccBalance:function(){},_getListMembers:function(){},_handlerDoTransfer:function(){},_handlerViewTranHis:function(){}});})($);(function($){_handerChangeBeginDate=function(dateText,inst){if(dateText==''||dateText==""||dateText==null)return;var dtBegin=$("#txtBeginDate").datepicker("getDate");var dtEnd=$("#txtEndDate").datepicker("getDate")!=null?$("#txtEndDate").datepicker("getDate"):new Date();if(dtBegin>dtEnd){dtBegin.setDate(dtEnd.getDate()-1);}
$("#txtBeginDate").datepicker("setDate",dtBegin);}
_handerChangeEndDate=function(dateText,inst){if(dateText==''||dateText==""||dateText==null)return;var dtBegin=$("#txtBeginDate").datepicker("getDate")!=null?$("#txtBeginDate").datepicker("getDate"):new Date();var dtEnd=$("#txtEndDate").datepicker("getDate");if(dtEnd<dtBegin){dtEnd.setDate(dtBegin.getDate()+1);}
$("#txtEndDate").datepicker("setDate",dtEnd);}
$.fn.clearForm=function(){}})(jQuery);function checkValue(num,text,id){if(num==""){alert(MSGArticle.VALUE+text+MSGArticle.NONBLANK);document.getElementById(id).focus();return false;}
else if(isNaN(num)){alert(MSGArticle.VALUE+text+MSGArticle.NONNUMBER);document.getElementById(id).focus();return false;}
else if(num<=0){alert(MSGArticle.VALUE+text+MSGArticle.GTZERO);document.getElementById(id).focus();return false;}
return true;}
function EstValidate(){var frm=document.forms["homeEstimate"];var x=frm["txtWidthX"].value.replace(",",".");var y=frm["txtWidthY"].value.replace(",",".");var z=frm["txtFloor"].value.replace(",",".");if(checkValue(x,MSGUtility.HOME_WIDTH,"txtWidthX")
&&checkValue(y,MSGUtility.HOME_LENGTH,"txtWidthY")
&&checkValue(z,MSGUtility.HOME_NUM_FLOOR,"txtFloor")){var url=HOME_EST_REQT;url=url+"?q1="+x;url=url+"&q2="+y;url=url+"&q3="+frm["cboTypeLand"].value;url=url+"&q4="+z;url=url+"&q5="+frm["cboEmpower"].value;url=url+"&q6="+frm["cboLevel"].value;url=url+"&q7="+0;url=url+"&q8="+0;url=url+"&q9="+0;frm["hidURL"].value=url;var s=frm["txtWidthX"].value+"&";s+=frm["txtWidthY"].value+"&";s+=frm["cboTypeLand"].value+"&";s+=frm["txtFloor"].value+"&";s+=frm["cboEmpower"].value+"&";s+=frm["cboLevel"].value;frm["data"].value=s;return true;}
else{return false;}}
function ShowTabCost(id){var divFengshui=document.getElementById('divFengshui');var divRent=document.getElementById('divRent');var divTabFengshui=document.getElementById('divTabFengshui');var divTabRent=document.getElementById('divTabRent');var tabResult2=document.getElementById('tabResult2');var tabResult3=document.getElementById('tabResult3');switch(id){case 1:divCostEsitmate.style.display="block";divFengshui.style.display="none";divRent.style.display="none";divTabCostEsitmate.className="tab-hb-active";divTabFengshui.className="tab-hb-inactive";divTabRent.className="tab-hb-inactive";ChangeClassNameByElement('divTabCostEsitmate',true);ChangeClassNameByElement('divTabFengshui',false);ChangeClassNameByElement('divTabRent',false);if(tabResult1!=null){tabResult1.style.display="block";tabResult2.style.display="none";tabResult3.style.display="none";}
break;case 2:divFengshui.style.display="block";divRent.style.display="none";divTabFengshui.className="tab-hb-active";divTabRent.className="tab-hb-inactive";ChangeClassNameByElement('divTabFengshui',true);ChangeClassNameByElement('divTabRent',false);if(tabResult2!=null){tabResult2.style.display="block";tabResult3.style.display="none";}
break;case 3:divFengshui.style.display="none";divRent.style.display="block";divTabFengshui.className="tab-hb-inactive";divTabRent.className="tab-hb-active";ChangeClassNameByElement('divTabFengshui',false);ChangeClassNameByElement('divTabRent',true);if(tabResult3!=null){tabResult2.style.display="none";tabResult3.style.display="block";}
break;}}
function ChangeClassNameByElement(divName,isActive){var o=document.getElementById(divName).getElementsByTagName("div");if(isActive==true){for(var i=0;i<o.length;i++){if(o[i].className=="tab-hb-inactive-left"){o[i].className="tab-hb-active-left";}
else
if(o[i].className=="tab-hb-inactive-middle"){o[i].className="tab-hb-active-middle";}
else
if(o[i].className=="tab-hb-inactive-right"){o[i].className="tab-hb-active-right";}}}
else{for(var i=0;i<o.length;i++){if(o[i].className=="tab-hb-active-left"){o[i].className="tab-hb-inactive-left";}
else
if(o[i].className=="tab-hb-active-middle"){o[i].className="tab-hb-inactive-middle";}
else
if(o[i].className=="tab-hb-active-right"){o[i].className="tab-hb-inactive-right";}}}}
function loan_calculator_process(){var result_object=document.getElementById('loan_result');var stv=document.frmRent.txtTotal.value;var sotienvay=stv;for(var i=0;i<stv.length;i++){sotienvay=sotienvay.replace(',','');}
sotienvay=parseFloat(sotienvay);var thoihanvay=document.frmRent.txtTime.value;var laiSuat=document.frmRent.txtInterestRate.value;var loaiHinh=document.frmRent.cmbType.value;var duration_type=document.frmRent.cmbTime.value;var vonphaitra;var laiphaitra;var tongtien;if(sotienvay==""){alert(MSGUtility.MONEY_NON_BLANK);document.frmRent.txtTotal.focus();return false;}
if(thoihanvay==""){alert(MSGUtility.TIME_NON_BLANK);document.frmRent.txtTime.focus();return false;}
if(laiSuat==""){alert(MSGUtility.PRODUCT_NON_BLANK);document.frmRent.txtInterestRate.focus();return false;}
if(sotienvay<0){alert(MSGUtility.LET_INPUT_TEXT);document.frmRent.txtTotal.value="";document.frmRent.txtTotal.focus();return false;}
if(isNaN(sotienvay)){alert(MSGUtility.LET_INPUT_TEXT);document.frmRent.txtTotal.value="";document.frmRent.txtTotal.focus();return false;}
if(isNaN(thoihanvay)){alert(MSGUtility.LET_INPUT_TEXT);document.frmRent.txtTime.value="";document.frmRent.txtTime.focus();return false;}
if(isNaN(laiSuat)){alert(MSGUtility.LET_INPUT_TEXT);document.frmRent.txtInterestRate.value="";document.frmRent.txtInterestRate.focus();return false;}
if((duration_type=='month'&&(thoihanvay<1||thoihanvay>1200))||(duration_type=='year'&&(thoihanvay<1||thoihanvay>100))){if(duration_type=='month'){alert(MSGUtility.TIME_AT_LEAST);}else{alert(MSGUtility.TIME_AT_LEAST_YEAR);}
document.frmRent.txtTime.value="";document.frmRent.txtTime.focus();return false;}
if(sotienvay<parseFloat(10000000)){alert(MSGUtility.MONEY_AT_LEAST);document.frmRent.txtTotal.value="";document.frmRent.txtTotal.focus();return false;}
document.frmRent.submit();}
function loan_calculator_money(mnt){if(mnt.length<4)return mnt;mnt=loan_calculator_fmtMoney(mnt,0,'.',',');mnt=mnt.replace('N','00');return mnt;};function loan_calculator_fmtMoney(n,c,d,t){var m=(c=Math.abs(c)+1?c:2,d=d||",",t=t||".",/(\d+)(?:(\.\d+)|)/.exec(n+"")),x=m[1].length%3;return(x?m[1].substr(0,x)+t:"")+m[1].substr(x).replace(/(\d{3})(?=\d)/g,"$1"+t)+(c?d+(+m[2]).toFixed(c).substr(2):"");};var adGroupObjList=new Array();var adSize=new Array();var objMap=new Array();function BindData(l,gId,w,h){var n=l.length;if(n==0)return;else if(n==1){var player=document.getElementById("AdPlayer-"+gId);player.innerHTML=Build_Banners(gId,l[0].Id,l[0].IsImage?1:0,l[0].Url,l[0].ClickUrl," class='banner-"+w+"x"+h+"' ",l[0].Tooltip);return;}
else{var adObjList=new Array();for(var i=0;i<n;i++){var adObj=new Array();adObj.push(l[i].Id);adObj.push(l[i].Url);adObj.push(l[i].Tooltip);adObj.push(l[i].TTL);adObj.push(l[i].TTL);adObj.push(l[i].IsImage?1:0);adObj.push(l[i].ClickUrl);adObjList.push(adObj);}
adGroupObjList.push(adObjList);adSize.push(" class='banner-"+w+"x"+h+"' ");objMap.push(gId);var objIndex=0;var gIndex=jQuery.inArray(gId,objMap);var player=document.getElementById("AdPlayer-"+gId);player.innerHTML=Build_Banners(gId,adGroupObjList[gIndex][objIndex][0],adGroupObjList[gIndex][objIndex][5],adGroupObjList[gIndex][objIndex][1],adGroupObjList[gIndex][objIndex][6],adSize[gIndex],adGroupObjList[gIndex][objIndex][2]);AdLive(gId,objIndex);}}
function AdLive(gId,objIndex){var player=document.getElementById("AdPlayer-"+gId);var gIndex=jQuery.inArray(gId,objMap);if(adGroupObjList.length>0){adGroupObjList[gIndex][objIndex][4]--;if(adGroupObjList[gIndex][objIndex][4]==0){objIndex++;if(objIndex==adGroupObjList[gIndex].length){objIndex=0;for(var i=0;i<adGroupObjList[gIndex].length;i++)
adGroupObjList[gIndex][i][4]=adGroupObjList[gIndex][i][3];}
player.innerHTML=Build_Banners(gId,adGroupObjList[gIndex][objIndex][0],adGroupObjList[gIndex][objIndex][5],adGroupObjList[gIndex][objIndex][1],adGroupObjList[gIndex][objIndex][6],adSize[gIndex],adGroupObjList[gIndex][objIndex][2]);}
setTimeout(function(){AdLive(gId,objIndex)},1000);}}
function Build_Banners(gId,bId,flag,objUrl,clickUrl,size,tip){var htm="";if(flag==1)
htm="<a id='"+gId+"_banner_"+bId+"' href='"+clickUrl+"' target='_blank'>"
+"<img src='"+objUrl+"'"+size+"' alt='"+tip+"' title='"+tip+"' /></a>";else
htm="<a id='"+gId+"_banner_"+bId+"' href='"+clickUrl+"' target='_blank'><object"+size+">"
+"<param name='movie' value='"+objUrl+"' />"
+"<param name='wmode' value='transparent'/>"
+"<embed bgcolor='#ffffff' wmode='transparent' src='"+objUrl+"' "+size+">"
+"</embed>"
+"</object></a>";return htm;}
$('.sdt_banner').live('click',function(){var aTagId=$(this).children().attr('id');var bannerId=aTagId.split('_')[2];$.ajax({url:"/Advertise/IncreaseUsersClick",data:{id:bannerId},error:function(err){}});});var GLOBAL_CAPTCHA_PSEUDO_ID=0;function RefreshCaptchaImage(ElementId,CaptchaId){GLOBAL_CAPTCHA_PSEUDO_ID++;$.ajax({url:'/Captcha/RefreshCaptchaImage/'+CaptchaId+'/'+GLOBAL_CAPTCHA_PSEUDO_ID,success:function(rdata){document.getElementById(ElementId).src=rdata;}});}
function validateKw(id,noblank)
{var key=$.trim($("#"+id).val());var first=key[0];if(first=="'"||first=="\"")key=key.substring(1);var last=key[key.length-1];if(last=="'"||last=="\"")key=key.substring(0,key.length-1);var key=$.trim(key);if(noblank=='true'&&key.length==0){alert("Từ khóa nhập vào không được để trống!");$("#"+id).focus();return false;}
if(key.length>0&&(key.length<3||key.length>100))
{alert("Chiều dài từ khóa phải > 2 và <= 100 kí tự!\r\n(Không tính dấu cách trống và dấu nháy)");$("#"+id).val($.trim($("#"+id).val()));$("#"+id).focus();return false;}
return true;}
window.onload=function(){if(top.location!=self.location)top.location="http://batdongsan.com.vn";};function setHomepage()
{var home="http://batdongsan.com.vn/";if(document.all)
{document.body.style.behavior='url(#default#homepage)';document.body.setHomePage(home);}
else if(window.sidebar){if(window.netscape){try{netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");}catch(e){alert("Bạn hãy vào 'Tools -> Options -> General' trên thanh công cụ để thiết lập trang chủ cho Firefox.");}}
var prefs=Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);prefs.setCharPref('browser.startup.homepage',home);}}
<?php

class PostsController extends Controller {

    public function actionIndex() {
        $model = new Posts;
        $this->render(Yii::app()->theme->name . '/index', $model->listRecordIndex());
    }
    public function actionCats($cid, $page=0){
        $model = new Posts;
        $this->render(Yii::app()->theme->name . '/cats', $model->listRecordByCat($cid));
    }
    public function actionView($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shCore.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shBrushJScript.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shBrushJava.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shBrushJavaFX.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shBrushPhp.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/syntaxhighlighter/scripts/shBrushPlain.js');
        Yii::app()->clientScript->registerScript('SyntaxHighlighter', 'SyntaxHighlighter.defaults[\'auto-links\'] = false; SyntaxHighlighter.all();', CClientScript::POS_READY);
        
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/js/syntaxhighlighter/styles/shCoreDefault.css');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/comment.css');
        
        $model = new Posts;
        $comment = new Comments;
        if (isset($_POST['Comments'])) {
            $comment->attributes = $_POST['Comments'];
            if ($comment->validate()) {
                if ($comment->save()) {
                    $this->refresh();
                }
            }
        }

        $this->render(Yii::app()->theme->name . '/view', array('detail' => $model->detail($id), 'listComment' => $comment->listCommentByPost($id), 'comment' => $comment));
    }
}
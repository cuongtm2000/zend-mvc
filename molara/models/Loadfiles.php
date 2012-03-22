<?php

/**
 * This is the model class for table "dos_loadfiles".
 *
 * The followings are the available columns in table 'dos_loadfiles':
 * @property string $dos_templates_template
 * @property string $dos_modules_module_id
 * @property string $loadfiles
 * @property string $typefile
 *
 * The followings are the available model relations:
 * @property DosTemplates $dosTemplatesTemplate
 * @property DosModules $dosModulesModule
 */
class Loadfiles extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Loadfiles the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_loadfiles';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('dos_templates_template, dos_modules_module_id, loadfiles, typefile', 'required'),
            array('dos_templates_template', 'length', 'max' => 6),
            array('dos_modules_module_id', 'length', 'max' => 20),
            array('loadfiles', 'length', 'max' => 200),
            array('typefile', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('dos_templates_template, dos_modules_module_id, loadfiles, typefile', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosTemplatesTemplate' => array(self::BELONGS_TO, 'DosTemplates', 'dos_templates_template'),
            'dosModulesModule' => array(self::BELONGS_TO, 'DosModules', 'dos_modules_module_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'dos_templates_template' => 'Dos Templates Template',
            'dos_modules_module_id' => 'Dos Modules Module',
            'loadfiles' => 'Loadfiles',
            'typefile' => 'Typefile',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search() {
        // Warning: Please modify the following code to remove attributes that
        // should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('dos_templates_template', $this->dos_templates_template, true);
        $criteria->compare('dos_modules_module_id', $this->dos_modules_module_id, true);
        $criteria->compare('loadfiles', $this->loadfiles, true);
        $criteria->compare('typefile', $this->typefile, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    //Front end - list Files By Template, Module
    public function getFileByTemplateModule($template, $module) {
        $command = Yii::app()->db->createCommand('SELECT loadfiles, typefile FROM ' . $this->tableName() . ' WHERE dos_templates_template=:template AND dos_modules_module_id=:module');
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $rows = $command->queryAll();
        foreach ($rows as $row) {
            if ($row['typefile'] == 'css') {
                $loadfiles = explode("|", $row['loadfiles']);
                foreach ($loadfiles as $loadfile) {
                    Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/' . $loadfile);
                }
            } else if ($row['typefile'] == 'javascript') {
                $loadfiles = explode("|", $row['loadfiles']);
                foreach ($loadfiles as $loadfile) {
                    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/' . $loadfile);
                }
            } else if ($row['typefile'] == 'javascript-string') {
                Yii::app()->clientScript->registerScript('', $row['loadfiles'], CClientScript::POS_HEAD);
            }
        }
    }
    //Back end - list Module, Value by Templates
    public function moduleFileByTemplate($template){
        $command = Yii::app()->db->createCommand('SELECT dos_modules_module_id, loadfiles, typefile FROM '.$this->tableName().' WHERE dos_templates_template=:template ORDER BY dos_modules_module_id ASC');
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        return $command->queryAll();
    }
    //Back end - Add item
    public function addItem($data = NULL, $template) {
        $this->deleteItem($template); //delete

        $modules = $data->getPost('modules', '');
        $loadfiles = $data->getPost('loadfiles', '');
        $typefile = $data->getPost('typefile', '');
        
        $size = count($modules);
        for ($i = 0; $i < $size; $i++) {
            if (!empty($modules[$i]) && !empty($loadfiles[$i])) {
                $this->insertItem($template, $modules[$i], $loadfiles[$i], $typefile[$i]);
            }
        }
    }
    //Back end - insert item
    private function insertItem($template, $module, $loadfile, $typefile) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`dos_templates_template`, `dos_modules_module_id`, `loadfiles`, `typefile`) VALUES (:template, :module, :loadfile, :typefile)');
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $command->bindParam(":loadfile", $loadfile, PDO::PARAM_STR);
        $command->bindParam(":typefile", $typefile, PDO::PARAM_STR);
        $command->execute();
    }
    //Back end - delete item
    private function deleteItem($template) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_templates_template=:template');
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        $command->execute();
    }
}
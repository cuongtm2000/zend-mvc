<?php

/**
 * Description of cats
 *
 * @author Thanhansoft
 */
class listCats extends CWidget {
	public $type = 0;
	private $_data;
	private $_rowsize;

	public function init() {

	}

	private function publicAssets() {
		$model_class = new Cats();
		$this->_data = $data = $model_class->listCats();
		$this->_rowsize = $rowsize = count($data);

		if ($this->type == 0) {
			//Find cat_id
			$cat_id = 0;
			foreach ($data as $value) {
				if (NoneUnicode::convert($value['cat_name']) == Yii::app()->request->getQuery('cid')) {
					$cat_id = $value['cat_id'];
				}
			}

			//Find parent_id
			$parent_id = $cat_id;
			$sub = 0;
			if ($cat_id) {
				for ($i = 0; $i < $rowsize; $i++) {
					if ($cat_id == $data[$i]['cat_id']) {
						if ($data[$i]['parent_id']) {
							for ($j = 0; $j < $rowsize; $j++) {
								if ($data[$i]['parent_id'] == $data[$j]['cat_id']) {
									$sub = $data[$j]['parent_id'];
									break;
								}
							}
							$parent_id = $data[$i]['parent_id'];
						}
						break;
					}
				}
			}

			echo '<ul class="menu-li">';
			for ($i = 0; $i < $rowsize; $i++) {
				if ($data[$i]['parent_id'] == 0) {
					echo '<li><a href="' . Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($data[$i]['cat_name']) . '" title="' . $data[$i]['cat_name'] . '">' . $data[$i]['cat_name'] . '</a>';

					if (($parent_id && ($parent_id == $data[$i]['cat_id'])) || ($sub && ($sub == $data[$i]['cat_id']))) {
						echo '<ul>';
						for ($j = 0; $j < $rowsize; $j++) {
							if ($data[$j]['parent_id'] == $data[$i]['cat_id']) {
								echo '<li><a href="' . Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($data[$j]['cat_name']) . '" title="' . $data[$j]['cat_name'] . '">' . $data[$j]['cat_name'] . '</a>';
								for ($k = 0; $k < $rowsize; $k++) {
									if (($data[$j]['cat_id'] == $cat_id) || ($parent_id == $data[$k]['parent_id'])) {
										if ($data[$k]['parent_id'] == $data[$j]['cat_id']) {
											echo '<p><a href="' . Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($data[$k]['cat_name']) . '" title="' . $data[$k]['cat_name'] . '">' . $data[$k]['cat_name'] . '</a></p>';
										}
									}
								}
								echo '</li>';
							}
						}
						echo '</ul>';
					}
					echo '</li>';
				}
			}
			echo '</ul>';
		} else {
			for ($i = 0; $i < $rowsize; $i++) {
				if ($data[$i]['parent_id'] == 0) {
					echo '<url>
						<loc>http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($data[$i]['cat_name']) . '</loc>
						<changefreq>daily</changefreq>
						<priority>0.9</priority>
					</url>';
					$this->listPostsByCat(NoneUnicode::convert($data[$i]['cat_name']));
					$this->loopSitemap($i);
				}
			}
		}
	}

	private function loopSitemap($i) {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_data[$j]['parent_id'] == $this->_data[$i]['cat_id']) {
				echo '<url>
						<loc>http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($this->_data[$j]['cat_name']) . '</loc>
						<changefreq>daily</changefreq>
						<priority>0.9</priority>
					</url>';
				$this->listPostsByCat(NoneUnicode::convert($this->_data[$j]['cat_name']));
				$this->loopSitemap($j);
			}
		}
	}

	private function listPostsByCat($link) {
		$models_class = new Posts;
		$models = $models_class->listRecordByCat($link);
		if ($models['models']) {
			foreach ($models['models'] as $model) {
				echo '<url>
					<loc>http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/posts/' . $link . '/' . $model['post_link'] . '.html</loc>
					<changefreq>daily</changefreq>
					<priority>0.8</priority>
				</url>';
			}
		}
	}

	public function run() {
		$this->publicAssets();
	}

}
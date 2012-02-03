<?php

class News_Bootstrap extends Zend_Application_Module_Bootstrap {

    protected function loadRouter() {
       // var_dump($this);
        $url = '(tin-tuc|news)';
        $module = strtolower($this->_moduleName);   
        $router = Zend_Controller_Front::getInstance()->getRouter();

//for default
        $route = new Zend_Controller_Router_Route_Regex(
                        $url,
                        array(
                            'module' => $module,
                            'controller' => 'index',
                            'action' => 'index'
                        )
        );
        $router->addRoute('item', $route);
        
//for lang        
        $route = new Zend_Controller_Router_Route_Regex(
                        '([a-z]+)/' . $url,
                        array(
                            'module' => $module,
                            'controller' => 'index',
                            'action' => 'index'
                        ),
                        array(
                            1 => 'language'
                        )
        );
        $router->addRoute('item-lang', $route);
//for view
        $route = new Zend_Controller_Router_Route_Regex(
                        $url.'/([-a-z0-9]+)\.html',
                        array(
                            'module' => $module,
                            'controller' => 'index',
                            'action' => 'view'
                        ),
                        array(
                            2 => 'id'
                        )
        );
        $router->addRoute('item-view', $route);
        
        
        
        
        
        
        
        
        
    }

}

/*

//en/news/index/view/id/12/title/name
//cam-nang-khoi-su/name.html
routes.news-view-en.type                    = Zend_Controller_Router_Route_Regex
routes.news-view-en.route                   = "([a-z]+)/(tin-tuc|news)/([-a-z0-9]+)\.html"
routes.news-view-en.defaults.module         = "news"
routes.news-view-en.defaults.controller     = "index"
routes.news-view-en.defaults.action         = "view"
routes.news-view-en.map.3                   = "id"
routes.news-view-en.map.1                   = "language"


//news/index/cat/id/15/title/name
//tin-tuc/name
routes.news-cat.type			= Zend_Controller_Router_Route_Regex
routes.news-cat.route			= "(tin-tuc|news)/([-a-z0-9]+)"
routes.news-cat.defaults.module 	= "news"
routes.news-cat.defaults.controller 	= "index"
routes.news-cat.defaults.action 	= "cat"
routes.news-cat.map.2  			= "id"


///en/news/index/cat/id/15/title/name
//en/tin-tuc/name
routes.news-cat-en.type			= Zend_Controller_Router_Route_Regex
routes.news-cat-en.route		= "([a-z]+)/(tin-tuc|news)/([-a-z0-9]+)"
routes.news-cat-en.defaults.module 	= "news"
routes.news-cat-en.defaults.controller 	= "index"
routes.news-cat-en.defaults.action 	= "cat"
routes.news-cat-en.map.3  		= "id"
routes.news-cat-en.map.1               = "language"
 */
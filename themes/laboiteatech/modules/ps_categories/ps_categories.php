<?php
/**
 * Categories Display Module
 *
 * This module displays the main product categories in a card grid format
 * with background styling on the homepage.
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class Ps_Categories extends Module
{
    public function __construct()
    {
        $this->name = 'ps_categories';
        $this->tab = 'front_office_features';
        $this->version = '1.0.0';
        $this->author = 'PrestaShop';
        $this->need_instance = 0;
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Categories Display');
        $this->description = $this->l('Displays main product categories in a card grid format');
    }

    public function install()
    {
        return parent::install() &&
            $this->registerHook('displayHome');
    }

    public function uninstall()
    {
        return parent::uninstall();
    }

    public function hookDisplayHome($params)
    {
        $categories = require __DIR__ . '/categories-data.php';

        $this->smarty->assign([
            'categories' => $categories,
        ]);

        return $this->display(__FILE__, 'ps_categories.tpl');
    }
}

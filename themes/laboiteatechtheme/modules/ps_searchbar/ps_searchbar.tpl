{**
 * 2007-2020 PrestaShop SA and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

<div id="search_widget" class="search-widgets" data-search-controller-url="{$search_controller_url}">
    <form method="get" action="{$search_controller_url}" class="search-form">
        <input type="hidden" name="controller" value="search">

      

        <!-- Champ texte de recherche -->
        <div class="input-container">
            <input 
                type="text"
                name="s"
                value="{$search_string}"
                class="form-control"
                placeholder="{l s='Rechercher dans notre catalogue' d='Shop.Theme.Catalog'}"
                aria-label="{l s='Rechercher' d='Shop.Theme.Catalog'}"
            >
            <i class="material-icons clear-icon" aria-hidden="true" style="display:none;">clear</i>
        </div>

        <!-- Bouton submit avec icône uniquement -->
        <button type="submit" class="btn btn-primary">
            <i class="material-icons" aria-hidden="true" style="align-self: center;">search</i>
        </button>
    </form>
</div>




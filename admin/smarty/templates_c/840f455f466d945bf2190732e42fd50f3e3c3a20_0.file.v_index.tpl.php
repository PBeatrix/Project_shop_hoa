<?php
/* Smarty version 3.1.30, created on 2022-04-28 18:02:51
  from "C:\xampp\htdocs\beatrixshop\admin\views\v_index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_626abaabcb5f92_83163598',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '840f455f466d945bf2190732e42fd50f3e3c3a20' => 
    array (
      0 => 'C:\\xampp\\htdocs\\beatrixshop\\admin\\views\\v_index.tpl',
      1 => 1517738931,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/index/v_don_hang.tpl' => 1,
    'file:views/index/v_san_pham.tpl' => 1,
    'file:views/index/v_ds_hoa_het_hang.tpl' => 1,
  ),
),false)) {
function content_626abaabcb5f92_83163598 (Smarty_Internal_Template $_smarty_tpl) {
?>

  <?php if ($_COOKIE['permission'] == 1 || $_COOKIE['permission'] == 0) {?> 
  <?php $_smarty_tpl->_subTemplateRender("file:views/index/v_don_hang.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  <div class="container auto_refresh">
    <div class="card mb-3" id="chua_duyet"></div>
  <?php } else { ?>
   <?php $_smarty_tpl->_subTemplateRender("file:views/index/v_san_pham.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <div class="card mb-3" id="het_hang">
      <?php $_smarty_tpl->_subTemplateRender("file:views/index/v_ds_hoa_het_hang.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    </div>
  <?php }?>
</div>
	<?php echo '<script'; ?>
 src="public/js/ajax/ajax_update_hoa_don.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/ajax/ajax_delete_hoa_don.js"><?php echo '</script'; ?>
>
<?php }
}

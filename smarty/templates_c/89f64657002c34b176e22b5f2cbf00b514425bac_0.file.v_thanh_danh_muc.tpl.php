<?php
/* Smarty version 3.1.30, created on 2022-04-28 18:09:18
  from "C:\xampp\htdocs\beatrixshop\views\chi_tiet_hoa\v_thanh_danh_muc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_626abc2e54fe37_42526171',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '89f64657002c34b176e22b5f2cbf00b514425bac' => 
    array (
      0 => 'C:\\xampp\\htdocs\\beatrixshop\\views\\chi_tiet_hoa\\v_thanh_danh_muc.tpl',
      1 => 1517738931,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_626abc2e54fe37_42526171 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="container">
    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <li class="home">
                    <a href="." title="Trở về trang chủ">Trang chủ</a>
                    </li>
                <li class="category4">
                    <a href="" title=""><?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenLoai;?>
</a>
                    </li>
                <li class="category22">
                    <strong><?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa;?>
</strong>
                </li>
                <li>
                </li>
            </ul>
        </div>
    </div>
</div>
<?php }
}

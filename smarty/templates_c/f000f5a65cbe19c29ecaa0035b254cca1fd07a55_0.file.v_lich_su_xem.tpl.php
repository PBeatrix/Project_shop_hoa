<?php
/* Smarty version 3.1.30, created on 2022-04-28 18:09:18
  from "C:\xampp\htdocs\beatrixshop\views\chi_tiet_hoa\v_lich_su_xem.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_626abc2e6c3516_75179176',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f000f5a65cbe19c29ecaa0035b254cca1fd07a55' => 
    array (
      0 => 'C:\\xampp\\htdocs\\beatrixshop\\views\\chi_tiet_hoa\\v_lich_su_xem.tpl',
      1 => 1517738931,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_626abc2e6c3516_75179176 (Smarty_Internal_Template $_smarty_tpl) {
if (count($_smarty_tpl->tpl_vars['ds_lich_su']->value) > 0) {?>
    <div class="container">
    <ul class="magictabs">
        <li class="item active loaded single">
            <span class="title cung_loai">Sản phẩm đã xem</span>
        </li>
        <?php if (isset($_SESSION['makh'])) {?>
            <div>
                <a class="xem_tat_ca" href="san-pham-da-xem">Xem thêm</a>
            </div>
        <?php }?>
    </ul>
    <div class="category-products">
    <ul class="products-grid row">
      <?php $_smarty_tpl->_assignInScope('i', 0);
?>
      <?php $_smarty_tpl->_assignInScope('j', 0);
?>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ds_lich_su']->value, 'hoa');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['hoa']->value) {
?>
        <li class="item" data-aos="flip-left" data-aos-duration="300"  data-aos-delay="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
">
            <?php $_smarty_tpl->_assignInScope('j', $_smarty_tpl->tpl_vars['j']->value+1);
?>
            <?php $_smarty_tpl->_assignInScope('i', $_smarty_tpl->tpl_vars['j']->value*300);
?>
            <div class="category-products-grid">
                <div class="image-container">
                    <div class="product-hover cp_img">
                        <a href="san-pham/<?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa_URL;?>
-<?php echo $_smarty_tpl->tpl_vars['hoa']->value->MaHoa;?>
.html" title="<?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa;?>
" class="product-image">
                            <img class="img-responsive hinh_hoa" src="public/images/hoa/<?php echo $_smarty_tpl->tpl_vars['hoa']->value->Hinh;?>
"  alt="<?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa;?>
">
                        </a>
                    </div>
                    <h2 class="product-name">
                    <a href="san-pham/<?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa_URL;?>
-<?php echo $_smarty_tpl->tpl_vars['hoa']->value->MaHoa;?>
.html" title="<?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa;?>
"><?php echo $_smarty_tpl->tpl_vars['hoa']->value->TenHoa;?>
</a>
                    </h2>
                    <div class="actions-no hover-box">
                        <div class="actions">
                            <div class="price-box">
                                <a class="minimal-price-link">
                                    <span class="mua_online">Mua online:</span>
                                    <span class="price" id="product-minimal-price-2678"><?php ob_start();
echo $_smarty_tpl->tpl_vars['hoa']->value->GiaKhuyenMai;
$_prefixVariable3=ob_get_clean();
echo number_format($_prefixVariable3);?>
 ₫</span>
                                </a>
                            </div>
                        </div>
                        <?php if ($_smarty_tpl->tpl_vars['hoa']->value->SoLuongSP > 0) {?>
                            <div class="notify-dat-hang">
                                <button onclick="addToCart(<?php echo $_smarty_tpl->tpl_vars['hoa']->value->MaHoa;?>
,1)">Thêm vào giỏ hàng</button>
                            </div>
                        <?php } else { ?>
                            <div class="notify">
                                <button>Đã hết hàng</button>
                            </div>
                        <?php }?>
                    </div>
                </div>
            </div>
        </li>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    </ul>
  </div>
</div>
<?php }?>
   <?php }
}

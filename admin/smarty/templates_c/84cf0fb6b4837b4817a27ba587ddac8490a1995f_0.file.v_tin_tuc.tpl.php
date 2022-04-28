<?php
/* Smarty version 3.1.30, created on 2022-04-28 18:06:02
  from "C:\xampp\htdocs\beatrixshop\admin\views\v_tin_tuc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_626abb6a1b0582_98961621',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '84cf0fb6b4837b4817a27ba587ddac8490a1995f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\beatrixshop\\admin\\views\\v_tin_tuc.tpl',
      1 => 1517738931,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/tin_tuc/v_danh_sach_tin_tuc.tpl' => 1,
    'file:views/tin_tuc/v_modal_them_tin_tuc.tpl' => 1,
  ),
),false)) {
function content_626abb6a1b0582_98961621 (Smarty_Internal_Template $_smarty_tpl) {
?>

      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
            <div class="col col-6">
              <i class="fa fa-table"></i> Danh sách tin tức
            </div>
            <div class="col col-6">
              <button type="button" class="btn btn-success float-right" data-toggle="modal" data-target="#add" >Thêm tin tức</button>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
          <?php $_smarty_tpl->_subTemplateRender("file:views/tin_tuc/v_danh_sach_tin_tuc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        </div>
          <?php $_smarty_tpl->_subTemplateRender("file:views/tin_tuc/v_modal_them_tin_tuc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

            <?php echo '<script'; ?>
 src="public/js/ajax/ajax_delete_tin_tuc.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="public/js/input_file.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="public/js/script_hien_thi_anh_add.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="public/js/script_hien_thi_anh.js"><?php echo '</script'; ?>
>
            <?php if (isset($_SESSION['thongBao'])) {?>
              <?php echo '<script'; ?>
>swal("<?php echo $_SESSION['thongBao'];?>
");<?php echo '</script'; ?>
>
            <?php }?>
            <?php if (isset($_SESSION['thongBaoThanhCong'])) {?>
              <?php echo '<script'; ?>
>
                  swal({
                    title: "Thành công!",
                    text: "<?php echo $_SESSION['thongBaoThanhCong'];?>
!",
                    icon: "success"
                    }).then(function() {
                        $.ajax({
                          success: function() {
                              window.location = "tin_tuc.php";
                          }
                        });
                    });
              <?php echo '</script'; ?>
>
            <?php }
}
}

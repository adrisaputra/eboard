<!-- Content Wrapper. Contains page content -->
<style>
    .error {
    color: red;
	font-weight: bold;
}
</style>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Video 
      </h1>
      <ol class="breadcrumb">
		<li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url();?>video">Video</a></li>
        <li class="active">Ubah Video</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
 			<!-- left column -->
 			<div class="col-md-12">
 				<!-- general form elements -->
 				<div class="box">
 					<div class="box-header with-border">
 						<h3 class="box-title">UBAH VIDEO</h3>
 					</div>
 					<!-- /.box-header -->
 					<!-- form start -->

 					<?php echo form_open_multipart('video/update'); ?>
 					<div class="table-responsive box-body">
 						<table class="table table-bordered table-striped">
							<input type="hidden" class="form-control" name="video_id" value="<?php echo $entry['video_id']?>">
							<tr>
 								<th class="col-md-3">
								<?php 
								if(form_error('video_name')){
									echo form_error('video_name');
								} else { 
									echo "Nama Video";
								} 
								?>
								<span class="required">*</span></th>
 								<td><input type="text" class="form-control" name="video_name" value="<?php if(set_value('video_name')){
										echo set_value('video_name');
									}else {
										echo $entry['video_name'];
									} ; ?>"></td>
 							</tr>
 							<tr>
 								<th class="col-md-3"><?php 
								if(form_error('userfile')){
									echo form_error('userfile');
								} else { 
									echo "Video";
								} 
								?>
								<span class="required">*</span></th>
 								<td>
								<input type="file" name="userfile" size="20" /><br>
								<video width="320" height="240" controls>
                                      <source src="<?php echo base_url()."upload/video/".$entry['video_file'] ?>" type="video/mp4">
                                          
                                        Your browser does not support the video tag.
                                </video>
								</td>
 							</tr>
 						</table>
 					</div>
 					<!-- /.box-body -->
 					<div class="box-footer">
 						<div class="col-md-6">					
 							<button type="submit" class="btn btn-success btn-sm"><i class="fa fa-save"></i> Simpan</button>
 							<button type="reset" class="btn btn-warning btn-sm" ><i class="fa fa-repeat"></i> Reset</button>
 							<a href="<?php echo base_url();?>video" class="btn btn-danger btn-sm"><i class="fa fa-close"></i> Kembali</a>
 						</div>
 					</div>
 					<?php echo form_close(); ?>
 				</div>
 				<!-- /.box -->

 			</div>
 			<!--/.col (left) -->
 		</div>
 		<!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script type="text/javascript">
	$(function() {
		$('#datepicker').datepicker({
			format:'dd-mm-yyyy',
			autoclose: true
		});
	});
	$(function() {
		$('#datepicker2').datepicker({
			format:'dd-mm-yyyy',
			autoclose: true
		});
	});
	$(function() {
     $('.clockpicker').clockpicker({
		 donetext: 'Done'
	 });
   });
   
   $(function() {
     $('.clockpicker2').clockpicker({
		 donetext: 'Done'
	 });
   });
</script>
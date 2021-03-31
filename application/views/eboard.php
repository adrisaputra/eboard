<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>E-Board</title>
  	<link rel="icon" type="image/png" sizes="96x96" href="<?php echo base_url();?>upload/logo.png">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/fontawesome/css/all.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/dist/css/AdminLTE.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/dist/css/skins/_all-skins.css">

</head>
<style>
table.lamp {
    width:100%;
}
table.lamp th, td {
    
}
table.lamp th {
    width:40px;
}

table.lampu {
    width:100%;
}
table.lampu th, td {
	padding: 1px;
}
table.lampu th {
    
}


table.pu  {
    width: 100%;
    padding-top: -3px;
}

table.pu td {
    padding : 0px;
}

video {
    
    border:3px solid #337ab7;
    border-radius:48px;
    -moz-border-radius:48px; /* Firefox 3.6 and earlier */
    
}
  ol,ul,li {list-style-type: none;}
</style>
<style>
body {
	background-color:black;
		
}

p.ping {
	 margin-top: -10px;
    margin-bottom: 4px;
}

#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:550px;
    width:571px;
    float:left;
    padding:5px;	
    border: 2px solid #a1a1a1;
}
#section {
	height:550px;
    float:left;
    padding:5px;	 	 
	border: 2px solid #a1a1a1;
	background-color:#eee;
	
}
#footer {
    clear:both;
    text-align:center;
	font-size: 28px;
	background: #f4e825;
        font-weight: bold;
        font-family: "arial";
	color: #206efb !important;
	height:60px;
	padding-top:5px;
	padding-bottom:5px;
}
.bg {
	background: #f4e825;
	padding-left: 10px;
	padding-right: 10px;
}
@font-face{
        font-family: "digital-7";
        src : url('digital-7.ttf');
    }
	.head1 {
            color: #206efb;
            text-shadow: none;
            font-size: 40pt;
            font-family: "digital-7";
			
    }
    .head2 {
            color: #206efb;
            text-shadow: none;
            font-size: 10pt;
            font-family: "arial";
			alignment-adjust: central;
			text-align: center;
            margin-top:0px;
			margin-bottom:0px;
    }
    .head3 {
            font-family: "arial";
            font-size: 14pt;
    }
	.clock {
            color: #fff;
            text-shadow: none;
            font-size: 40pt;
            font-family: "digital-7";
    }

</style>
<style>
.table-fixed thead {
  width: 97%;
}
.table-fixed tbody {
  height: 390px;
  overflow-y: auto;
  width: 100%;
}
.table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
  display: block;
}
.table-fixed tbody td, .table-fixed thead > tr> th {
  float: left;
  border-bottom-width: 0;
}
</style>
 <script>
            function startTime() {
                var today=new Date();
                var h=today.getHours();
                var m=today.getMinutes();
                var s=today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('txt').innerHTML = h+":"+m+":"+s;
                var t = setTimeout(function(){startTime()},500);
            }

            function checkTime(i) {
                if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
                return i;
            }
        </script>
	<script>

        $(document).ready(function() {
            //place code inside jQuery ready event handler 
            //to ensure videoElement is available
            var i = 0;
            var sources = [
                <?php
                   foreach ($video as $v) {
                       echo "'http://localhost/eboard/upload/video/".$v->video_file."',";
                   }
                ?>              
				'http://localhost/eboard/upload/kapal1.mp4'];
            $('#videoElement').bind('ended', function() {
                //'this' is the DOM video element
                this.src = sources[i++ % sources.length];
                this.load();
                this.play();
            });
        });
        </script>
     <script src="<?php echo base_url(); ?>assets/fade/jquery00.js"></script>       
     <script src="<?php echo base_url(); ?>assets/fade/ticker00.js"></script>       
     <script type="text/javascript">
	$(document).ready(function(){
		$('#fade').list_ticker({
			speed:30000,
			effect:'fade',
                        containerheight: '550px',
                        containerheight: '571px'
		});
		$('#slide').list_ticker({
			speed:10000,
			effect:'slide'
		});		
	})
        </script>
		
	<script>

        $(document).ready(function() {
            //place code inside jQuery ready event handler 
            //to ensure videoElement is available
            var i = 0;
            var sources = [
                 <?php
                   foreach ($video as $v) {
                       echo "'http://localhost/eboard/upload/video/".$v->video_file."',";
                   }
                ?>                 
				// 'http://localhost/eboard/upload/video/video_1.mp4',       
				'http://localhost/eboard/upload/kapal1.mp4'];
            $('#videoElement').bind('ended', function() {
                //'this' is the DOM video element
                this.src = sources[i++ % sources.length];
                this.load();
                this.play();
            });
        });
        </script>
		
 <!-- Content Wrapper. Contains page content -->
  <div class="">
    <!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content" style="
    background-color: #e5eef4;
">
	 <br>
      <div class="row">
        <div class="col-lg-12 col-xs-12">
			<center><img src="<?php echo base_url();?>upload/logo.png"></center>
			<p style="font-size:30px;text-align:center">JADWAL KAPAL TANTO KENDARI</p>
         </div>
      </div><br>
	  
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-6 col-xs-12">
			<video id="videoElement" controls width="100%" height="100%" align="center" autoplay="1" style="background-color: white;">
			<source src="<?php echo base_url()."upload/kapal1.mp4" ?>">
        Your browser does not support the video tag.
        </video>
         </div>
        <div class="col-lg-6 col-xs-12">
			<div class="box box-primary">
				<div class="box-header with-border"><b style="font-size:20px;">Jadwal</b></div>
				<!-- /.box-header -->
				<div class="table-responsive box-body">
					<table class="table table-bordered table-striped table-hover" >
						<tr class="bg-blue">
						  <th style="width: 100px;font-size:18px;">Nama Kapal</th>
						  <th style="width: 100px;font-size:18px;">Tujuan</th>
						  <th style="width: 100px;font-size:18px;">Tiba</th>
						  <th style="width: 100px;font-size:18px;">Sandar</th>
						  <th style="width: 100px;font-size:18px;">Berangkat</th>
						</tr>
						<?php foreach($ship as $v) { ?>
						<tr>
						  <td style="font-size:18px;"><?php echo $v->ship_name;?></td>
						  <td style="font-size:18px;"><?php echo $v->destination;?></td>
						  <td style="font-size:18px;"><?php echo date("d-m-Y", strtotime($v->arrived_date));?><br><b style="color: #00a65a;">Pukul: </b><?php echo $v->arrived_time?></td>
						  <td style="font-size:18px;"><?php echo date("d-m-Y", strtotime($v->leaning_date));?><br><b style="color: #337ab7;">Pukul: </b><?php echo $v->leaning_time?></td>
						  <td style="font-size:18px;"><?php echo date("d-m-Y", strtotime($v->start_date));?><br><b style="color: #dd4b39;">Pukul: </b><?php echo $v->start_time?></td>
						</tr>
						<?php } ?>
					 </table>
				</div>
				<!-- /.box-body -->
				<div class="box-footer clearfix">
				</div>
            </div>
         </div>
      </div><br>
      <!-- /.row -->
	 
      <div class="row">
        <div class="col-lg-12 col-xs-12">
			<p class="alert alert-danger text-center" style="font-size:30px"><b><marquee scrolldelay="30">-- <?php echo $bulletin[0]['bulletin']?> --</marquee></b></p>
         </div>
      </div>
      <!-- /.row -->
	 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url();?>assets/dist/js/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url();?>assets/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<!-- script src="<!-- ?php echo base_url();?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<!-- script src="<!-- ?php echo base_url();?>assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url();?>assets/plugins/select2/select2.full.min.js"></script>
<!-- Morris.js charts -->
<!-- script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<!--script src="<?php echo base_url();?>assets/plugins/morris/morris.min.js"></script-->
<!-- Sparkline -->
<!-- script src="<?php echo base_url();?>assets/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<!-- script src="<!-- ?php echo base_url();?>assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<!-- ?php echo base_url();?>assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?php echo base_url();?>assets/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="<?php echo base_url();?>assets/dist/js/moment.js"></script>
<script src="<?php echo base_url();?>assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="<?php echo base_url();?>assets/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?php echo base_url();?>assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<!-- script src="<!-- ?php echo base_url();?>assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<!-- script src="<!-- ?php echo base_url();?>assets/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>assets/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- script src="<!-- ?php echo base_url();?>assets/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- script src="<!-- ?php echo base_url();?>assets/dist/js/demo.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- script src="<!-- ?php echo base_url();?>assets/dist/js/bootstrap-clockpicker.min.js"></script-->

</body>
</html>


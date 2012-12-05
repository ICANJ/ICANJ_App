<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Base · Bootstrap</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>ICANJ - Family Sign-up</title>
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
		<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
		<link href="bootstrap/css/docs.css" rel="stylesheet">
	</head>
	
  <body data-spy="scroll" data-target=".bs-docs-sidebar" data-twttr-rendered="true">
	<header class="jumbotron subhead" id="overview">
	  <div class="container">
		<h1>Scaffolding</h1>
		<p class="lead">Bootstrap is built on responsive 12-column grids, layouts, and components.</p>
	  </div>
	</header>



<div class="container">

    <!-- Use this for right side nagivation bar
    ================================================== -->
    <div class="row">
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav affix">
          <li class="active"><a href="#dashboard"><i class="icon-chevron-right"></i> Dashboard</a></li>
          <li class=""><a href="#addressBook"><i class="icon-chevron-right"></i> Address Book</a></li>
          <li class=""><a href="#profile"><i class="icon-chevron-right"></i> Profile</a></li>
          <li class=""><a href="#finance"><i class="icon-chevron-right"></i> Finance</a></li>
        </ul>
      </div>
      <div class="span9">



        <!-- Global Bootstrap settings
        ================================================== -->
        <section id="global">
          <div class="page-header">
            <h1>Dashboard</h1>
          </div>
        </section>

        <!-- Grid system
        ================================================== -->
        <section id="gridSystem">
          <div class="page-header">
            <h1>Default grid system</h1>
          </div>

          <h2>Live grid example</h2>
          <p>The default Bootstrap grid system utilizes <strong>12 columns</strong>, making for a 940px wide container without <a href="./scaffolding.html#responsive">responsive features</a> enabled. With the responsive CSS file added, the grid adapts to be 724px and 1170px wide depending on your viewport. Below 767px viewports, the columns become fluid and stack vertically.</p>
          <div class="bs-docs-grid">
            <div class="row show-grid">
              <div class="span1" data-original-title="">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
            </div>
            <div class="row show-grid">
              <div class="span2">2</div>
              <div class="span3">3</div>
              <div class="span4">4</div>
            </div>
            <div class="row show-grid">
              <div class="span4" data-original-title="">4</div>
              <div class="span5">5</div>
            </div>
            <div class="row show-grid">
              <div class="span9">9</div>
            </div>
          </div>

          <h2>Family Profile Page</h2>
          <p>Take code from here for the family profile page</p>
          <p>Move columns to the right using <code>.offset*</code> classes. Each class increases the left margin of a column by a whole column. For example, <code>.offset4</code> moves <code>.span4</code> over four columns.</p>
          <div class="bs-docs-grid">
            <div class="row show-grid">
              <div class="span4"></div>
              <div class="span3 offset2">Family Name and Address</div>
            </div><!-- /row -->
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"row"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span4"</span><span class="tag">&gt;</span><span class="pln">...</span><span class="tag">&lt;/div&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span3 offset2"</span><span class="tag">&gt;</span><span class="pln">...</span><span class="tag">&lt;/div&gt;</span></li><li class="L3"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

        </section>

  </div>





	<footer class="footer">
	  <div class="container">
		<p class="pull-right"><a href="#">Back to top</a></p>
		<ul class="footer-links">
		  <li><a href="http://blog.getbootstrap.com">Blog</a></li>
		  <li class="muted">·</li>
		  <li><a href="https://github.com/twitter/bootstrap/issues?state=open">Issues</a></li>
		  <li class="muted">·</li>
		  <li><a href="https://github.com/twitter/bootstrap/wiki">Roadmap and changelog</a></li>
		</ul>
	  </div>
	</footer>


	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

</body>


</html>
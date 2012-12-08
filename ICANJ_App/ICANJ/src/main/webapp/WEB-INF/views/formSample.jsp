<!DOCTYPE html>
<html lang="en">

	<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>ICANJ - Family Sign-up</title>
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="bootstrap/css/docs.css" rel="stylesheet">
	</head>

  <body data-spy="scroll" data-target=".bs-docs-sidebar" data-twttr-rendered="true">


<!-- Subhead
================================================== -->
<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h1>Base CSS</h1>
    <p class="lead">Fundamental HTML elements styled and enhanced with extensible classes.</p>
  </div>
</header>


  <div class="container">

    <!-- Docs nav
    ================================================== -->
    <div class="row">
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav affix">
          <li class="active"><a href="http://twitter.github.com/bootstrap/base-css.html?#typography"><i class="icon-chevron-right"></i> Typography</a></li>
          <li class=""><a href="http://twitter.github.com/bootstrap/base-css.html?#code"><i class="icon-chevron-right"></i> Code</a></li>
          <li class=""><a href="http://twitter.github.com/bootstrap/base-css.html?#tables"><i class="icon-chevron-right"></i> Tables</a></li>
          <li class=""><a href="./formSample_files/formSample.html"><i class="icon-chevron-right"></i> Forms</a></li>
          <li class=""><a href="http://twitter.github.com/bootstrap/base-css.html?#buttons"><i class="icon-chevron-right"></i> Buttons</a></li>
          <li class=""><a href="http://twitter.github.com/bootstrap/base-css.html?#images"><i class="icon-chevron-right"></i> Images</a></li>
          <li class=""><a href="http://twitter.github.com/bootstrap/base-css.html?#icons"><i class="icon-chevron-right"></i> Icons by Glyphicons</a></li>
        </ul>
      </div>
      <div class="span9">


        <!-- Tables
        ================================================== -->
        <section id="tables">
          <div class="page-header">
            <h1>Tables</h1>
          </div>

          <h2>Default styles</h2>
          <p>For basic styling—light padding and only horizontal dividers—add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>
          <div class="bs-docs-example">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;table</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"table"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  …</span></li><li class="L2"><span class="tag">&lt;/table&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Optional classes</h2>
          <p>Add any of the following classes to the <code>.table</code> base class.</p>

          <h3><code>.table-striped</code></h3>
          <p>Adds zebra-striping to any table row within the <code>&lt;tbody&gt;</code> via the <code>:nth-child</code> CSS selector (not available in IE7-IE8).</p>
          <div class="bs-docs-example">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums" style="margin-bottom: 18px;"><ol class="linenums"><li class="L0"><span class="tag">&lt;table</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"table table-striped"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  …</span></li><li class="L2"><span class="tag">&lt;/table&gt;</span></li></ol></pre>

          <h3><code>.table-bordered</code></h3>
          <p>Add borders and rounded corners to the table.</p>
          <div class="bs-docs-example">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td rowspan="2">1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@TwBootstrap</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td colspan="2">Larry the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;table</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"table table-bordered"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  …</span></li><li class="L2"><span class="tag">&lt;/table&gt;</span></li></ol></pre>

          <h3><code>.table-hover</code></h3>
          <p>Enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.</p>
          <div class="bs-docs-example">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td colspan="2">Larry the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums" style="margin-bottom: 18px;"><ol class="linenums"><li class="L0"><span class="tag">&lt;table</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"table table-hover"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  …</span></li><li class="L2"><span class="tag">&lt;/table&gt;</span></li></ol></pre>

          <h3><code>.table-condensed</code></h3>
          <p>Makes tables more compact by cutting cell padding in half.</p>
          <div class="bs-docs-example">
            <table class="table table-condensed">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td colspan="2">Larry the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums" style="margin-bottom: 18px;"><ol class="linenums"><li class="L0"><span class="tag">&lt;table</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"table table-condensed"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  …</span></li><li class="L2"><span class="tag">&lt;/table&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Optional row classes</h2>
          <p>Use contextual classes to color table rows.</p>
          <table class="table table-bordered table-striped">
            <colgroup>
              <col class="span1">
              <col class="span7">
            </colgroup>
            <thead>
              <tr>
                <th>Class</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <code>.success</code>
                </td>
                <td>Indicates a successful or positive action.</td>
              </tr>
              <tr>
                <td>
                  <code>.error</code>
                </td>
                <td>Indicates a dangerous or potentially negative action.</td>
              </tr>
              <tr>
                <td>
                  <code>.warning</code>
                </td>
                <td>Indicates a warning that might need attention.</td>
              </tr>
              <tr>
                <td>
                  <code>.info</code>
                </td>
                <td>Used as an alternative to the default styles.</td>
              </tr>
            </tbody>
          </table>
          <div class="bs-docs-example">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Product</th>
                  <th>Payment Taken</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr class="success">
                  <td>1</td>
                  <td>TB - Monthly</td>
                  <td>01/04/2012</td>
                  <td>Approved</td>
                </tr>
                <tr class="error">
                  <td>2</td>
                  <td>TB - Monthly</td>
                  <td>02/04/2012</td>
                  <td>Declined</td>
                </tr>
                <tr class="warning">
                  <td>3</td>
                  <td>TB - Monthly</td>
                  <td>03/04/2012</td>
                  <td>Pending</td>
                </tr>
                <tr class="info">
                  <td>4</td>
                  <td>TB - Monthly</td>
                  <td>04/04/2012</td>
                  <td>Call in to confirm</td>
                </tr>
              </tbody>
            </table>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pun">...</span></li><li class="L1"><span class="pln">  </span><span class="pun">&lt;</span><span class="pln">tr </span><span class="kwd">class</span><span class="pun">=</span><span class="str">"success"</span><span class="pun">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="str">&lt;td&gt;</span><span class="lit">1</span><span class="pun">&lt;</span><span class="str">/td&gt;</span></li><li class="L3"><span class="str">    &lt;td&gt;TB - Monthly&lt;/</span><span class="pln">td</span><span class="pun">&gt;</span></li><li class="L4"><span class="pln">    </span><span class="str">&lt;td&gt;</span><span class="lit">01</span><span class="pun">/</span><span class="lit">04</span><span class="pun">/</span><span class="lit">2012</span><span class="pun">&lt;</span><span class="str">/td&gt;</span></li><li class="L5"><span class="str">    &lt;td&gt;Approved&lt;/</span><span class="pln">td</span><span class="pun">&gt;</span></li><li class="L6"><span class="pln">  </span><span class="pun">&lt;/</span><span class="pln">tr</span><span class="pun">&gt;</span></li><li class="L7"><span class="pun">...</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Supported table markup</h2>
          <p>List of supported table HTML elements and how they should be used.</p>
          <table class="table table-bordered table-striped">
            <colgroup>
              <col class="span1">
              <col class="span7">
            </colgroup>
            <thead>
              <tr>
                <th>Tag</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <code>&lt;table&gt;</code>
                </td>
                <td>
                  Wrapping element for displaying data in a tabular format
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;thead&gt;</code>
                </td>
                <td>
                  Container element for table header rows (<code>&lt;tr&gt;</code>) to label table columns
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;tbody&gt;</code>
                </td>
                <td>
                  Container element for table rows (<code>&lt;tr&gt;</code>) in the body of the table
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;tr&gt;</code>
                </td>
                <td>
                  Container element for a set of table cells (<code>&lt;td&gt;</code> or <code>&lt;th&gt;</code>) that appears on a single row
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;td&gt;</code>
                </td>
                <td>
                  Default table cell
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;th&gt;</code>
                </td>
                <td>
                  Special table cell for column (or row, depending on scope and placement) labels<br>
                  Must be used within a <code>&lt;thead&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <code>&lt;caption&gt;</code>
                </td>
                <td>
                  Description or summary of what the table holds, especially useful for screen readers
                </td>
              </tr>
            </tbody>
          </table>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;table&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;caption&gt;</span><span class="pln">...</span><span class="tag">&lt;/caption&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;thead&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;tr&gt;</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;th&gt;</span><span class="pln">...</span><span class="tag">&lt;/th&gt;</span></li><li class="L5"><span class="pln">      </span><span class="tag">&lt;th&gt;</span><span class="pln">...</span><span class="tag">&lt;/th&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;/tr&gt;</span></li><li class="L7"><span class="pln">  </span><span class="tag">&lt;/thead&gt;</span></li><li class="L8"><span class="pln">  </span><span class="tag">&lt;tbody&gt;</span></li><li class="L9"><span class="pln">    </span><span class="tag">&lt;tr&gt;</span></li><li class="L0"><span class="pln">      </span><span class="tag">&lt;td&gt;</span><span class="pln">...</span><span class="tag">&lt;/td&gt;</span></li><li class="L1"><span class="pln">      </span><span class="tag">&lt;td&gt;</span><span class="pln">...</span><span class="tag">&lt;/td&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;/tr&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;/tbody&gt;</span></li><li class="L4"><span class="tag">&lt;/table&gt;</span></li></ol></pre>

        </section>



        <!-- Forms
        ================================================== -->
        <section id="forms">
          <div class="page-header">
            <h1>Forms</h1>
          </div>

          <h2>Default styles</h2>
          <p>Individual form controls receive styling, but without any required base class on the <code>&lt;form&gt;</code> or large changes in markup. Results in stacked, left-aligned labels on top of form controls.</p>
          <form class="bs-docs-example">
            <fieldset>
              <legend>Legend</legend>
              <label>Label name</label>
              <input type="text" placeholder="Type something…">
              <span class="help-block">Example block-level help text here.</span>
              <label class="checkbox">
                <input type="checkbox"> Check me out
              </label>
              <button type="submit" class="btn">Submit</button>
            </fieldset>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;form&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;fieldset&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;legend&gt;</span><span class="pln">Legend</span><span class="tag">&lt;/legend&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;label&gt;</span><span class="pln">Label name</span><span class="tag">&lt;/label&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Type something…"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-block"</span><span class="tag">&gt;</span><span class="pln">Example block-level help text here.</span><span class="tag">&lt;/span&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">      </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span><span class="pln"> Check me out</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;/label&gt;</span></li><li class="L9"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Submit</span><span class="tag">&lt;/button&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;/fieldset&gt;</span></li><li class="L1"><span class="tag">&lt;/form&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Optional layouts</h2>
          <p>Included with Bootstrap are three optional form layouts for common use cases.</p>

          <h3>Search form</h3>
          <p>Add <code>.form-search</code> to the form and <code>.search-query</code> to the <code>&lt;input&gt;</code> for an extra-rounded text input.</p>
          <form class="bs-docs-example form-search">
            <input type="text" class="input-medium search-query">
            <button type="submit" class="btn">Search</button>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;form</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"form-search"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-medium search-query"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Search</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="tag">&lt;/form&gt;</span></li></ol></pre>

          <h3>Inline form</h3>
          <p>Add <code>.form-inline</code> for left-aligned labels and inline-block controls for a compact layout.</p>
          <form class="bs-docs-example form-inline">
            <input type="text" class="input-small" placeholder="Email">
            <input type="password" class="input-small" placeholder="Password">
            <label class="checkbox">
              <input type="checkbox"> Remember me
            </label>
            <button type="submit" class="btn">Sign in</button>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;form</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"form-inline"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-small"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Email"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"password"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-small"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Password"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span><span class="pln"> Remember me</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;/label&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Sign in</span><span class="tag">&lt;/button&gt;</span></li><li class="L7"><span class="tag">&lt;/form&gt;</span></li></ol></pre>

          <h3>Horizontal form</h3>
          <p>Right align labels and float them to the left to make them appear on the same line as controls. Requires the most markup changes from a default form:</p>
          <ul>
            <li>Add <code>.form-horizontal</code> to the form</li>
            <li>Wrap labels and controls in <code>.control-group</code></li>
            <li>Add <code>.control-label</code> to the label</li>
            <li>Wrap any associated controls in <code>.controls</code> for proper alignment</li>
          </ul>
          <form class="bs-docs-example form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputEmail">Email</label>
              <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <input type="password" id="inputPassword" placeholder="Password">
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <label class="checkbox">
                  <input type="checkbox"> Remember me
                </label>
                <button type="submit" class="btn">Sign in</button>
              </div>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;form</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"form-horizontal"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputEmail"</span><span class="tag">&gt;</span><span class="pln">Email</span><span class="tag">&lt;/label&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputEmail"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Email"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;/div&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L7"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group"</span><span class="tag">&gt;</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputPassword"</span><span class="tag">&gt;</span><span class="pln">Password</span><span class="tag">&lt;/label&gt;</span></li><li class="L9"><span class="pln">    </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L0"><span class="pln">      </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"password"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputPassword"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Password"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">    </span><span class="tag">&lt;/div&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">      </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span></li><li class="L6"><span class="pln">        </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span><span class="pln"> Remember me</span></li><li class="L7"><span class="pln">      </span><span class="tag">&lt;/label&gt;</span></li><li class="L8"><span class="pln">      </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Sign in</span><span class="tag">&lt;/button&gt;</span></li><li class="L9"><span class="pln">    </span><span class="tag">&lt;/div&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L1"><span class="tag">&lt;/form&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Supported form controls</h2>
          <p>Examples of standard form controls supported in an example form layout.</p>

          <h3>Inputs</h3>
          <p>Most common form control, text-based input fields. Includes support for all HTML5 types: text, password, datetime, datetime-local, date, month, time, week, number, email, url, search, tel, and color.</p>
          <p>Requires the use of a specified <code>type</code> at all times.</p>
          <form class="bs-docs-example form-inline">
            <input type="text" placeholder="Text input">
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Text input"</span><span class="tag">&gt;</span></li></ol></pre>

          <h3>Textarea</h3>
          <p>Form control which supports multiple lines of text. Change <code>rows</code> attribute as necessary.</p>
          <form class="bs-docs-example form-inline">
            <textarea rows="3"></textarea>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;textarea</span><span class="pln"> </span><span class="atn">rows</span><span class="pun">=</span><span class="atv">"3"</span><span class="tag">&gt;&lt;/textarea&gt;</span></li></ol></pre>

          <h3>Checkboxes and radios</h3>
          <p>Checkboxes are for selecting one or several options in a list while radios are for selecting one option from many.</p>
          <h4>Default (stacked)</h4>
          <form class="bs-docs-example">
            <label class="checkbox">
              <input type="checkbox" value="">
              Option one is this and that—be sure to include why it's great
            </label>
            <br>
            <label class="radio">
              <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
              Option one is this and that—be sure to include why it's great
            </label>
            <label class="radio">
              <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
              Option two can be something else and selecting it will deselect option one
            </label>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">""</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  Option one is this and that—be sure to include why it's great</span></li><li class="L3"><span class="tag">&lt;/label&gt;</span></li><li class="L4"><span class="pln">&nbsp;</span></li><li class="L5"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"radio"</span><span class="tag">&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"radio"</span><span class="pln"> </span><span class="atn">name</span><span class="pun">=</span><span class="atv">"optionsRadios"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"optionsRadios1"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"option1"</span><span class="pln"> </span><span class="atn">checked</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">  Option one is this and that—be sure to include why it's great</span></li><li class="L8"><span class="tag">&lt;/label&gt;</span></li><li class="L9"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"radio"</span><span class="tag">&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"radio"</span><span class="pln"> </span><span class="atn">name</span><span class="pun">=</span><span class="atv">"optionsRadios"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"optionsRadios2"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"option2"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  Option two can be something else and selecting it will deselect option one</span></li><li class="L2"><span class="tag">&lt;/label&gt;</span></li></ol></pre>

          <h4>Inline checkboxes</h4>
          <p>Add the <code>.inline</code> class to a series of checkboxes or radios for controls appear on the same line.</p>
          <form class="bs-docs-example">
            <label class="checkbox inline">
              <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
            </label>
            <label class="checkbox inline">
              <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
            </label>
            <label class="checkbox inline">
              <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
            </label>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox inline"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inlineCheckbox1"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"option1"</span><span class="tag">&gt;</span><span class="pln"> 1</span></li><li class="L2"><span class="tag">&lt;/label&gt;</span></li><li class="L3"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox inline"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inlineCheckbox2"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"option2"</span><span class="tag">&gt;</span><span class="pln"> 2</span></li><li class="L5"><span class="tag">&lt;/label&gt;</span></li><li class="L6"><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"checkbox inline"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"checkbox"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inlineCheckbox3"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"option3"</span><span class="tag">&gt;</span><span class="pln"> 3</span></li><li class="L8"><span class="tag">&lt;/label&gt;</span></li></ol></pre>

          <h3>Selects</h3>
          <p>Use the default option or specify a <code>multiple="multiple"</code> to show multiple options at once.</p>
          <form class="bs-docs-example">
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
            <br>
            <select multiple="multiple">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;select&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">1</span><span class="tag">&lt;/option&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">2</span><span class="tag">&lt;/option&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">3</span><span class="tag">&lt;/option&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">4</span><span class="tag">&lt;/option&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">5</span><span class="tag">&lt;/option&gt;</span></li><li class="L6"><span class="tag">&lt;/select&gt;</span></li><li class="L7"><span class="pln">&nbsp;</span></li><li class="L8"><span class="tag">&lt;select</span><span class="pln"> </span><span class="atn">multiple</span><span class="pun">=</span><span class="atv">"multiple"</span><span class="tag">&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">1</span><span class="tag">&lt;/option&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">2</span><span class="tag">&lt;/option&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">3</span><span class="tag">&lt;/option&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">4</span><span class="tag">&lt;/option&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;option&gt;</span><span class="pln">5</span><span class="tag">&lt;/option&gt;</span></li><li class="L4"><span class="tag">&lt;/select&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Extending form controls</h2>
          <p>Adding on top of existing browser controls, Bootstrap includes other useful form components.</p>

          <h3>Prepended and appended inputs</h3>
          <p>Add text or buttons before or after any text-based input. Do note that <code>select</code> elements are not supported here.</p>

          <h4>Default options</h4>
          <p>Wrap an <code>.add-on</code> and an <code>input</code> with one of two classes to prepend or append text to an input.</p>
          <form class="bs-docs-example">
            <div class="input-prepend">
              <span class="add-on">@</span>
              <input class="span2" id="prependedInput" type="text" placeholder="Username">
            </div>
            <br>
            <div class="input-append">
              <input class="span2" id="appendedInput" type="text">
              <span class="add-on">.00</span>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"add-on"</span><span class="tag">&gt;</span><span class="pln">@</span><span class="tag">&lt;/span&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"prependedInput"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Username"</span><span class="tag">&gt;</span></li><li class="L3"><span class="tag">&lt;/div&gt;</span></li><li class="L4"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-append"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedInput"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"add-on"</span><span class="tag">&gt;</span><span class="pln">.00</span><span class="tag">&lt;/span&gt;</span></li><li class="L7"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h4>Combined</h4>
          <p>Use both classes and two instances of <code>.add-on</code> to prepend and append an input.</p>
          <form class="bs-docs-example form-inline">
            <div class="input-prepend input-append">
              <span class="add-on">$</span>
              <input class="span2" id="appendedPrependedInput" type="text">
              <span class="add-on">.00</span>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend input-append"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"add-on"</span><span class="tag">&gt;</span><span class="pln">$</span><span class="tag">&lt;/span&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedPrependedInput"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"add-on"</span><span class="tag">&gt;</span><span class="pln">.00</span><span class="tag">&lt;/span&gt;</span></li><li class="L4"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h4>Buttons instead of text</h4>
          <p>Instead of a <code>&lt;span&gt;</code> with text, use a <code>.btn</code> to attach a button (or two) to an input.</p>
          <form class="bs-docs-example">
            <div class="input-append">
              <input class="span2" id="appendedInputButton" type="text">
              <button class="btn" type="button">Go!</button>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-append"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedInputButton"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Go!</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="tag">&lt;/div&gt;</span></li></ol></pre>
          <form class="bs-docs-example">
            <div class="input-append">
              <input class="span2" id="appendedInputButtons" type="text">
              <button class="btn" type="button">Search</button>
              <button class="btn" type="button">Options</button>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-append"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedInputButtons"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Search</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Options</span><span class="tag">&lt;/button&gt;</span></li><li class="L4"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h4>Button dropdowns</h4>
          <p></p>
          <form class="bs-docs-example">
            <div class="input-append">
              <input class="span2" id="appendedDropdownButton" type="text">
              <div class="btn-group">
                <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Another action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Separated link</a></li>
                </ul>
              </div><!-- /btn-group -->
            </div><!-- /input-append -->
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-append"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedDropdownButton"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn dropdown-toggle"</span><span class="pln"> </span><span class="atn">data-toggle</span><span class="pun">=</span><span class="atv">"dropdown"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">      Action</span></li><li class="L5"><span class="pln">      </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"caret"</span><span class="tag">&gt;&lt;/span&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;/button&gt;</span></li><li class="L7"><span class="pln">    </span><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"dropdown-menu"</span><span class="tag">&gt;</span></li><li class="L8"><span class="pln">      ...</span></li><li class="L9"><span class="pln">    </span><span class="tag">&lt;/ul&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L1"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <form class="bs-docs-example">
            <div class="input-prepend">
              <div class="btn-group">
                <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Another action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Separated link</a></li>
                </ul>
              </div><!-- /btn-group -->
              <input class="span2" id="prependedDropdownButton" type="text">
            </div><!-- /input-prepend -->
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn dropdown-toggle"</span><span class="pln"> </span><span class="atn">data-toggle</span><span class="pun">=</span><span class="atv">"dropdown"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">      Action</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"caret"</span><span class="tag">&gt;&lt;/span&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;/button&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"dropdown-menu"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">      ...</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;/ul&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"prependedDropdownButton"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L1"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <form class="bs-docs-example">
            <div class="input-prepend input-append">
              <div class="btn-group">
                <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Another action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Separated link</a></li>
                </ul>
              </div><!-- /btn-group -->
              <input class="span2" id="appendedPrependedDropdownButton" type="text">
              <div class="btn-group">
                <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Another action</a></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="http://twitter.github.com/bootstrap/base-css.html?#">Separated link</a></li>
                </ul>
              </div><!-- /btn-group -->
            </div><!-- /input-prepend input-append -->
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend input-append"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn dropdown-toggle"</span><span class="pln"> </span><span class="atn">data-toggle</span><span class="pun">=</span><span class="atv">"dropdown"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">      Action</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"caret"</span><span class="tag">&gt;&lt;/span&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;/button&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"dropdown-menu"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">      ...</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;/ul&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"appendedPrependedDropdownButton"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn dropdown-toggle"</span><span class="pln"> </span><span class="atn">data-toggle</span><span class="pun">=</span><span class="atv">"dropdown"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">      Action</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"caret"</span><span class="tag">&gt;&lt;/span&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;/button&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"dropdown-menu"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">      ...</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;/ul&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L0"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h4>Search form</h4>
          <form class="bs-docs-example form-search">
            <div class="input-append">
              <input type="text" class="span2 search-query">
              <button type="submit" class="btn">Search</button>
            </div>
            <div class="input-prepend">
              <button type="submit" class="btn">Search</button>
              <input type="text" class="span2 search-query">
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;form</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"form-search"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-append"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2 search-query"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Search</span><span class="tag">&lt;/button&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend"</span><span class="tag">&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Search</span><span class="tag">&lt;/button&gt;</span></li><li class="L7"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2 search-query"</span><span class="tag">&gt;</span></li><li class="L8"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L9"><span class="tag">&lt;/form&gt;</span></li></ol></pre>

          <h3>Control sizing</h3>
          <p>Use relative sizing classes like <code>.input-large</code> or match your inputs to the grid column sizes using <code>.span*</code> classes.</p>

          <h4>Block level inputs</h4>
          <p>Make any <code>&lt;input&gt;</code> or <code>&lt;textarea&gt;</code> element behave like a block level element.</p>
          <form class="bs-docs-example" style="padding-bottom: 15px;">
            <div class="controls">
              <input class="input-block-level" type="text" placeholder=".input-block-level">
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-block-level"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-block-level"</span><span class="tag">&gt;</span></li></ol></pre>

          <h4>Relative sizing</h4>
          <form class="bs-docs-example" style="padding-bottom: 15px;">
            <div class="controls docs-input-sizes">
              <input class="input-mini" type="text" placeholder=".input-mini">
              <input class="input-small" type="text" placeholder=".input-small">
              <input class="input-medium" type="text" placeholder=".input-medium">
              <input class="input-large" type="text" placeholder=".input-large">
              <input class="input-xlarge" type="text" placeholder=".input-xlarge">
              <input class="input-xxlarge" type="text" placeholder=".input-xxlarge">
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-mini"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-mini"</span><span class="tag">&gt;</span></li><li class="L1"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-small"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-small"</span><span class="tag">&gt;</span></li><li class="L2"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-medium"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-medium"</span><span class="tag">&gt;</span></li><li class="L3"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-large"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-large"</span><span class="tag">&gt;</span></li><li class="L4"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-xlarge"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-xlarge"</span><span class="tag">&gt;</span></li><li class="L5"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-xxlarge"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".input-xxlarge"</span><span class="tag">&gt;</span></li></ol></pre>
          <p>
            <span class="label label-info">Heads up!</span> In future versions, we'll be altering the use of these relative input classes to match our button sizes. For example, <code>.input-large</code> will increase the padding and font-size of an input.
          </p>

          <h4>Grid sizing</h4>
          <p>Use <code>.span1</code> to <code>.span12</code> for inputs that match the same sizes of the grid columns.</p>
          <form class="bs-docs-example" style="padding-bottom: 15px;">
            <div class="controls docs-input-sizes">
              <input class="span1" type="text" placeholder=".span1">
              <input class="span2" type="text" placeholder=".span2">
              <input class="span3" type="text" placeholder=".span3">
              <select class="span1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
              <select class="span2">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
              <select class="span3">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span1"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span1"</span><span class="tag">&gt;</span></li><li class="L1"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span2"</span><span class="tag">&gt;</span></li><li class="L2"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span3"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span3"</span><span class="tag">&gt;</span></li><li class="L3"><span class="tag">&lt;select</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span1"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">  ...</span></li><li class="L5"><span class="tag">&lt;/select&gt;</span></li><li class="L6"><span class="tag">&lt;select</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">  ...</span></li><li class="L8"><span class="tag">&lt;/select&gt;</span></li><li class="L9"><span class="tag">&lt;select</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span3"</span><span class="tag">&gt;</span></li><li class="L0"><span class="pln">  ...</span></li><li class="L1"><span class="tag">&lt;/select&gt;</span></li></ol></pre>

          <p>For multiple grid inputs per line, <strong>use the <code>.controls-row</code> modifier class for proper spacing</strong>. It floats the inputs to collapse white-space, sets the proper margins, and the clears the float.</p>
          <form class="bs-docs-example" style="padding-bottom: 15px;">
            <div class="controls">
              <input class="span5" type="text" placeholder=".span5">
            </div>
            <div class="controls controls-row">
              <input class="span4" type="text" placeholder=".span4">
              <input class="span1" type="text" placeholder=".span1">
            </div>
            <div class="controls controls-row">
              <input class="span3" type="text" placeholder=".span3">
              <input class="span2" type="text" placeholder=".span2">
            </div>
            <div class="controls controls-row">
              <input class="span2" type="text" placeholder=".span2">
              <input class="span3" type="text" placeholder=".span3">
            </div>
            <div class="controls controls-row">
              <input class="span1" type="text" placeholder=".span1">
              <input class="span4" type="text" placeholder=".span4">
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span5"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span5"</span><span class="tag">&gt;</span></li><li class="L2"><span class="tag">&lt;/div&gt;</span></li><li class="L3"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls controls-row"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span4"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span4"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span1"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">".span1"</span><span class="tag">&gt;</span></li><li class="L6"><span class="tag">&lt;/div&gt;</span></li><li class="L7"><span class="pln">...</span></li></ol></pre>

          <h3>Uneditable inputs</h3>
          <p>Present data in a form that's not editable without using actual form markup.</p>
          <form class="bs-docs-example">
            <span class="input-xlarge uneditable-input">Some value here</span>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-xlarge uneditable-input"</span><span class="tag">&gt;</span><span class="pln">Some value here</span><span class="tag">&lt;/span&gt;</span></li></ol></pre>

          <h3>Form actions</h3>
          <p>End a form with a group of actions (buttons). When placed within a <code>.form-horizontal</code>, the buttons will automatically indent to line up with the form controls.</p>
          <form class="bs-docs-example">
            <div class="form-actions">
              <button type="submit" class="btn btn-primary">Save changes</button>
              <button type="button" class="btn">Cancel</button>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"form-actions"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-primary"</span><span class="tag">&gt;</span><span class="pln">Save changes</span><span class="tag">&lt;/button&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="tag">&gt;</span><span class="pln">Cancel</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h3>Help text</h3>
          <p>Inline and block level support for help text that appears around form controls.</p>
          <h4>Inline help</h4>
          <form class="bs-docs-example form-inline">
            <input type="text"> <span class="help-inline">Inline help text</span>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-inline"</span><span class="tag">&gt;</span><span class="pln">Inline help text</span><span class="tag">&lt;/span&gt;</span></li></ol></pre>

          <h4>Block help</h4>
          <form class="bs-docs-example form-inline">
            <input type="text">
            <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-block"</span><span class="tag">&gt;</span><span class="pln">A longer block of help text that breaks onto a new line and may extend beyond one line.</span><span class="tag">&lt;/span&gt;</span></li></ol></pre>


          <hr class="bs-docs-separator">


          <h2>Form control states</h2>
          <p>Provide feedback to users or visitors with basic feedback states on form controls and labels.</p>

          <h3>Input focus</h3>
          <p>We remove the default <code>outline</code> styles on some form controls and apply a <code>box-shadow</code> in its place for <code>:focus</code>.</p>
          <form class="bs-docs-example form-inline">
            <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused...">
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-xlarge"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"focusedInput"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"This is focused..."</span><span class="tag">&gt;</span></li></ol></pre>

          <h3>Disabled inputs</h3>
          <p>Add the <code>disabled</code> attribute on an input to prevent user input and trigger a slightly different look.</p>
          <form class="bs-docs-example form-inline">
            <input class="input-xlarge" id="disabledInput" type="text" placeholder="Disabled input here…" disabled="">
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-xlarge"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"disabledInput"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">placeholder</span><span class="pun">=</span><span class="atv">"Disabled input here..."</span><span class="pln"> </span><span class="atn">disabled</span><span class="tag">&gt;</span></li></ol></pre>

          <h3>Validation states</h3>
          <p>Bootstrap includes validation styles for error, warning, info, and success messages. To use, add the appropriate class to the surrounding <code>.control-group</code>.</p>

          <form class="bs-docs-example form-horizontal">
            <div class="control-group warning">
              <label class="control-label" for="inputWarning">Input with warning</label>
              <div class="controls">
                <input type="text" id="inputWarning">
                <span class="help-inline">Something may have gone wrong</span>
              </div>
            </div>
            <div class="control-group error">
              <label class="control-label" for="inputError">Input with error</label>
              <div class="controls">
                <input type="text" id="inputError">
                <span class="help-inline">Please correct the error</span>
              </div>
            </div>
            <div class="control-group info">
              <label class="control-label" for="inputInfo">Input with info</label>
              <div class="controls">
                <input type="text" id="inputInfo">
                <span class="help-inline">Username is taken</span>
              </div>
            </div>
            <div class="control-group success">
              <label class="control-label" for="inputSuccess">Input with success</label>
              <div class="controls">
                <input type="text" id="inputSuccess">
                <span class="help-inline">Woohoo!</span>
              </div>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group warning"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputWarning"</span><span class="tag">&gt;</span><span class="pln">Input with warning</span><span class="tag">&lt;/label&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputWarning"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-inline"</span><span class="tag">&gt;</span><span class="pln">Something may have gone wrong</span><span class="tag">&lt;/span&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L6"><span class="tag">&lt;/div&gt;</span></li><li class="L7"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group error"</span><span class="tag">&gt;</span></li><li class="L8"><span class="pln">  </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputError"</span><span class="tag">&gt;</span><span class="pln">Input with error</span><span class="tag">&lt;/label&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L0"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputError"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">    </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-inline"</span><span class="tag">&gt;</span><span class="pln">Please correct the error</span><span class="tag">&lt;/span&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L3"><span class="tag">&lt;/div&gt;</span></li><li class="L4"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group success"</span><span class="tag">&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputSuccess"</span><span class="tag">&gt;</span><span class="pln">Input with success</span><span class="tag">&lt;/label&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L7"><span class="pln">    </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputSuccess"</span><span class="tag">&gt;</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"help-inline"</span><span class="tag">&gt;</span><span class="pln">Woohoo!</span><span class="tag">&lt;/span&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L0"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

        </section>



        <!-- Buttons
        ================================================== -->
        <section id="buttons">
          <div class="page-header">
            <h1>Buttons</h1>
          </div>

          <h2>Default buttons</h2>
          <p>Button styles can be applied to anything with the <code>.btn</code> class applied. However, typically you'll want to apply these to only <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements for the best rendering.</p>
          <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Button</th>
                <th>class=""</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><button type="button" class="btn">Default</button></td>
                <td><code>btn</code></td>
                <td>Standard gray button with gradient</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-primary">Primary</button></td>
                <td><code>btn btn-primary</code></td>
                <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-info">Info</button></td>
                <td><code>btn btn-info</code></td>
                <td>Used as an alternative to the default styles</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-success">Success</button></td>
                <td><code>btn btn-success</code></td>
                <td>Indicates a successful or positive action</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-warning">Warning</button></td>
                <td><code>btn btn-warning</code></td>
                <td>Indicates caution should be taken with this action</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-danger">Danger</button></td>
                <td><code>btn btn-danger</code></td>
                <td>Indicates a dangerous or potentially negative action</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-inverse">Inverse</button></td>
                <td><code>btn btn-inverse</code></td>
                <td>Alternate dark gray button, not tied to a semantic action or use</td>
              </tr>
              <tr>
                <td><button type="button" class="btn btn-link">Link</button></td>
                <td><code>btn btn-link</code></td>
                <td>Deemphasize a button by making it look like a link while maintaining button behavior</td>
              </tr>
            </tbody>
          </table>

          <h4>Cross browser compatibility</h4>
          <p>IE9 doesn't crop background gradients on rounded corners, so we remove it. Related, IE9 jankifies disabled <code>button</code> elements, rendering text gray with a nasty text-shadow that we cannot fix.</p>


          <h2>Button sizes</h2>
          <p>Fancy larger or smaller buttons? Add <code>.btn-large</code>, <code>.btn-small</code>, or <code>.btn-mini</code> for additional sizes.</p>
          <div class="bs-docs-example">
            <p>
              <button type="button" class="btn btn-large btn-primary">Large button</button>
              <button type="button" class="btn btn-large">Large button</button>
            </p>
            <p>
              <button type="button" class="btn btn-primary">Default button</button>
              <button type="button" class="btn">Default button</button>
            </p>
            <p>
              <button type="button" class="btn btn-small btn-primary">Small button</button>
              <button type="button" class="btn btn-small">Small button</button>
            </p>
            <p>
              <button type="button" class="btn btn-mini btn-primary">Mini button</button>
              <button type="button" class="btn btn-mini">Mini button</button>
            </p>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;p&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Large button</span><span class="tag">&lt;/button&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Large button</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="tag">&lt;/p&gt;</span></li><li class="L4"><span class="tag">&lt;p&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Default button</span><span class="tag">&lt;/button&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Default button</span><span class="tag">&lt;/button&gt;</span></li><li class="L7"><span class="tag">&lt;/p&gt;</span></li><li class="L8"><span class="tag">&lt;p&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-small btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Small button</span><span class="tag">&lt;/button&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-small"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Small button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;/p&gt;</span></li><li class="L2"><span class="tag">&lt;p&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-mini btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Mini button</span><span class="tag">&lt;/button&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-mini"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Mini button</span><span class="tag">&lt;/button&gt;</span></li><li class="L5"><span class="tag">&lt;/p&gt;</span></li></ol></pre>
          <p>Create block level buttons—those that span the full width of a parent— by adding <code>.btn-block</code>.</p>
          <div class="bs-docs-example">
            <div class="well" style="max-width: 400px; margin: 0 auto 10px;">
              <button type="button" class="btn btn-large btn-block btn-primary">Block level button</button>
              <button type="button" class="btn btn-large btn-block">Block level button</button>
            </div>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large btn-block btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Block level button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large btn-block"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Block level button</span><span class="tag">&lt;/button&gt;</span></li></ol></pre>


          <h2>Disabled state</h2>
          <p>Make buttons look unclickable by fading them back 50%.</p>

          <h3>Anchor element</h3>
          <p>Add the <code>.disabled</code> class to <code>&lt;a&gt;</code> buttons.</p>
          <p class="bs-docs-example">
            <a href="http://twitter.github.com/bootstrap/base-css.html?#" class="btn btn-large btn-primary disabled">Primary link</a>
            <a href="http://twitter.github.com/bootstrap/base-css.html?#" class="btn btn-large disabled">Link</a>
          </p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large btn-primary disabled"</span><span class="tag">&gt;</span><span class="pln">Primary link</span><span class="tag">&lt;/a&gt;</span></li><li class="L1"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large disabled"</span><span class="tag">&gt;</span><span class="pln">Link</span><span class="tag">&lt;/a&gt;</span></li></ol></pre>
          <p>
            <span class="label label-info">Heads up!</span>
            We use <code>.disabled</code> as a utility class here, similar to the common <code>.active</code> class, so no prefix is required. Also, this class is only for aesthetic; you must use custom JavaScript to disable links here.
          </p>

          <h3>Button element</h3>
          <p>Add the <code>disabled</code> attribute to <code>&lt;button&gt;</code> buttons.</p>
          <p class="bs-docs-example">
            <button type="button" class="btn btn-large btn-primary disabled" disabled="disabled">Primary button</button>
            <button type="button" class="btn btn-large" disabled="">Button</button>
          </p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large btn-primary disabled"</span><span class="pln"> </span><span class="atn">disabled</span><span class="pun">=</span><span class="atv">"disabled"</span><span class="tag">&gt;</span><span class="pln">Primary button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-large"</span><span class="pln"> </span><span class="atn">disabled</span><span class="tag">&gt;</span><span class="pln">Button</span><span class="tag">&lt;/button&gt;</span></li></ol></pre>


          <h2>One class, multiple tags</h2>
          <p>Use the <code>.btn</code> class on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.</p>
          <form class="bs-docs-example">
            <a class="btn" href="">Link</a>
            <button class="btn" type="submit">Button</button>
            <input class="btn" type="button" value="Input">
            <input class="btn" type="submit" value="Submit">
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">""</span><span class="tag">&gt;</span><span class="pln">Link</span><span class="tag">&lt;/a&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="tag">&gt;</span><span class="pln">Button</span><span class="tag">&lt;/button&gt;</span></li><li class="L2"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"Input"</span><span class="tag">&gt;</span></li><li class="L3"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"Submit"</span><span class="tag">&gt;</span></li></ol></pre>
          <p>As a best practice, try to match the element for your context to ensure matching cross-browser rendering. If you have an <code>input</code>, use an <code>&lt;input type="submit"&gt;</code> for your button.</p>

        </section>



        <!-- Images
        ================================================== -->
        <section id="images">
          <div class="page-header">
            <h1>Images</h1>
          </div>

          <p>Add classes to an <code>&lt;img&gt;</code> element to easily style images in any project.</p>
          <div class="bs-docs-example bs-docs-example-images">
            <img src="./formSample_files/140x140" class="img-rounded">
            <img src="./formSample_files/140x140" class="img-circle">
            <img src="./formSample_files/140x140" class="img-polaroid">
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;img</span><span class="pln"> </span><span class="atn">src</span><span class="pun">=</span><span class="atv">"..."</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"img-rounded"</span><span class="tag">&gt;</span></li><li class="L1"><span class="tag">&lt;img</span><span class="pln"> </span><span class="atn">src</span><span class="pun">=</span><span class="atv">"..."</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"img-circle"</span><span class="tag">&gt;</span></li><li class="L2"><span class="tag">&lt;img</span><span class="pln"> </span><span class="atn">src</span><span class="pun">=</span><span class="atv">"..."</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"img-polaroid"</span><span class="tag">&gt;</span></li></ol></pre>
          <p><span class="label label-info">Heads up!</span> <code>.img-rounded</code> and <code>.img-circle</code> do not work in IE7-8 due to lack of <code>border-radius</code> support.</p>


        </section>



        <!-- Icons
        ================================================== -->
        <section id="icons">
          <div class="page-header">
            <h1>Icons <small>by <a href="http://glyphicons.com/" target="_blank">Glyphicons</a></small></h1>
          </div>

          <h2>Icon glyphs</h2>
          <p>140 icons in sprite form, available in dark gray (default) and white, provided by <a href="http://glyphicons.com/" target="_blank">Glyphicons</a>.</p>
          <ul class="the-icons clearfix">
            <li><i class="icon-glass"></i> icon-glass</li>
            <li><i class="icon-music"></i> icon-music</li>
            <li><i class="icon-search"></i> icon-search</li>
            <li><i class="icon-envelope"></i> icon-envelope</li>
            <li><i class="icon-heart"></i> icon-heart</li>
            <li><i class="icon-star"></i> icon-star</li>
            <li><i class="icon-star-empty"></i> icon-star-empty</li>
            <li><i class="icon-user"></i> icon-user</li>
            <li><i class="icon-film"></i> icon-film</li>
            <li><i class="icon-th-large"></i> icon-th-large</li>
            <li><i class="icon-th"></i> icon-th</li>
            <li><i class="icon-th-list"></i> icon-th-list</li>
            <li><i class="icon-ok"></i> icon-ok</li>
            <li><i class="icon-remove"></i> icon-remove</li>
            <li><i class="icon-zoom-in"></i> icon-zoom-in</li>
            <li><i class="icon-zoom-out"></i> icon-zoom-out</li>
            <li><i class="icon-off"></i> icon-off</li>
            <li><i class="icon-signal"></i> icon-signal</li>
            <li><i class="icon-cog"></i> icon-cog</li>
            <li><i class="icon-trash"></i> icon-trash</li>
            <li><i class="icon-home"></i> icon-home</li>
            <li><i class="icon-file"></i> icon-file</li>
            <li><i class="icon-time"></i> icon-time</li>
            <li><i class="icon-road"></i> icon-road</li>
            <li><i class="icon-download-alt"></i> icon-download-alt</li>
            <li><i class="icon-download"></i> icon-download</li>
            <li><i class="icon-upload"></i> icon-upload</li>
            <li><i class="icon-inbox"></i> icon-inbox</li>

            <li><i class="icon-play-circle"></i> icon-play-circle</li>
            <li><i class="icon-repeat"></i> icon-repeat</li>
            <li><i class="icon-refresh"></i> icon-refresh</li>
            <li><i class="icon-list-alt"></i> icon-list-alt</li>
            <li><i class="icon-lock"></i> icon-lock</li>
            <li><i class="icon-flag"></i> icon-flag</li>
            <li><i class="icon-headphones"></i> icon-headphones</li>
            <li><i class="icon-volume-off"></i> icon-volume-off</li>
            <li><i class="icon-volume-down"></i> icon-volume-down</li>
            <li><i class="icon-volume-up"></i> icon-volume-up</li>
            <li><i class="icon-qrcode"></i> icon-qrcode</li>
            <li><i class="icon-barcode"></i> icon-barcode</li>
            <li><i class="icon-tag"></i> icon-tag</li>
            <li><i class="icon-tags"></i> icon-tags</li>
            <li><i class="icon-book"></i> icon-book</li>
            <li><i class="icon-bookmark"></i> icon-bookmark</li>
            <li><i class="icon-print"></i> icon-print</li>
            <li><i class="icon-camera"></i> icon-camera</li>
            <li><i class="icon-font"></i> icon-font</li>
            <li><i class="icon-bold"></i> icon-bold</li>
            <li><i class="icon-italic"></i> icon-italic</li>
            <li><i class="icon-text-height"></i> icon-text-height</li>
            <li><i class="icon-text-width"></i> icon-text-width</li>
            <li><i class="icon-align-left"></i> icon-align-left</li>
            <li><i class="icon-align-center"></i> icon-align-center</li>
            <li><i class="icon-align-right"></i> icon-align-right</li>
            <li><i class="icon-align-justify"></i> icon-align-justify</li>
            <li><i class="icon-list"></i> icon-list</li>

            <li><i class="icon-indent-left"></i> icon-indent-left</li>
            <li><i class="icon-indent-right"></i> icon-indent-right</li>
            <li><i class="icon-facetime-video"></i> icon-facetime-video</li>
            <li><i class="icon-picture"></i> icon-picture</li>
            <li><i class="icon-pencil"></i> icon-pencil</li>
            <li><i class="icon-map-marker"></i> icon-map-marker</li>
            <li><i class="icon-adjust"></i> icon-adjust</li>
            <li><i class="icon-tint"></i> icon-tint</li>
            <li><i class="icon-edit"></i> icon-edit</li>
            <li><i class="icon-share"></i> icon-share</li>
            <li><i class="icon-check"></i> icon-check</li>
            <li><i class="icon-move"></i> icon-move</li>
            <li><i class="icon-step-backward"></i> icon-step-backward</li>
            <li><i class="icon-fast-backward"></i> icon-fast-backward</li>
            <li><i class="icon-backward"></i> icon-backward</li>
            <li><i class="icon-play"></i> icon-play</li>
            <li><i class="icon-pause"></i> icon-pause</li>
            <li><i class="icon-stop"></i> icon-stop</li>
            <li><i class="icon-forward"></i> icon-forward</li>
            <li><i class="icon-fast-forward"></i> icon-fast-forward</li>
            <li><i class="icon-step-forward"></i> icon-step-forward</li>
            <li><i class="icon-eject"></i> icon-eject</li>
            <li><i class="icon-chevron-left"></i> icon-chevron-left</li>
            <li><i class="icon-chevron-right"></i> icon-chevron-right</li>
            <li><i class="icon-plus-sign"></i> icon-plus-sign</li>
            <li><i class="icon-minus-sign"></i> icon-minus-sign</li>
            <li><i class="icon-remove-sign"></i> icon-remove-sign</li>
            <li><i class="icon-ok-sign"></i> icon-ok-sign</li>

            <li><i class="icon-question-sign"></i> icon-question-sign</li>
            <li><i class="icon-info-sign"></i> icon-info-sign</li>
            <li><i class="icon-screenshot"></i> icon-screenshot</li>
            <li><i class="icon-remove-circle"></i> icon-remove-circle</li>
            <li><i class="icon-ok-circle"></i> icon-ok-circle</li>
            <li><i class="icon-ban-circle"></i> icon-ban-circle</li>
            <li><i class="icon-arrow-left"></i> icon-arrow-left</li>
            <li><i class="icon-arrow-right"></i> icon-arrow-right</li>
            <li><i class="icon-arrow-up"></i> icon-arrow-up</li>
            <li><i class="icon-arrow-down"></i> icon-arrow-down</li>
            <li><i class="icon-share-alt"></i> icon-share-alt</li>
            <li><i class="icon-resize-full"></i> icon-resize-full</li>
            <li><i class="icon-resize-small"></i> icon-resize-small</li>
            <li><i class="icon-plus"></i> icon-plus</li>
            <li><i class="icon-minus"></i> icon-minus</li>
            <li><i class="icon-asterisk"></i> icon-asterisk</li>
            <li><i class="icon-exclamation-sign"></i> icon-exclamation-sign</li>
            <li><i class="icon-gift"></i> icon-gift</li>
            <li><i class="icon-leaf"></i> icon-leaf</li>
            <li><i class="icon-fire"></i> icon-fire</li>
            <li><i class="icon-eye-open"></i> icon-eye-open</li>
            <li><i class="icon-eye-close"></i> icon-eye-close</li>
            <li><i class="icon-warning-sign"></i> icon-warning-sign</li>
            <li><i class="icon-plane"></i> icon-plane</li>
            <li><i class="icon-calendar"></i> icon-calendar</li>
            <li><i class="icon-random"></i> icon-random</li>
            <li><i class="icon-comment"></i> icon-comment</li>
            <li><i class="icon-magnet"></i> icon-magnet</li>

            <li><i class="icon-chevron-up"></i> icon-chevron-up</li>
            <li><i class="icon-chevron-down"></i> icon-chevron-down</li>
            <li><i class="icon-retweet"></i> icon-retweet</li>
            <li><i class="icon-shopping-cart"></i> icon-shopping-cart</li>
            <li><i class="icon-folder-close"></i> icon-folder-close</li>
            <li><i class="icon-folder-open"></i> icon-folder-open</li>
            <li><i class="icon-resize-vertical"></i> icon-resize-vertical</li>
            <li><i class="icon-resize-horizontal"></i> icon-resize-horizontal</li>
            <li><i class="icon-hdd"></i> icon-hdd</li>
            <li><i class="icon-bullhorn"></i> icon-bullhorn</li>
            <li><i class="icon-bell"></i> icon-bell</li>
            <li><i class="icon-certificate"></i> icon-certificate</li>
            <li><i class="icon-thumbs-up"></i> icon-thumbs-up</li>
            <li><i class="icon-thumbs-down"></i> icon-thumbs-down</li>
            <li><i class="icon-hand-right"></i> icon-hand-right</li>
            <li><i class="icon-hand-left"></i> icon-hand-left</li>
            <li><i class="icon-hand-up"></i> icon-hand-up</li>
            <li><i class="icon-hand-down"></i> icon-hand-down</li>
            <li><i class="icon-circle-arrow-right"></i> icon-circle-arrow-right</li>
            <li><i class="icon-circle-arrow-left"></i> icon-circle-arrow-left</li>
            <li><i class="icon-circle-arrow-up"></i> icon-circle-arrow-up</li>
            <li><i class="icon-circle-arrow-down"></i> icon-circle-arrow-down</li>
            <li><i class="icon-globe"></i> icon-globe</li>
            <li><i class="icon-wrench"></i> icon-wrench</li>
            <li><i class="icon-tasks"></i> icon-tasks</li>
            <li><i class="icon-filter"></i> icon-filter</li>
            <li><i class="icon-briefcase"></i> icon-briefcase</li>
            <li><i class="icon-fullscreen"></i> icon-fullscreen</li>
          </ul>

          <h3>Glyphicons attribution</h3>
          <p><a href="http://glyphicons.com/">Glyphicons</a> Halflings are normally not available for free, but an arrangement between Bootstrap and the Glyphicons creators have made this possible at no cost to you as developers. As a thank you, we ask you to include an optional link back to <a href="http://glyphicons.com/">Glyphicons</a> whenever practical.</p>


          <hr class="bs-docs-separator">


          <h2>How to use</h2>
          <p>All icons require an <code>&lt;i&gt;</code> tag with a unique class, prefixed with <code>icon-</code>. To use, place the following code just about anywhere:</p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-search"</span><span class="tag">&gt;&lt;/i&gt;</span></li></ol></pre>
          <p>There are also styles available for inverted (white) icons, made ready with one extra class. We will specifically enforce this class on hover and active states for nav and dropdown links.</p>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-search icon-white"</span><span class="tag">&gt;&lt;/i&gt;</span></li></ol></pre>
          <p>
            <span class="label label-info">Heads up!</span>
            When using beside strings of text, as in buttons or nav links, be sure to leave a space after the <code>&lt;i&gt;</code> tag for proper spacing.
          </p>


          <hr class="bs-docs-separator">


          <h2>Icon examples</h2>
          <p>Use them in buttons, button groups for a toolbar, navigation, or prepended form inputs.</p>

          <h4>Buttons</h4>

          <h5>Button group in a button toolbar</h5>
          <div class="bs-docs-example">
            <div class="btn-toolbar">
              <div class="btn-group">
                <a class="btn" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-align-left"></i></a>
                <a class="btn" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-align-center"></i></a>
                <a class="btn" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-align-right"></i></a>
                <a class="btn" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-align-justify"></i></a>
              </div>
            </div>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-toolbar"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L2"><span class="pln">&nbsp;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-align-left"</span><span class="tag">&gt;&lt;/i&gt;&lt;/a&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-align-center"</span><span class="tag">&gt;&lt;/i&gt;&lt;/a&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-align-right"</span><span class="tag">&gt;&lt;/i&gt;&lt;/a&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-align-justify"</span><span class="tag">&gt;&lt;/i&gt;&lt;/a&gt;</span></li><li class="L7"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L8"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h5>Dropdown in a button group</h5>
          <div class="bs-docs-example">
            <div class="btn-group">
              <a class="btn btn-primary" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-user icon-white"></i> User</a>
              <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="http://twitter.github.com/bootstrap/base-css.html?#"><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-pencil"></i> Edit</a></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-trash"></i> Delete</a></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-ban-circle"></i> Ban</a></li>
                <li class="divider"></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="i"></i> Make admin</a></li>
              </ul>
            </div>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn-group"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-primary"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-user icon-white"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> User</span><span class="tag">&lt;/a&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-primary dropdown-toggle"</span><span class="pln"> </span><span class="atn">data-toggle</span><span class="pun">=</span><span class="atv">"dropdown"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"caret"</span><span class="tag">&gt;&lt;/span&gt;&lt;/a&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"dropdown-menu"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">    </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-pencil"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Edit</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L5"><span class="pln">    </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-trash"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Delete</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-ban-circle"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Ban</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L7"><span class="pln">    </span><span class="tag">&lt;li</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"divider"</span><span class="tag">&gt;&lt;/li&gt;</span></li><li class="L8"><span class="pln">    </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"i"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Make admin</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;/ul&gt;</span></li><li class="L0"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

          <h5>Small button</h5>
          <div class="bs-docs-example">
            <a class="btn btn-small" href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-star"></i></a>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-small"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-star"</span><span class="tag">&gt;&lt;/i&gt;&lt;/a&gt;</span></li></ol></pre>


          <h4>Navigation</h4>
          <div class="bs-docs-example">
            <div class="well" style="padding: 8px 0; margin-bottom: 0;">
              <ul class="nav nav-list">
                <li class="active"><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-home icon-white"></i> Home</a></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-book"></i> Library</a></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="icon-pencil"></i> Applications</a></li>
                <li><a href="http://twitter.github.com/bootstrap/base-css.html?#"><i class="i"></i> Misc</a></li>
              </ul>
            </div>
          </div>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;ul</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"nav nav-list"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;li</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"active"</span><span class="tag">&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-home icon-white"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Home</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-book"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Library</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-pencil"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Applications</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;li&gt;&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"i"</span><span class="tag">&gt;&lt;/i&gt;</span><span class="pln"> Misc</span><span class="tag">&lt;/a&gt;&lt;/li&gt;</span></li><li class="L5"><span class="tag">&lt;/ul&gt;</span></li></ol></pre>

          <h4>Form fields</h4>
          <form class="bs-docs-example form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputIcon">Email address</label>
              <div class="controls">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-envelope"></i></span><input class="span2" id="inputIcon" type="text">
                </div>
              </div>
            </div>
          </form>
<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-group"</span><span class="tag">&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;label</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"control-label"</span><span class="pln"> </span><span class="atn">for</span><span class="pun">=</span><span class="atv">"inputIcon"</span><span class="tag">&gt;</span><span class="pln">Email address</span><span class="tag">&lt;/label&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"controls"</span><span class="tag">&gt;</span></li><li class="L3"><span class="pln">    </span><span class="tag">&lt;div</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"input-prepend"</span><span class="tag">&gt;</span></li><li class="L4"><span class="pln">      </span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"add-on"</span><span class="tag">&gt;&lt;i</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"icon-envelope"</span><span class="tag">&gt;&lt;/i&gt;&lt;/span&gt;</span></li><li class="L5"><span class="pln">      </span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"span2"</span><span class="pln"> </span><span class="atn">id</span><span class="pun">=</span><span class="atv">"inputIcon"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="tag">&gt;</span></li><li class="L6"><span class="pln">    </span><span class="tag">&lt;/div&gt;</span></li><li class="L7"><span class="pln">  </span><span class="tag">&lt;/div&gt;</span></li><li class="L8"><span class="tag">&lt;/div&gt;</span></li></ol></pre>

        </section>



      </div>
    </div>

  </div>



    <!-- Footer
    ================================================== -->
    <footer class="footer">
      <div class="container">
        <p class="pull-right"><a href="http://twitter.github.com/bootstrap/base-css.html?#">Back to top</a></p>
        <p>Designed and built with all the love in the world by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>
        <p>Code licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>, documentation under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <p><a href="http://glyphicons.com/">Glyphicons Free</a> licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <ul class="footer-links">
          <li><a href="http://blog.getbootstrap.com/">Blog</a></li>
          <li class="muted">·</li>
          <li><a href="https://github.com/twitter/bootstrap/issues?state=open">Issues</a></li>
          <li class="muted">·</li>
          <li><a href="https://github.com/twitter/bootstrap/wiki">Roadmap and changelog</a></li>
        </ul>
      </div>
    </footer>

	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

  

</body></html>
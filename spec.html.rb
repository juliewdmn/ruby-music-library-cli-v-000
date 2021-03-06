<!DOCTYPE html>
<html lang='en'>
<head>
  <title>RSpec results</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Expires" content="-1" />
  <meta http-equiv="Pragma" content="no-cache" />
  <style type="text/css">
  body {
    margin: 0;
    padding: 0;
    background: #fff;
    font-size: 80%;
  }
  </style>
  <script type="text/javascript">
    // <![CDATA[

function addClass(element_id, classname) {
  document.getElementById(element_id).className += (" " + classname);
}

function removeClass(element_id, classname) {
  var elem = document.getElementById(element_id);
  var classlist = elem.className.replace(classname,'');
  elem.className = classlist;
}

function moveProgressBar(percentDone) {
  document.getElementById("rspec-header").style.width = percentDone +"%";
}

function makeRed(element_id) {
  removeClass(element_id, 'passed');
  removeClass(element_id, 'not_implemented');
  addClass(element_id,'failed');
}

function makeYellow(element_id) {
  var elem = document.getElementById(element_id);
  if (elem.className.indexOf("failed") == -1) {  // class doesn't includes failed
    if (elem.className.indexOf("not_implemented") == -1) { // class doesn't include not_implemented
      removeClass(element_id, 'passed');
      addClass(element_id,'not_implemented');
    }
  }
}

function apply_filters() {
  var passed_filter = document.getElementById('passed_checkbox').checked;
  var failed_filter = document.getElementById('failed_checkbox').checked;
  var pending_filter = document.getElementById('pending_checkbox').checked;

  assign_display_style("example passed", passed_filter);
  assign_display_style("example failed", failed_filter);
  assign_display_style("example not_implemented", pending_filter);

  assign_display_style_for_group("example_group passed", passed_filter);
  assign_display_style_for_group("example_group not_implemented", pending_filter, pending_filter || passed_filter);
  assign_display_style_for_group("example_group failed", failed_filter, failed_filter || pending_filter || passed_filter);
}

function get_display_style(display_flag) {
  var style_mode = 'none';
  if (display_flag == true) {
    style_mode = 'block';
  }
  return style_mode;
}

function assign_display_style(classname, display_flag) {
  var style_mode = get_display_style(display_flag);
  var elems = document.getElementsByClassName(classname)
  for (var i=0; i<elems.length;i++) {
    elems[i].style.display = style_mode;
  }
}

function assign_display_style_for_group(classname, display_flag, subgroup_flag) {
  var display_style_mode = get_display_style(display_flag);
  var subgroup_style_mode = get_display_style(subgroup_flag);
  var elems = document.getElementsByClassName(classname)
  for (var i=0; i<elems.length;i++) {
    var style_mode = display_style_mode;
    if ((display_flag != subgroup_flag) && (elems[i].getElementsByTagName('dt')[0].innerHTML.indexOf(", ") != -1)) {
      elems[i].style.display = subgroup_style_mode;
    } else {
      elems[i].style.display = display_style_mode;
    }
  }
}

    // ]]>
  </script>
  <style type="text/css">
#rspec-header {
  background: #65C400; color: #fff; height: 4em;
}

.rspec-report h1 {
  margin: 0px 10px 0px 10px;
  padding: 10px;
  font-family: "Lucida Grande", Helvetica, sans-serif;
  font-size: 1.8em;
  position: absolute;
}

#label {
  float:left;
}

#display-filters {
  float:left;
  padding: 28px 0 0 40%;
  font-family: "Lucida Grande", Helvetica, sans-serif;
}

#summary {
  float:right;
  padding: 5px 10px;
  font-family: "Lucida Grande", Helvetica, sans-serif;
  text-align: right;
}

#summary p {
  margin: 0 0 0 2px;
}

#summary #totals {
  font-size: 1.2em;
}

.example_group {
  margin: 0 10px 5px;
  background: #fff;
}

dl {
  margin: 0; padding: 0 0 5px;
  font: normal 11px "Lucida Grande", Helvetica, sans-serif;
}

dt {
  padding: 3px;
  background: #65C400;
  color: #fff;
  font-weight: bold;
}

dd {
  margin: 5px 0 5px 5px;
  padding: 3px 3px 3px 18px;
}

dd .duration {
  padding-left: 5px;
  text-align: right;
  right: 0px;
  float:right;
}

dd.example.passed {
  border-left: 5px solid #65C400;
  border-bottom: 1px solid #65C400;
  background: #DBFFB4; color: #3D7700;
}

dd.example.not_implemented {
  border-left: 5px solid #FAF834;
  border-bottom: 1px solid #FAF834;
  background: #FCFB98; color: #131313;
}

dd.example.pending_fixed {
  border-left: 5px solid #0000C2;
  border-bottom: 1px solid #0000C2;
  color: #0000C2; background: #D3FBFF;
}

dd.example.failed {
  border-left: 5px solid #C20000;
  border-bottom: 1px solid #C20000;
  color: #C20000; background: #FFFBD3;
}


dt.not_implemented {
  color: #000000; background: #FAF834;
}

dt.pending_fixed {
  color: #FFFFFF; background: #C40D0D;
}

dt.failed {
  color: #FFFFFF; background: #C40D0D;
}


#rspec-header.not_implemented {
  color: #000000; background: #FAF834;
}

#rspec-header.pending_fixed {
  color: #FFFFFF; background: #C40D0D;
}

#rspec-header.failed {
  color: #FFFFFF; background: #C40D0D;
}


.backtrace {
  color: #000;
  font-size: 12px;
}

a {
  color: #BE5C00;
}

/* Ruby code, style similar to vibrant ink */
.ruby {
  font-size: 12px;
  font-family: monospace;
  color: white;
  background-color: black;
  padding: 0.1em 0 0.2em 0;
}

.ruby .keyword { color: #FF6600; }
.ruby .constant { color: #339999; }
.ruby .attribute { color: white; }
.ruby .global { color: white; }
.ruby .module { color: white; }
.ruby .class { color: white; }
.ruby .string { color: #66FF00; }
.ruby .ident { color: white; }
.ruby .method { color: #FFCC00; }
.ruby .number { color: white; }
.ruby .char { color: white; }
.ruby .comment { color: #9933CC; }
.ruby .symbol { color: white; }
.ruby .regex { color: #44B4CC; }
.ruby .punct { color: white; }
.ruby .escape { color: white; }
.ruby .interp { color: white; }
.ruby .expr { color: white; }

.ruby .offending { background-color: gray; }
.ruby .linenum {
  width: 75px;
  padding: 0.1em 1em 0.2em 0;
  color: #000000;
  background-color: #FFFBD3;
}

  </style>
</head>
<body>
<div class="rspec-report">

<div id="rspec-header">
  <div id="label">
    <h1>RSpec Code Examples</h1>
  </div>

  <div id="display-filters">
    <input id="passed_checkbox"  name="passed_checkbox"  type="checkbox" checked="checked" onchange="apply_filters()" value="1" /> <label for="passed_checkbox">Passed</label>
    <input id="failed_checkbox"  name="failed_checkbox"  type="checkbox" checked="checked" onchange="apply_filters()" value="2" /> <label for="failed_checkbox">Failed</label>
    <input id="pending_checkbox" name="pending_checkbox" type="checkbox" checked="checked" onchange="apply_filters()" value="3" /> <label for="pending_checkbox">Pending</label>
  </div>

  <div id="summary">
    <p id="totals">&#160;</p>
    <p id="duration">&#160;</p>
  </div>
</div>


<div class="results">
<div id="div_group_1" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_1" class="passed">Song Basics</dt>
  </dl>
</div>
<div id="div_group_2" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_2" class="passed">#initialize with #name</dt>
    <script type="text/javascript">moveProgressBar('1.4');</script>
    <dd class="example passed"><span class="passed_spec_name">accepts a name for the song</span><span class='duration'>0.00076s</span></dd>
  </dl>
</div>
<div id="div_group_3" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_3" class="passed">#name=</dt>
    <script type="text/javascript">moveProgressBar('2.8');</script>
    <dd class="example passed"><span class="passed_spec_name">sets the song name</span><span class='duration'>0.00024s</span></dd>
  </dl>
</div>
<div id="div_group_4" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_4" class="passed">.all</dt>
    <script type="text/javascript">moveProgressBar('4.2');</script>
    <dd class="example passed"><span class="passed_spec_name">returns the class variable @@all</span><span class='duration'>0.00178s</span></dd>
  </dl>
</div>
<div id="div_group_5" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_5" class="passed">.destroy_all</dt>
    <script type="text/javascript">moveProgressBar('5.6');</script>
    <dd class="example passed"><span class="passed_spec_name">resets the @@all class variable to an empty array</span><span class='duration'>0.00015s</span></dd>
  </dl>
</div>
<div id="div_group_6" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_6" class="passed">#save</dt>
    <script type="text/javascript">moveProgressBar('7.0');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the song instance to the @@all class variable</span><span class='duration'>0.00118s</span></dd>
  </dl>
</div>
<div id="div_group_7" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_7" class="passed">.create</dt>
    <script type="text/javascript">moveProgressBar('8.4');</script>
    <dd class="example passed"><span class="passed_spec_name">initializes and saves the song</span><span class='duration'>0.00016s</span></dd>
  </dl>
</div>
<div id="div_group_8" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_8" class="passed">Artist Basics</dt>
  </dl>
</div>
<div id="div_group_9" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_9" class="passed">#initialize with #name</dt>
    <script type="text/javascript">moveProgressBar('9.8');</script>
    <dd class="example passed"><span class="passed_spec_name">accepts a name for the song</span><span class='duration'>0.00013s</span></dd>
  </dl>
</div>
<div id="div_group_10" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_10" class="passed">#name=</dt>
    <script type="text/javascript">moveProgressBar('11.2');</script>
    <dd class="example passed"><span class="passed_spec_name">sets the artist name</span><span class='duration'>0.00011s</span></dd>
  </dl>
</div>
<div id="div_group_11" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_11" class="passed">.all</dt>
    <script type="text/javascript">moveProgressBar('12.6');</script>
    <dd class="example passed"><span class="passed_spec_name">returns the class variable @@all</span><span class='duration'>0.00015s</span></dd>
  </dl>
</div>
<div id="div_group_12" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_12" class="passed">.destroy_all</dt>
    <script type="text/javascript">moveProgressBar('14.0');</script>
    <dd class="example passed"><span class="passed_spec_name">resets the @@all class variable to an empty array</span><span class='duration'>0.00011s</span></dd>
  </dl>
</div>
<div id="div_group_13" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_13" class="passed">#save</dt>
    <script type="text/javascript">moveProgressBar('15.4');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the artist instance to the @@all class variable</span><span class='duration'>0.00011s</span></dd>
  </dl>
</div>
<div id="div_group_14" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_14" class="passed">.create</dt>
    <script type="text/javascript">moveProgressBar('16.9');</script>
    <dd class="example passed"><span class="passed_spec_name">initializes and saves the artist</span><span class='duration'>0.00013s</span></dd>
  </dl>
</div>
<div id="div_group_15" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_15" class="passed">Genre Basics</dt>
  </dl>
</div>
<div id="div_group_16" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_16" class="passed">#initialize with #name</dt>
    <script type="text/javascript">moveProgressBar('18.3');</script>
    <dd class="example passed"><span class="passed_spec_name">accepts a name for the genre</span><span class='duration'>0.00014s</span></dd>
  </dl>
</div>
<div id="div_group_17" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_17" class="passed">#name=</dt>
    <script type="text/javascript">moveProgressBar('19.7');</script>
    <dd class="example passed"><span class="passed_spec_name">sets the genre name</span><span class='duration'>0.00015s</span></dd>
  </dl>
</div>
<div id="div_group_18" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_18" class="passed">.all</dt>
    <script type="text/javascript">moveProgressBar('21.1');</script>
    <dd class="example passed"><span class="passed_spec_name">returns the class variable @@all</span><span class='duration'>0.00013s</span></dd>
  </dl>
</div>
<div id="div_group_19" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_19" class="passed">.destroy_all</dt>
    <script type="text/javascript">moveProgressBar('22.5');</script>
    <dd class="example passed"><span class="passed_spec_name">resets the @@all class variable to an empty array</span><span class='duration'>0.00021s</span></dd>
  </dl>
</div>
<div id="div_group_20" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_20" class="passed">#save</dt>
    <script type="text/javascript">moveProgressBar('23.9');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the genre instance to the @@all class variable</span><span class='duration'>0.00020s</span></dd>
  </dl>
</div>
<div id="div_group_21" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_21" class="passed">.create</dt>
    <script type="text/javascript">moveProgressBar('25.3');</script>
    <dd class="example passed"><span class="passed_spec_name">initializes and saves the genre</span><span class='duration'>0.00011s</span></dd>
  </dl>
</div>
<div id="div_group_22" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_22" class="passed">Songs and Artists</dt>
  </dl>
</div>
<div id="div_group_23" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_23" class="passed">Artists have many songs</dt>
    <script type="text/javascript">moveProgressBar('26.7');</script>
    <dd class="example passed"><span class="passed_spec_name">initializes with a songs property set to an empty array</span><span class='duration'>0.00019s</span></dd>
    <script type="text/javascript">moveProgressBar('28.1');</script>
    <dd class="example passed"><span class="passed_spec_name">can push a song into the songs collection</span><span class='duration'>0.00011s</span></dd>
  </dl>
</div>
<div id="div_group_24" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_24" class="passed">Songs belong to an artist</dt>
  </dl>
</div>
<div id="div_group_25" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_25" class="passed">#artist=</dt>
    <script type="text/javascript">moveProgressBar('29.5');</script>
    <dd class="example passed"><span class="passed_spec_name">accepts an artist for the song</span><span class='duration'>0.00011s</span></dd>
    <script type="text/javascript">moveProgressBar('30.9');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the song to the artist&#39;s songs</span><span class='duration'>0.00013s</span></dd>
  </dl>
</div>
<div id="div_group_26" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_26" class="passed">adding a song to an artist</dt>
  </dl>
</div>
<div id="div_group_27" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_27" class="passed">#add_song</dt>
    <script type="text/javascript">moveProgressBar('32.3');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the song to the artist&#39;s song collection</span><span class='duration'>0.00011s</span></dd>
    <script type="text/javascript">moveProgressBar('33.8');</script>
    <dd class="example passed"><span class="passed_spec_name">assigns the artist to the song</span><span class='duration'>0.00011s</span></dd>
    <script type="text/javascript">moveProgressBar('35.2');</script>
    <dd class="example passed"><span class="passed_spec_name">does not assign the artist to the song if the song already has the artist</span><span class='duration'>0.06781s</span></dd>
    <script type="text/javascript">moveProgressBar('36.6');</script>
    <dd class="example passed"><span class="passed_spec_name">does not add the song to the artist&#39;s song collection if the artist already has the song</span><span class='duration'>0.00031s</span></dd>
  </dl>
</div>
<div id="div_group_28" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_28" class="passed">Song#artist=</dt>
    <script type="text/javascript">moveProgressBar('38.0');</script>
    <dd class="example passed"><span class="passed_spec_name">uses add_song to add the song to the artist&#39;s collection</span><span class='duration'>0.00061s</span></dd>
  </dl>
</div>
<div id="div_group_29" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_29" class="passed">initializing a song with an artist</dt>
    <script type="text/javascript">moveProgressBar('39.4');</script>
    <dd class="example passed"><span class="passed_spec_name">new songs accept an optional argument for the artist</span><span class='duration'>0.00023s</span></dd>
  </dl>
</div>
<div id="div_group_30" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_30" class="passed">Songs and Genres</dt>
  </dl>
</div>
<div id="div_group_31" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_31" class="passed">Genres have many songs</dt>
    <script type="text/javascript">moveProgressBar('40.8');</script>
    <dd class="example passed"><span class="passed_spec_name">initializes with a songs property set to an empty array</span><span class='duration'>0.00017s</span></dd>
    <script type="text/javascript">moveProgressBar('42.2');</script>
    <dd class="example passed"><span class="passed_spec_name">can push a song into the genre&#39;s song collection</span><span class='duration'>0.00017s</span></dd>
  </dl>
</div>
<div id="div_group_32" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_32" class="passed">Songs belong to a genre</dt>
  </dl>
</div>
<div id="div_group_33" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_33" class="passed">#genre=</dt>
    <script type="text/javascript">moveProgressBar('43.6');</script>
    <dd class="example passed"><span class="passed_spec_name">accepts an genre for the song</span><span class='duration'>0.00021s</span></dd>
    <script type="text/javascript">moveProgressBar('45.0');</script>
    <dd class="example passed"><span class="passed_spec_name">adds the song to the genre&#39;s songs</span><span class='duration'>0.00019s</span></dd>
    <script type="text/javascript">moveProgressBar('46.4');</script>
    <dd class="example passed"><span class="passed_spec_name">does not add the song to the genre&#39;s songs if it already exists</span><span class='duration'>0.00019s</span></dd>
  </dl>
</div>
<div id="div_group_34" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_34" class="passed">initializing a song with a genre</dt>
    <script type="text/javascript">moveProgressBar('47.8');</script>
    <dd class="example passed"><span class="passed_spec_name">songs accept an optional argument for the genre</span><span class='duration'>0.00022s</span></dd>
  </dl>
</div>
<div id="div_group_35" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_35" class="passed">Artists have many genres through songs</dt>
  </dl>
</div>
<div id="div_group_36" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_36" class="passed">#genres</dt>
    <script type="text/javascript">makeRed('rspec-header');</script>
    <script type="text/javascript">makeRed('div_group_36');</script>
    <script type="text/javascript">makeRed('example_group_36');</script>
    <script type="text/javascript">moveProgressBar('49.2');</script>
    <dd class="example failed">
      <span class="failed_spec_name">returns the unique genres belonging to all the songs of the artist</span>
      <span class="duration">0.01624s</span>
      <div class="failure" id="failure_1">
        <div class="message"><pre>expected nil to include #&lt;Genre:0x00000001776338 @name=&quot;indie rock&quot;, @songs=[#&lt;Song:0x000000017761f8 @name=&quot;In the Aeroplane Over the Sea&quot;, @artist=#&lt;Artist:0x000000017762c0 @name=&quot;Neutral Milk Hotel&quot;, @songs=[#&lt;Song:0x000000017761f8 ...&gt;, #&lt;Song:0x00000001776158 @name=&quot;Two-Headed Boy&quot;, @artist=#&lt;Artist:0x000000017762c0 ...&gt;, @genre=#&lt;Genre:0x00000001776338 ...&gt;&gt;]&gt;, @genre=#&lt;Genre:0x00000001776338 ...&gt;&gt;, #&lt;Song:0x00000001776158 @name=&quot;Two-Headed Boy&quot;, @artist=#&lt;Artist:0x000000017762c0 @name=&quot;Neutral Milk Hotel&quot;, @songs=[#&lt;Song:0x000000017761f8 @name=&quot;In the Aeroplane Over the Sea&quot;, @artist=#&lt;Artist:0x000000017762c0 ...&gt;, @genre=#&lt;Genre:0x00000001776338 ...&gt;&gt;, #&lt;Song:0x00000001776158 ...&gt;]&gt;, @genre=#&lt;Genre:0x00000001776338 ...&gt;&gt;]&gt;, but it does not respond to `include?`</pre></div>
        <div class="backtrace"><pre>./spec/006_artists_and_genres_spec.rb:11:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">9</span>      song = <span class="constant">Song</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">Two-Headed Boy</span><span class="delimiter">&quot;</span></span>, artist, genre)
<span class="linenum">10</span>
<span class="offending"><span class="linenum">11</span>      expect(artist.genres).to include(genre)</span>
<span class="linenum">12</span>      expect(artist.genres.size).to eq(<span class="integer">1</span>)
<span class="linenum">13</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('50.7');</script>
    <dd class="example failed">
      <span class="failed_spec_name">returns only unique genres for an artist if more than one song has the same genre</span>
      <span class="duration">0.00035s</span>
      <div class="failure" id="failure_2">
        <div class="message"><pre>expected a collection that can be converted to an array with `#to_ary` or `#to_a`, but got nil</pre></div>
        <div class="backtrace"><pre>./spec/006_artists_and_genres_spec.rb:24:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">22</span>      song = <span class="constant">Song</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">Papa was a Rodeo</span><span class="delimiter">&quot;</span></span>, artist, indie_rock)
<span class="linenum">23</span>
<span class="offending"><span class="linenum">24</span>      expect(artist.genres).to match_array([indie_rock, electro_pop])</span>
<span class="linenum">25</span>      expect(artist.genres.size).to eq(<span class="integer">2</span>)
<span class="linenum">26</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('52.1');</script>
    <dd class="example failed">
      <span class="failed_spec_name">does not use an instance variable @genres and collects genres from songs everytime</span>
      <span class="duration">0.00034s</span>
      <div class="failure" id="failure_3">
        <div class="message"><pre>expected a collection that can be converted to an array with `#to_ary` or `#to_a`, but got nil</pre></div>
        <div class="backtrace"><pre>./spec/006_artists_and_genres_spec.rb:35:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">33</span>      song = <span class="constant">Song</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">Long-Forgotten Fairytale</span><span class="delimiter">&quot;</span></span>, artist, electro_pop)
<span class="linenum">34</span>
<span class="offending"><span class="linenum">35</span>      expect(artist.genres).to match_array([electro_pop])</span>
<span class="linenum">36</span>      expect(artist.instance_variable_defined?(<span class="symbol">:@genres</span>)).to be_falsey</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_37" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_37" class="passed">Genres have many artists through songs</dt>
  </dl>
</div>
<div id="div_group_38" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_38" class="passed">#artists</dt>
    <script type="text/javascript">makeRed('div_group_38');</script>
    <script type="text/javascript">makeRed('example_group_38');</script>
    <script type="text/javascript">moveProgressBar('53.5');</script>
    <dd class="example failed">
      <span class="failed_spec_name">returns only unique artists for a genre when artists have multiple songs</span>
      <span class="duration">0.00017s</span>
      <div class="failure" id="failure_4">
        <div class="message"><pre>undefined method `artists&#39; for #&lt;Genre:0x0000000174ab98&gt;</pre></div>
        <div class="backtrace"><pre>./spec/006_artists_and_genres_spec.rb:56:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">54</span>      <span class="constant">Song</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">Papa was a Rodeo</span><span class="delimiter">&quot;</span></span>, the_magnetic_fields, genre)
<span class="linenum">55</span>
<span class="offending"><span class="linenum">56</span>      expect(genre.artists).to match_array([neutral_milk_hotel, the_magnetic_fields])</span>
<span class="linenum">57</span>      expect(genre.artists.size).to eq(<span class="integer">2</span>)
<span class="linenum">58</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('54.9');</script>
    <dd class="example failed">
      <span class="failed_spec_name">does not use an instance variable @artists and collects artists from songs everytime</span>
      <span class="duration">0.00018s</span>
      <div class="failure" id="failure_5">
        <div class="message"><pre>undefined method `artists&#39; for #&lt;Genre:0x00000001685910&gt;</pre></div>
        <div class="backtrace"><pre>./spec/006_artists_and_genres_spec.rb:69:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">67</span>      <span class="constant">Song</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">Papa was a Rodeo</span><span class="delimiter">&quot;</span></span>, the_magnetic_fields, genre)
<span class="linenum">68</span>
<span class="offending"><span class="linenum">69</span>      expect(genre.artists).to match_array([the_magnetic_fields])</span>
<span class="linenum">70</span>      expect(genre.instance_variable_defined?(<span class="symbol">:@artists</span>)).to be_falsey</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_39" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_39" class="passed">Findable Songs</dt>
  </dl>
</div>
<div id="div_group_40" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_40" class="passed">.find_by_name</dt>
    <script type="text/javascript">makeRed('div_group_40');</script>
    <script type="text/javascript">makeRed('example_group_40');</script>
    <script type="text/javascript">moveProgressBar('56.3');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds a song instance in @@all by the name property of the song</span>
      <span class="duration">0.00020s</span>
      <div class="failure" id="failure_6">
        <div class="message"><pre>undefined method `find_by_name&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/007_findable_songs_spec.rb:7:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">5</span>      song.save
<span class="linenum">6</span>
<span class="offending"><span class="linenum">7</span>      expect(<span class="constant">Song</span>.find_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">In the Aeroplane Over the Sea</span><span class="delimiter">&quot;</span></span>)).to eq(song)</span>
<span class="linenum">8</span>    <span class="keyword">end</span>
<span class="linenum">9</span>  <span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_41" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_41" class="passed">.find_or_create_by_name</dt>
    <script type="text/javascript">makeRed('div_group_41');</script>
    <script type="text/javascript">makeRed('example_group_41');</script>
    <script type="text/javascript">moveProgressBar('57.7');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds or creates a song by name maintaining uniqueness of objects by their name property</span>
      <span class="duration">0.00018s</span>
      <div class="failure" id="failure_7">
        <div class="message"><pre>undefined method `find_or_create_by_name&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/007_findable_songs_spec.rb:13:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">11</span>  describe <span class="string"><span class="delimiter">&quot;</span><span class="content">.find_or_create_by_name</span><span class="delimiter">&quot;</span></span> <span class="keyword">do</span>
<span class="linenum">12</span>    it <span class="string"><span class="delimiter">'</span><span class="content">finds or creates a song by name maintaining uniqueness of objects by their name property</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">13</span>      song_1 = <span class="constant">Song</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">In the Aeroplane Over the Sea</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">14</span>      song_2 = <span class="constant">Song</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">In the Aeroplane Over the Sea</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_42" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_42" class="passed">Concerns::Findable</dt>
    <script type="text/javascript">moveProgressBar('59.1');</script>
    <dd class="example passed"><span class="passed_spec_name">defines a module Concerns::Findable</span><span class='duration'>0.00332s</span></dd>
    <script type="text/javascript">makeRed('div_group_42');</script>
    <script type="text/javascript">makeRed('example_group_42');</script>
    <script type="text/javascript">moveProgressBar('60.5');</script>
    <dd class="example failed">
      <span class="failed_spec_name">adds a find_by_name class method to classes that are extended by the module</span>
      <span class="duration">0.05406s</span>
      <div class="failure" id="failure_8">
        <div class="message"><pre>expected Person to respond to :find_by_name</pre></div>
        <div class="backtrace"><pre>./spec/008_findable_module_spec.rb:14:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">12</span>
<span class="linenum">13</span>  it <span class="string"><span class="delimiter">'</span><span class="content">adds a find_by_name class method to classes that are extended by the module</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">14</span>    expect(<span class="constant">Person</span>).to respond_to(<span class="symbol">:find_by_name</span>)</span>
<span class="linenum">15</span>  <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('61.9');</script>
    <dd class="example failed">
      <span class="failed_spec_name">adds a find_or_create_by_name class method to classes that are extended by the module</span>
      <span class="duration">0.00035s</span>
      <div class="failure" id="failure_9">
        <div class="message"><pre>expected Person to respond to :find_or_create_by_name</pre></div>
        <div class="backtrace"><pre>./spec/008_findable_module_spec.rb:18:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">16</span>
<span class="linenum">17</span>  it <span class="string"><span class="delimiter">'</span><span class="content">adds a find_or_create_by_name class method to classes that are extended by the module</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">18</span>    expect(<span class="constant">Person</span>).to respond_to(<span class="symbol">:find_or_create_by_name</span>)</span>
<span class="linenum">19</span>  <span class="keyword">end</span>
<span class="linenum">20</span><span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_43" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_43" class="passed">Artists and Genres being extended by Concerns::Findable</dt>
  </dl>
</div>
<div id="div_group_44" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_44" class="passed">Artist</dt>
    <script type="text/javascript">makeRed('div_group_44');</script>
    <script type="text/javascript">makeRed('example_group_44');</script>
    <script type="text/javascript">moveProgressBar('63.3');</script>
    <dd class="example failed">
      <span class="failed_spec_name">is extended by the Concerns::Findable module</span>
      <span class="duration">0.00023s</span>
      <div class="failure" id="failure_10">
        <div class="message"><pre>expected Artist to respond to :find_by_name</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:4:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">2</span>  context <span class="string"><span class="delimiter">'</span><span class="content">Artist</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">3</span>    it <span class="string"><span class="delimiter">'</span><span class="content">is extended by the Concerns::Findable module</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">4</span>      expect(<span class="constant">Artist</span>).to respond_to(<span class="symbol">:find_by_name</span>)</span>
<span class="linenum">5</span>      expect(<span class="constant">Artist</span>).to respond_to(<span class="symbol">:find_or_create_by_name</span>)
<span class="linenum">6</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_45" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_45" class="passed">.find_by_name</dt>
    <script type="text/javascript">makeRed('div_group_45');</script>
    <script type="text/javascript">makeRed('example_group_45');</script>
    <script type="text/javascript">moveProgressBar('64.7');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds an artist instance in @@all by the name property of the artist</span>
      <span class="duration">0.00017s</span>
      <div class="failure" id="failure_11">
        <div class="message"><pre>undefined method `find_by_name&#39; for Artist:Class</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:13:in `block (4 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">11</span>        artist.save
<span class="linenum">12</span>
<span class="offending"><span class="linenum">13</span>        expect(<span class="constant">Artist</span>.find_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">Neutral Milk Hotel</span><span class="delimiter">&quot;</span></span>)).to eq(artist)</span>
<span class="linenum">14</span>      <span class="keyword">end</span>
<span class="linenum">15</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_46" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_46" class="passed">.find_or_create_by_name</dt>
    <script type="text/javascript">makeRed('div_group_46');</script>
    <script type="text/javascript">makeRed('example_group_46');</script>
    <script type="text/javascript">moveProgressBar('66.1');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds or creates an artist by name maintaining uniqueness of objects by name property</span>
      <span class="duration">0.00048s</span>
      <div class="failure" id="failure_12">
        <div class="message"><pre>undefined method `find_or_create_by_name&#39; for Artist:Class</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:19:in `block (4 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">17</span>    describe <span class="string"><span class="delimiter">&quot;</span><span class="content">.find_or_create_by_name</span><span class="delimiter">&quot;</span></span> <span class="keyword">do</span>
<span class="linenum">18</span>      it <span class="string"><span class="delimiter">'</span><span class="content">finds or creates an artist by name maintaining uniqueness of objects by name property</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">19</span>        artist_1 = <span class="constant">Artist</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">Neutral Milk Hotel</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">20</span>        artist_2 = <span class="constant">Artist</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">Neutral Milk Hotel</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_47" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_47" class="passed">Genre</dt>
    <script type="text/javascript">makeRed('div_group_47');</script>
    <script type="text/javascript">makeRed('example_group_47');</script>
    <script type="text/javascript">moveProgressBar('67.6');</script>
    <dd class="example failed">
      <span class="failed_spec_name">is extended by the Concerns::Findable module</span>
      <span class="duration">0.00035s</span>
      <div class="failure" id="failure_13">
        <div class="message"><pre>expected Genre to respond to :find_by_name</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:28:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">26</span>  context <span class="string"><span class="delimiter">'</span><span class="content">Genre</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">27</span>    it <span class="string"><span class="delimiter">'</span><span class="content">is extended by the Concerns::Findable module</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">28</span>      expect(<span class="constant">Genre</span>).to respond_to(<span class="symbol">:find_by_name</span>)</span>
<span class="linenum">29</span>      expect(<span class="constant">Genre</span>).to respond_to(<span class="symbol">:find_or_create_by_name</span>)
<span class="linenum">30</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_48" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_48" class="passed">.find_by_name</dt>
    <script type="text/javascript">makeRed('div_group_48');</script>
    <script type="text/javascript">makeRed('example_group_48');</script>
    <script type="text/javascript">moveProgressBar('69.0');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds a genre instance in @@all by the name property of the genre</span>
      <span class="duration">0.00019s</span>
      <div class="failure" id="failure_14">
        <div class="message"><pre>undefined method `find_by_name&#39; for Genre:Class</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:37:in `block (4 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">35</span>        genre.save
<span class="linenum">36</span>
<span class="offending"><span class="linenum">37</span>        expect(<span class="constant">Genre</span>.find_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">indie rock</span><span class="delimiter">&quot;</span></span>)).to eq(genre)</span>
<span class="linenum">38</span>      <span class="keyword">end</span>
<span class="linenum">39</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_49" class="example_group passed">
  <dl style="margin-left: 30px;">
  <dt id="example_group_49" class="passed">.find_or_create_by_name</dt>
    <script type="text/javascript">makeRed('div_group_49');</script>
    <script type="text/javascript">makeRed('example_group_49');</script>
    <script type="text/javascript">moveProgressBar('70.4');</script>
    <dd class="example failed">
      <span class="failed_spec_name">finds or creates a genre by name maintaining uniqueness of objects by name property</span>
      <span class="duration">0.00018s</span>
      <div class="failure" id="failure_15">
        <div class="message"><pre>undefined method `find_or_create_by_name&#39; for Genre:Class</pre></div>
        <div class="backtrace"><pre>./spec/009_findable_artists_and_genres_spec.rb:43:in `block (4 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">41</span>    describe <span class="string"><span class="delimiter">&quot;</span><span class="content">.find_or_create_by_name</span><span class="delimiter">&quot;</span></span> <span class="keyword">do</span>
<span class="linenum">42</span>      it <span class="string"><span class="delimiter">'</span><span class="content">finds or creates a genre by name maintaining uniqueness of objects by name property</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">43</span>        genre_1 = <span class="constant">Genre</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">indie rock</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">44</span>        genre_2 = <span class="constant">Genre</span>.find_or_create_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">indie rock</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_50" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_50" class="passed">MusicImporter</dt>
  </dl>
</div>
<div id="div_group_51" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_51" class="passed">#initialize</dt>
    <script type="text/javascript">makeRed('div_group_51');</script>
    <script type="text/javascript">makeRed('example_group_51');</script>
    <script type="text/javascript">moveProgressBar('71.8');</script>
    <dd class="example failed">
      <span class="failed_spec_name">accepts a file path to parse mp3 files from</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_16">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:7:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">5</span>    it <span class="string"><span class="delimiter">'</span><span class="content">accepts a file path to parse mp3 files from</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">6</span>      test_music_path = <span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>
<span class="offending"><span class="linenum">7</span>      music_importer = <span class="constant">MusicImporter</span>.new(test_music_path)</span>
<span class="linenum">8</span>
<span class="linenum">9</span>      expect(music_importer.path).to eq(test_music_path)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_52" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_52" class="passed">#files</dt>
    <script type="text/javascript">makeRed('div_group_52');</script>
    <script type="text/javascript">makeRed('example_group_52');</script>
    <script type="text/javascript">moveProgressBar('73.2');</script>
    <dd class="example failed">
      <span class="failed_spec_name">loads all the mp3 files in the path directory</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_17">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:16:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">14</span>    it <span class="string"><span class="delimiter">'</span><span class="content">loads all the mp3 files in the path directory</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">15</span>      test_music_path = <span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>
<span class="offending"><span class="linenum">16</span>      music_importer = <span class="constant">MusicImporter</span>.new(test_music_path)</span>
<span class="linenum">17</span>
<span class="linenum">18</span>      expect(music_importer.files.size).to eq(<span class="integer">4</span>)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('74.6');</script>
    <dd class="example failed">
      <span class="failed_spec_name">normalizes the filename to just the mp3 filename with no path</span>
      <span class="duration">0.00029s</span>
      <div class="failure" id="failure_18">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:23:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">21</span>    it <span class="string"><span class="delimiter">'</span><span class="content">normalizes the filename to just the mp3 filename with no path</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">22</span>      test_music_path = <span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>
<span class="offending"><span class="linenum">23</span>      music_importer = <span class="constant">MusicImporter</span>.new(test_music_path)</span>
<span class="linenum">24</span>
<span class="linenum">25</span>      expect(music_importer.files).to include(<span class="string"><span class="delimiter">&quot;</span><span class="content">Action Bronson - Larry Csonka - indie.mp3</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_53" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_53" class="passed">Making Songs from filenames</dt>
  </dl>
</div>
<div id="div_group_54" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_54" class="passed">Song.new_from_filename</dt>
    <script type="text/javascript">makeRed('div_group_54');</script>
    <script type="text/javascript">makeRed('example_group_54');</script>
    <script type="text/javascript">moveProgressBar('76.0');</script>
    <dd class="example failed">
      <span class="failed_spec_name">initializes a song based on the filename delimiters</span>
      <span class="duration">0.00022s</span>
      <div class="failure" id="failure_19">
        <div class="message"><pre>undefined method `new_from_filename&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:36:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">34</span>  describe <span class="string"><span class="delimiter">'</span><span class="content">Song.new_from_filename</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">35</span>    it <span class="string"><span class="delimiter">'</span><span class="content">initializes a song based on the filename delimiters</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">36</span>      song = <span class="constant">Song</span>.new_from_filename(<span class="string"><span class="delimiter">&quot;</span><span class="content">Thundercat - For Love I Come - dance.mp3</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">37</span>
<span class="linenum">38</span>      expect(song.name).to eq(<span class="string"><span class="delimiter">&quot;</span><span class="content">For Love I Come</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('77.4');</script>
    <dd class="example failed">
      <span class="failed_spec_name">maintains unique objects</span>
      <span class="duration">0.00025s</span>
      <div class="failure" id="failure_20">
        <div class="message"><pre>undefined method `new_from_filename&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:47:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">45</span>      genre = <span class="constant">Genre</span>.create(<span class="string"><span class="delimiter">&quot;</span><span class="content">dance</span><span class="delimiter">&quot;</span></span>)
<span class="linenum">46</span>
<span class="offending"><span class="linenum">47</span>      song = <span class="constant">Song</span>.new_from_filename(<span class="string"><span class="delimiter">&quot;</span><span class="content">Thundercat - For Love I Come - dance.mp3</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">48</span>      expect(song.artist).to eq(artist)
<span class="linenum">49</span>      expect(song.genre).to eq(genre)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_55" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_55" class="passed">Song.create_from_filename</dt>
    <script type="text/javascript">makeRed('div_group_55');</script>
    <script type="text/javascript">makeRed('example_group_55');</script>
    <script type="text/javascript">moveProgressBar('78.8');</script>
    <dd class="example failed">
      <span class="failed_spec_name">initializes and saves a song based on the filename delimiters</span>
      <span class="duration">0.00021s</span>
      <div class="failure" id="failure_21">
        <div class="message"><pre>undefined method `create_from_filename&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:55:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">53</span>  describe <span class="string"><span class="delimiter">'</span><span class="content">Song.create_from_filename</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">54</span>    it <span class="string"><span class="delimiter">'</span><span class="content">initializes and saves a song based on the filename delimiters</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">55</span>      song = <span class="constant">Song</span>.create_from_filename(<span class="string"><span class="delimiter">&quot;</span><span class="content">Thundercat - For Love I Come - dance.mp3</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">56</span>
<span class="linenum">57</span>      expect(song).to eq(<span class="constant">Song</span>.find_by_name(<span class="string"><span class="delimiter">&quot;</span><span class="content">For Love I Come</span><span class="delimiter">&quot;</span></span>))</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('80.2');</script>
    <dd class="example failed">
      <span class="failed_spec_name">maintains unique objects</span>
      <span class="duration">0.00019s</span>
      <div class="failure" id="failure_22">
        <div class="message"><pre>undefined method `create_from_filename&#39; for Song:Class</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:66:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">64</span>      genre = <span class="constant">Genre</span>.create(<span class="string"><span class="delimiter">&quot;</span><span class="content">dance</span><span class="delimiter">&quot;</span></span>)
<span class="linenum">65</span>
<span class="offending"><span class="linenum">66</span>      song = <span class="constant">Song</span>.create_from_filename(<span class="string"><span class="delimiter">&quot;</span><span class="content">Thundercat - For Love I Come - dance.mp3</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">67</span>      expect(song.artist).to eq(artist)
<span class="linenum">68</span>      expect(song.genre).to eq(genre)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_56" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_56" class="passed">MusicImporter#import</dt>
    <script type="text/javascript">makeRed('div_group_56');</script>
    <script type="text/javascript">makeRed('example_group_56');</script>
    <script type="text/javascript">moveProgressBar('81.6');</script>
    <dd class="example failed">
      <span class="failed_spec_name">imports the files into the library by creating songs from a filename</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_23">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/010_music_importer_spec.rb:76:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">74</span>  it <span class="string"><span class="delimiter">'</span><span class="content">imports the files into the library by creating songs from a filename</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">75</span>    test_music_path = <span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>
<span class="offending"><span class="linenum">76</span>    music_importer = <span class="constant">MusicImporter</span>.new(test_music_path)</span>
<span class="linenum">77</span>    music_importer.import</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_57" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_57" class="passed">MusicLibraryController</dt>
  </dl>
</div>
<div id="div_group_58" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_58" class="passed">#initialize</dt>
    <script type="text/javascript">makeRed('div_group_58');</script>
    <script type="text/javascript">makeRed('example_group_58');</script>
    <script type="text/javascript">moveProgressBar('83.0');</script>
    <dd class="example failed">
      <span class="failed_spec_name">accepts a path to import music</span>
      <span class="duration">0.00464s</span>
      <div class="failure" id="failure_24">
        <div class="message"><pre>expected no Exception, got #&lt;NameError: uninitialized constant MusicLibraryController&gt; with backtrace:
  # ./spec/011_music_library_controller_spec.rb:6:in `block (4 levels) in &lt;top (required)&gt;&#39;
  # ./spec/011_music_library_controller_spec.rb:6:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:6:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">4</span>  describe <span class="string"><span class="delimiter">'</span><span class="content">#initialize</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">5</span>    it <span class="string"><span class="delimiter">'</span><span class="content">accepts a path to import music</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">6</span>      expect{<span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">'</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">'</span></span>)}.to_not raise_error</span>
<span class="linenum">7</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('84.5');</script>
    <dd class="example failed">
      <span class="failed_spec_name">the path argument defaults to ./db/mp3s</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_25">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:10:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">8</span>
<span class="linenum">9</span>    it <span class="string"><span class="delimiter">'</span><span class="content">the path argument defaults to ./db/mp3s</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">10</span>      expect(<span class="constant">MusicImporter</span>).to receive(<span class="symbol">:new</span>).with(<span class="string"><span class="delimiter">'</span><span class="content">./db/mp3s</span><span class="delimiter">'</span></span>).and_return(<span class="constant">MusicImporter</span>.new(<span class="string"><span class="delimiter">'</span><span class="content">./db/mp3s</span><span class="delimiter">'</span></span>))</span>
<span class="linenum">11</span>      <span class="constant">MusicLibraryController</span>.new
<span class="linenum">12</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('85.9');</script>
    <dd class="example failed">
      <span class="failed_spec_name">creates a MusicImporter with that path and imports the music</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_26">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:15:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">13</span>
<span class="linenum">14</span>    it <span class="string"><span class="delimiter">'</span><span class="content">creates a MusicImporter with that path and imports the music</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">15</span>      music_importer = <span class="constant">MusicImporter</span>.new(<span class="string"><span class="delimiter">'</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">'</span></span>)</span>
<span class="linenum">16</span>      expect(<span class="constant">MusicImporter</span>).to receive(<span class="symbol">:new</span>).with(<span class="string"><span class="delimiter">'</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">'</span></span>).and_return(music_importer)
<span class="linenum">17</span>      expect(music_importer).to receive(<span class="symbol">:import</span>)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('87.3');</script>
    <dd class="example failed">
      <span class="failed_spec_name">populates Song, Artist, and Genre</span>
      <span class="duration">0.00013s</span>
      <div class="failure" id="failure_27">
        <div class="message"><pre>uninitialized constant MusicImporter</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:23:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">21</span>
<span class="linenum">22</span>    it <span class="string"><span class="delimiter">'</span><span class="content">populates Song, Artist, and Genre</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">23</span>      music_importer = <span class="constant">MusicImporter</span>.new(<span class="string"><span class="delimiter">'</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">'</span></span>)</span>
<span class="linenum">24</span>      expect(<span class="constant">MusicImporter</span>).to receive(<span class="symbol">:new</span>).with(<span class="string"><span class="delimiter">'</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">'</span></span>).and_return(music_importer)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_59" class="example_group passed">
  <dl style="margin-left: 15px;">
  <dt id="example_group_59" class="passed">#call</dt>
    <script type="text/javascript">makeRed('div_group_59');</script>
    <script type="text/javascript">makeRed('example_group_59');</script>
    <script type="text/javascript">moveProgressBar('88.7');</script>
    <dd class="example failed">
      <span class="failed_spec_name">responds to a call method to start the CLI</span>
      <span class="duration">0.00015s</span>
      <div class="failure" id="failure_28">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:35:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">33</span>  describe <span class="string"><span class="delimiter">'</span><span class="content">#call</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="linenum">34</span>    it <span class="string"><span class="delimiter">'</span><span class="content">responds to a call method to start the CLI</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">35</span>      expect(<span class="constant">MusicLibraryController</span>.new).to respond_to(<span class="symbol">:call</span>)</span>
<span class="linenum">36</span>    <span class="keyword">end</span></code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('90.1');</script>
    <dd class="example failed">
      <span class="failed_spec_name">asks the user for input at some point</span>
      <span class="duration">0.00025s</span>
      <div class="failure" id="failure_29">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:39:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">37</span>
<span class="linenum">38</span>    it <span class="string"><span class="delimiter">'</span><span class="content">asks the user for input at some point</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">39</span>      music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">40</span>
<span class="linenum">41</span>      expect(music_library_controller).to receive(<span class="symbol">:gets</span>).and_return(<span class="string"><span class="delimiter">&quot;</span><span class="content">exit</span><span class="delimiter">&quot;</span></span>)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('91.5');</script>
    <dd class="example failed">
      <span class="failed_spec_name">loops and asks for user input until they type in exit</span>
      <span class="duration">0.00029s</span>
      <div class="failure" id="failure_30">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/011_music_library_controller_spec.rb:46:in `block (3 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">44</span>
<span class="linenum">45</span>    it <span class="string"><span class="delimiter">'</span><span class="content">loops and asks for user input until they type in exit</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">46</span>      music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">47</span>      expect(music_library_controller).to receive(<span class="symbol">:gets</span>).and_return(<span class="string"><span class="delimiter">&quot;</span><span class="content">a</span><span class="delimiter">&quot;</span></span>, <span class="string"><span class="delimiter">&quot;</span><span class="content">b</span><span class="delimiter">&quot;</span></span>, <span class="string"><span class="delimiter">&quot;</span><span class="content">exit</span><span class="delimiter">&quot;</span></span>)
<span class="linenum">48</span>      music_library_controller.call</code></pre>
      </div>
    </dd>
  </dl>
</div>
<div id="div_group_60" class="example_group passed">
  <dl style="margin-left: 0px;">
  <dt id="example_group_60" class="passed">Music Library CLI</dt>
    <script type="text/javascript">makeRed('div_group_60');</script>
    <script type="text/javascript">makeRed('example_group_60');</script>
    <script type="text/javascript">moveProgressBar('92.9');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to list songs</span>
      <span class="duration">0.00022s</span>
      <div class="failure" id="failure_31">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:4:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">2</span>
<span class="linenum">3</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to list songs</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">4</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">5</span>
<span class="linenum">6</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('94.3');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to list artists</span>
      <span class="duration">0.00033s</span>
      <div class="failure" id="failure_32">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:18:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">16</span>
<span class="linenum">17</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to list artists</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">18</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">19</span>
<span class="linenum">20</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('95.7');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to list genres</span>
      <span class="duration">0.00028s</span>
      <div class="failure" id="failure_33">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:31:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">29</span>
<span class="linenum">30</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to list genres</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">31</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">32</span>
<span class="linenum">33</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('97.1');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to play a song</span>
      <span class="duration">0.00035s</span>
      <div class="failure" id="failure_34">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:45:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">43</span>
<span class="linenum">44</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to play a song</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">45</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">46</span>
<span class="linenum">47</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('98.5');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to list an artist&#39;s songs</span>
      <span class="duration">0.00041s</span>
      <div class="failure" id="failure_35">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:56:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">54</span>
<span class="linenum">55</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to list an artist</span><span class="char">\'</span><span class="content">s songs</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">56</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">57</span>
<span class="linenum">58</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
    <script type="text/javascript">moveProgressBar('100.0');</script>
    <dd class="example failed">
      <span class="failed_spec_name">allows a user to list a genre&#39;s songs</span>
      <span class="duration">0.00021s</span>
      <div class="failure" id="failure_36">
        <div class="message"><pre>uninitialized constant MusicLibraryController</pre></div>
        <div class="backtrace"><pre>./spec/012_musiclibrary_cli_spec.rb:68:in `block (2 levels) in &lt;top (required)&gt;&#39;</pre></div>
    <pre class="ruby"><code><span class="linenum">66</span>
<span class="linenum">67</span>  it <span class="string"><span class="delimiter">'</span><span class="content">allows a user to list a genre</span><span class="char">\'</span><span class="content">s songs</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
<span class="offending"><span class="linenum">68</span>    music_library_controller = <span class="constant">MusicLibraryController</span>.new(<span class="string"><span class="delimiter">&quot;</span><span class="content">./spec/fixtures/mp3s</span><span class="delimiter">&quot;</span></span>)</span>
<span class="linenum">69</span>
<span class="linenum">70</span>    expect(<span class="constant">MusicLibraryController</span>).to receive(<span class="symbol">:new</span>).and_return(music_library_controller)</code></pre>
      </div>
    </dd>
  </dl>
</div>
<script type="text/javascript">document.getElementById('duration').innerHTML = "Finished in <strong>0.66710 seconds</strong>";</script>
<script type="text/javascript">document.getElementById('totals').innerHTML = "71 examples, 36 failures";</script>
</div>
</div>
</body>
</html>

<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1352426608265" ID="ID_1423441374" MODIFIED="1352426611703" TEXT="Chapter 10. Scripts and Streams">
<node CREATED="1352426721546" FOLDED="true" ID="ID_632434760" MODIFIED="1362103234875" POSITION="right" TEXT="10.1. Abstracting input sources">
<node CREATED="1352942326781" ID="ID_419701935" MODIFIED="1352943535312">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      One of Python's greatest strengths is its dynamic binding, and one powerful use of dynamic binding is the file&#8722;like object.
    </p>
    <p>
      Many functions which require an input source could simply take a filename, go open the file for reading, read it, and close it when they're done. But they don't. Instead, they take a file&#8722;like object.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      Python&#30340;&#26368;&#24378;&#22823;&#30340;&#21151;&#33021;&#20043;&#19968;&#23601;&#26159;&#21160;&#24577;&#32465;&#23450;&#65292;&#20854;&#20013;&#26368;&#26377;&#21147;&#30340;&#20351;&#29992;&#20043;&#19968;&#23601;&#26159;&#25991;&#20214;&#20687;&#23545;&#35937;(the file-like object)&#30340;&#21160;&#24577;&#32465;&#23450;&#20351;&#29992;&#12290;
    </p>
    <p>
      &#24456;&#22810;&#21151;&#33021;&#38656;&#35201;&#36755;&#20837;&#28304;&#26159;&#19968;&#20010;&#31616;&#21333;&#30340;&#25991;&#20214;&#65292;&#25171;&#24320;&#25991;&#20214;&#20934;&#22791;&#35835;&#65292;&#35835;&#21462;&#65292;&#20851;&#38381;&#25991;&#20214;&#12290;&#20294;&#19981;&#33021;&#26367;&#25442;&#65292;&#22240;&#20026;&#20182;&#20204;&#20351;&#29992;&#30340;&#25991;&#20214;&#23545;&#35937;(file-like object)&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352943170843" ID="ID_38550085" MODIFIED="1352943794765">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      In the simplest case, a file&#8722;like object is any object with a read method with an optional size parameter, which returns a string. When called with no size parameter, it reads everything there is to read from the input source and returns all the data as a single string. When called with a size parameter, it reads that much from the input source and returns that much data; when called again, it picks up where it left off and returns the next chunk of data.
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#36825;&#20010;&#26368;&#31616;&#21333;&#30340;&#20363;&#23376;&#20013;&#65292;file-like object &#26159;&#24453;&#19968;&#20010;&#21487;&#36873;{optional} &#22823;&#23567;&#30340;&#21442;&#25968;&#30340;&#35835;&#26041;&#27861;&#65292;&#29992;&#26469;&#36820;&#22238;&#19968;&#20010;&#23383;&#31526;&#20018;&#12290;&#24403;&#20351;&#29992;&#26080;&#21442;&#25968;&#30340;&#26041;&#27861;&#26102;&#65292;&#23427;&#35835;&#21462;&#20840;&#37096;&#30340;&#36755;&#20837;&#28304;&#20869;&#23481;&#24182;&#36820;&#22238;&#20840;&#37096;&#25968;&#25454;&#20316;&#20026;&#19968;&#20010;&#23383;&#31526;&#20018;;&#24403;&#20351;&#29992;&#26377;&#22823;&#23567;&#35201;&#27714;&#21442;&#25968;&#30340;&#26041;&#27861;&#26102;&#65292;&#23427;&#35835;&#21462;&#19968;&#20123;&#36755;&#20837;&#28304;&#24182;&#36820;&#22238;&#19968;&#20123;&#25968;&#25454;&#65292;&#24403;&#20877;&#27425;&#35843;&#29992;&#26102;&#65292;&#23427;&#20174;&#19978;&#27425;&#31163;&#24320;&#30340;&#20301;&#32622;&#32487;&#32493;&#35835;&#21462;{pick up}&#24182;&#36820;&#22238; &#19979;&#19968;&#22359;{chunk}&#25968;&#25454;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352943930234" ID="ID_910438722" MODIFIED="1352944535171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      This is how reading from real files works; the difference is that you're not limiting yourself to real files. The input source could be anything: a file on disk, a web page, even a hard&#8722;coded string. As long as you pass a file&#8722;like object to the function, and the function simply calls the object's read method, the function can handle any kind of input source without specific code to handle each kind.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#23601;&#26159;&#22914;&#20309;&#20174;&#30495;&#23454;&#25991;&#20214;&#35835;&#21462;&#30340;&#24037;&#20316;:&#24046;&#21035;&#20043;&#22788;{the difference} &#26159;&#20320;&#27809;&#26377;&#34987;&#38480;&#21046;&#21482;&#35835;&#21462;&#30495;&#23454;&#30340;&#25991;&#20214;&#12290;&#36755;&#20837;&#28304;&#21487;&#20197;&#26159;&#20219;&#20309;&#26041;&#24335;:&#30913;&#30424;&#19978;&#30340;&#25991;&#20214;&#65292;&#19968;&#20010;web &#39029;&#38754;&#65292;&#29978;&#33267;&#26159;&#30828;&#32534;&#30721;&#27969;&#12290;&#22914;&#26524;&#20320;&#20256;&#36825;&#26679;&#30340;file-like object &#21040;&#26041;&#27861;&#20013;&#65292;&#27492;&#26041;&#27861;&#21482;&#35843;&#29992;&#23545;&#35937;&#30340;&#35835;&#26041;&#27861;&#65292;&#27492;&#26041;&#27861;&#21487;&#20197;&#22788;&#29702;&#20219;&#20309;&#31867;&#22411;&#30340;&#36755;&#20837;&#28304;&#65292;&#27809;&#26377;&#20160;&#20040;&#29305;&#27530;&#30340;&#20195;&#30721;&#22788;&#29702;&#19981;&#21516;&#30340;&#31867;&#22411;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352944588234" ID="ID_1193752790" MODIFIED="1353460357843">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      In case you were wondering how this relates to XML processing, minidom.parse is one such function which can take a file&#8722;like object.
    </p>
    <p>
      [pope&#35793;] &#22312;&#36825;&#20010;&#20363;&#23376;&#20013;&#20320;&#21487;&#33021;&#22855;&#24618;{wondering}&#22914;&#20309;&#20851;&#32852;&#21040;{relates}xml&#36807;&#31243;&#30340;, minidom.parse &#26159;&#19968;&#20010;&#21487;&#20197;&#24102;file-like object&#30340;&#26041;&#27861;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353460557156" ID="ID_1062552299" MODIFIED="1355880995812" TEXT="Example 10.1. Parsing XML from a file">
<node CREATED="1353460562046" ID="ID_1291632617" MODIFIED="1353460690593">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      &gt;&gt;&gt; from xml.dom import minidom
    </p>
    <p>
      &gt;&gt;&gt; fsock = open('binary.xml') ----------------------------------------------------1
    </p>
    <p>
      &gt;&gt;&gt; xmldoc = minidom.parse(fsock)--------------------------------------------2
    </p>
    <p>
      &gt;&gt;&gt; fsock.close()----------------------------------------------------------------------3
    </p>
    <p>
      &gt;&gt;&gt; print xmldoc.toxml()-------------------------------------------------------------4
    </p>
    <p>
      &lt;?xml version=&quot;1.0&quot; ?&gt;
    </p>
    <p>
      &lt;grammar&gt;
    </p>
    <p>
      &lt;ref id=&quot;bit&quot;&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;0&lt;/p&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;1&lt;/p&gt;
    </p>
    <p>
      &lt;/ref&gt;
    </p>
    <p>
      &lt;ref id=&quot;byte&quot;&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;\
    </p>
    <p>
      &lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;/p&gt;
    </p>
    <p>
      &lt;/ref&gt;
    </p>
    <p>
      &lt;/grammar&gt;
    </p>
  </body>
</html></richcontent>
<node CREATED="1353460694203" ID="ID_1728923776" MODIFIED="1353461061718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1P138
    </p>
    <p>
      [&#21407;&#25991;]First, you open the file on disk. This gives you a file object
    </p>
    <p>
      [pope&#35793;] &#39318;&#20808;&#65292;&#20320;&#25171;&#24320;&#30913;&#30424;&#19978;&#27492;&#25991;&#20214;&#12290;&#36825;&#32473;&#20320;&#19968;&#20010;&#25991;&#20214;&#23545;&#35937;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353461064218" ID="ID_1698075307" MODIFIED="1353461217718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.P138
    </p>
    <p>
      [&#21407;&#25991;]You pass the file object to minidom.parse, which calls the read method of fsock and reads the XML document from the file on disk.
    </p>
    <p>
      [pope&#35793;]&#20256;&#36882;&#27492;&#25991;&#20214;&#23545;&#35937;&#21040;minidom.parse&#20013;&#65292;&#35843;&#29992;fsock&#30340;&#35835;&#26041;&#27861; &#24182;&#19988; &#20174;&#30913;&#30424;&#19978;&#35835;&#21462;xml&#25991;&#26723;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353461302578" ID="ID_1999933975" MODIFIED="1353461398031">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.P138
    </p>
    <p>
      [&#21407;&#25991;]Be sure to call the close method of the file object after you're done with it. minidom.parse will not do this for you
    </p>
    <p>
      [pope&#35793;] &#22312;&#20320;&#29992;&#23436;&#20182;&#20043;&#21518;&#35843;&#29992;close &#26041;&#27861;&#12290; minidom.parse &#21487;&#19981;&#20026;&#20320;&#20570;&#36825;&#20010; :)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353461437593" ID="ID_37263483" MODIFIED="1353461548781">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4.P138
    </p>
    <p>
      [&#21407;&#25991;]Calling the toxml() method on the returned XML document prints out the entire thing
    </p>
    <p>
      [pope&#35793;] &#35843;&#29992;toxml()&#26041;&#27861; &#25171;&#21360;xml&#25991;&#26723;&#20840;&#37096;{entire}&#20869;&#23481;.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1353461722453" ID="ID_1695641655" MODIFIED="1353462603890">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P138
    </p>
    <p>
      Well, that all seems like a colossal waste of time. After all, you've already seen that minidom.parse can simply take the filename and do all the opening and closing nonsense automatically. And it's true that if you know you're just going to be parsing a local file, you can pass the filename and minidom.parse is smart enough to Do The Right Thing(tm). But notice how similar &#8722;&#8722; and easy &#8722;&#8722; it is to parse an XML document straight from the Internet.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24456;&#22909;&#65292;&#29616;&#22312;&#30475;&#26469;&#20687;&#26159;&#24040;&#22823;&#30340;{colossal}&#28010;&#36153;&#26102;&#38388;&#12290;&#29616;&#22312;&#20320;&#30475;&#21040;minidom.parse&#20165;&#21487;&#20197;&#33719;&#24471;&#24050;&#32463;&#25171;&#24320;&#30340;&#25991;&#20214;&#65292;&#20063;&#19981;&#33021;&#33258;&#21160;&#20851;&#38381; &#12290;&#22914;&#26524;&#20320;&#30693;&#36947;&#20320;&#21482;&#26159;&#35821;&#27861;&#20998;&#26512;&#26412;&#22320;&#25991;&#20214;&#65292;&#20320;&#23601;&#26356;&#30830;&#23450;&#20102;&#36825;&#20010;&#28010;&#36153;&#26102;&#38388;&#20102;:).&#20320;&#21487;&#20197;&#20256;&#36882;&#25991;&#20214;&#21517; &#21040; minidom.parse &#20013;&#36275;&#22815;&#28418;&#20142;&#30340;{smart}&#20570;&#21516;&#26679;&#30340;&#20107;(tm).&#20294;&#26159;&#27880;&#24847;&#20102; &#23427;&#21487;&#20197;&#20351;&#29992;&#22914;&#27492;&#30340;&#31616;&#21333;&#26041;&#24335;&#22788;&#29702;&#26469;&#33258;&#20110;{straight}&#32593;&#32476;&#19978;&#30340;xml&#25991;&#20214;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353462993843" ID="ID_258106324" MODIFIED="1353462995562" TEXT="Example 10.2. Parsing XML from a URL">
<node CREATED="1353462997078" ID="ID_382959460" MODIFIED="1353463077484">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      &gt;&gt;&gt; import urllib
    </p>
    <p>
      &gt;&gt;&gt; usock = urllib.urlopen('http://slashdot.org/slashdot.rdf')----1
    </p>
    <p>
      &gt;&gt;&gt; xmldoc = minidom.parse(usock)----------------------------------2
    </p>
    <p>
      &gt;&gt;&gt; usock.close()------------------------------------------------------------3
    </p>
    <p>
      &gt;&gt;&gt; print xmldoc.toxml()----------------------------------------------------4
    </p>
    <p>
      &lt;?xml version=&quot;1.0&quot; ?&gt;
    </p>
    <p>
      &lt;rdf:RDF xmlns=&quot;http://my.netscape.com/rdf/simple/0.9/&quot;
    </p>
    <p>
      &#160;xmlns:rdf=&quot;http://www.w3.org/1999/02/22&#8722;rdf&#8722;syntax&#8722;ns#&quot;&gt;
    </p>
    <p>
      &lt;channel&gt;
    </p>
    <p>
      &lt;title&gt;Slashdot&lt;/title&gt;
    </p>
    <p>
      &lt;link&gt;http://slashdot.org/&lt;/link&gt;
    </p>
    <p>
      &lt;description&gt;News for nerds, stuff that matters&lt;/description&gt;
    </p>
    <p>
      &lt;/channel&gt;
    </p>
    <p>
      &lt;image&gt;
    </p>
    <p>
      &lt;title&gt;Slashdot&lt;/title&gt;
    </p>
    <p>
      &lt;url&gt;http://images.slashdot.org/topics/topicslashdot.gif&lt;/url&gt;
    </p>
    <p>
      &lt;link&gt;http://slashdot.org/&lt;/link&gt;
    </p>
    <p>
      &lt;/image&gt;
    </p>
    <p>
      &lt;item&gt;
    </p>
    <p>
      &lt;title&gt;To HDTV or Not to HDTV?&lt;/title&gt;
    </p>
    <p>
      &lt;link&gt;http://slashdot.org/article.pl?sid=01/12/28/0421241&lt;/link&gt;
    </p>
    <p>
      &lt;/item&gt;
    </p>
    <p>
      [...snip...]
    </p>
  </body>
</html></richcontent>
<node CREATED="1353463081437" ID="ID_848058201" MODIFIED="1353633874656">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      As you saw in a previous chapter, urlopen takes a web page URL and returns a file&#8722;like object. Most importantly, this object has a read method which returns the HTML source of the web page
    </p>
    <p>
      [pope&#35793;]&#20687;&#20320;&#22312;&#21069;&#31456;&#30475;&#21040;&#30340;&#65292;urlopen&#25171;&#24320;&#19968;&#20010;URL &#30340;web&#39029;&#38754; &#24182;&#36820;&#22238;file-like &#23545;&#35937;&#12290;&#26356;&#37325;&#35201;&#30340;&#26159;&#27492;&#23545;&#35937;&#26377;&#19968;&#20010;&#36820;&#22238;web&#39029;&#38754;HTML&#28304;&#30721;&#30340;&#35835;&#26041;&#27861;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353634120640" ID="ID_1227391863" MODIFIED="1353634989421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      Now you pass the file&#8722;like object to minidom.parse, which obediently calls the read method of the object and parses the XML data that the read method returns. The fact that this XML data is now coming straight from a web page is completely irrelevant. minidom.parse doesn't know about web pages, and it doesn't care about web pages; it just knows about file&#8722;like objects.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#20256;&#36882;&#27492;file-like &#23545;&#35937;&#21040;minidom.parse,&#23427;&#39034;&#21183;{obediently} &#35843;&#29992;&#23545;&#35937;&#30340;&#35835;&#26041;&#27861; &#24182;&#19988; &#35821;&#27861;&#20998;&#26512; &#27492;&#35835;&#26041;&#27861;&#36820;&#22238;&#30340;xml&#25968;&#25454;&#12290; &#23454;&#38469;&#19978;&#36825;&#19982;&#26159;&#21542;&#26469;&#33258;web&#39029;&#38754;&#30340;xml &#25968;&#25454;&#27809;&#26377;&#19968;&#28857;&#20851;&#31995;{irrelevant}&#12290;minidom.parse &#19981;&#30693;&#36947;&#26377;web&#39029;&#38754;&#65292;&#23427;&#20063;&#19981;&#20851;&#24515;web&#39029;&#38754;&#65307;&#23427;&#21482;&#30693;&#36947;file-like &#23545;&#35937;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353635060109" ID="ID_166268089" MODIFIED="1353635191046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      As soon as you're done with it, be sure to close the file&#8722;like object that urlopen gives you.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#19968;&#26086;(as soon as)&#20320;&#23436;&#20840;&#35201;&#27714;&#20570;&#30340;,&#23601;&#26126;&#30830; &#20851;&#38381; urlopen &#20256;&#32473;&#20320;&#30340;file-like &#23545;&#35937;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1353635341062" ID="ID_664028825" MODIFIED="1353635836265">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      By the way, this URL is real, and it really is XML. It's an XML representation of the current headlines on Slashdot (http://slashdot.org/), a technical news and gossip site.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#39034;&#20415;&#35828;&#19968;&#19979;&#65292;&#36825;&#20010;url&#26159;&#30495;&#23454;&#23384;&#22312;&#30340;&#65292;&#23427;&#30830;&#23454;&#26159;&#19968;&#20010;xml&#12290;&#36825;&#26159;&#19968;&#20010;Slashdot(http://slashdot.org/) &#32593;&#31449;&#24403;&#21069;&#30340;&#26032;&#38395;&#25552;&#35201;{headlines} &#30340;xml &#25551;&#36848;{repersentation},&#20851;&#20110;&#25216;&#26415;&#26032;&#38395;&#21644;&#20843;&#21350;&#32593;&#31449;{gossip site}.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1353636266828" ID="ID_233420865" MODIFIED="1353636268421" TEXT="Example 10.3. Parsing XML from a string (the easy but inflexible way)">
<node CREATED="1353636280734" ID="ID_1891196405" MODIFIED="1353636300218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      &gt;&gt;&gt; contents = &quot;&lt;grammar&gt;&lt;ref id='bit'&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;&quot;
    </p>
    <p>
      &gt;&gt;&gt; xmldoc = minidom.parseString(contents) ---------------------------------------------------1
    </p>
    <p>
      &gt;&gt;&gt; print xmldoc.toxml()
    </p>
    <p>
      &lt;?xml version=&quot;1.0&quot; ?&gt;
    </p>
    <p>
      &lt;grammar&gt;&lt;ref id=&quot;bit&quot;&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;
    </p>
  </body>
</html></richcontent>
<node CREATED="1353636314796" ID="ID_236694192" MODIFIED="1354152521953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      minidom has a method, parseString, which takes an entire XML document as a string and parses it. You can use this instead of minidom.parse if you know you already have your entire XML document in a string.
    </p>
    <p>
      [pope&#35793;] minidom &#26377;&#19968;&#20010;&#26041;&#27861;&#65292;parseString,&#23427;&#22788;&#29702;&#20316;&#20026;&#19968;&#20010;&#23383;&#31526;&#20018;&#30340;&#25972;&#20010;{entire}xml&#25991;&#26412; &#36827;&#34892;&#35821;&#27861;&#20998;&#26512;&#12290;&#22312;&#20320;&#26377;&#35201;&#22788;&#29702;&#30340;&#20840;&#37096;(entire)xml&#25991;&#26723; &#20026;&#19968;&#20010;&#23383;&#31526;&#20018;&#26102;&#65292;&#20320;&#21487;&#20197;&#29992;&#23427; &#20195;&#26367; minidom.parse &#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1354152703046" ID="ID_289117638" MODIFIED="1354153224000">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      OK, so you can use the minidom.parse function for parsing both local files and remote URLs, but for parsing strings, you use... a different function. That means that if you want to be able to take input from a file, a URL, or a string, you'll need special logic to check whether it's a string, and call the parseString function instead.&#160;How unsatisfying.
    </p>
    <p>
      [pope&#35793;]&#25152;&#20197;&#23545;&#26412;&#22320;&#25991;&#20214;&#25110;urls&#22320;&#22336;&#20869;&#23481; &#20320;&#21487;&#20197;&#29992; minidom.parse &#65292;&#20294;&#20998;&#26512;&#23383;&#31526;&#20018;&#65292;&#20320;&#35201;&#29992;&#20010;&#19981;&#21516;&#30340;&#20989;&#25968;&#12290;&#36825;&#24847;&#21619;&#30528;&#22914;&#26524;&#20320;&#24819;&#22788;&#29702;&#19968;&#20010;&#25991;&#20214;&#65292;&#19968;&#20010;url &#25110;&#32773;&#19968;&#20010;&#23383;&#31526;&#20018;&#65292;&#20320;&#38656;&#35201;&#29305;&#21035;&#30340;&#36923;&#36753;(logic) &#26816;&#26597;&#23427;&#26159;&#21542;&#26159;&#23383;&#31526;&#20018;&#65292;&#22914;&#26524;&#26159; &#35201;&#20351;&#29992; parseString.
    </p>
    <p>
      &#26377;&#28857;&#20799;&#40635;&#28902;{how unsatisfying}.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1354153315921" ID="ID_1027895278" MODIFIED="1354153546562">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P139
    </p>
    <p>
      If there were a way to turn a string into a file&#8722;like object, then you could simply pass this object to minidom.parse. And in fact, there is a module specifically designed for doing just that: StringIO.
    </p>
    <p>
      [pope&#35793;] &#22914;&#26524;&#26377;&#26041;&#27861;&#25226;&#23383;&#31526;&#20018;&#36716;&#25442;&#25104; file-like object,&#37027;&#26679;&#20320;&#21487;&#20197;&#26041;&#20415;&#30340;&#20256;&#36882; &#36825;&#20010;object &#21040; minidom.parese&#12290;&#20107;&#23454;&#19978;&#26377;&#23436;&#25104;&#36825;&#20010;&#21151;&#33021;&#30340;&#29305;&#27530;&#27169;&#22359;{module specifically} :StringIO
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1354153854390" ID="ID_1808956842" MODIFIED="1354153857921">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 10.4. Introducing StringIO
    </p>
  </body>
</html></richcontent>
<node CREATED="1354153871546" FOLDED="true" ID="ID_239651606" MODIFIED="1355881343390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; contents = &quot;&lt;grammar&gt;&lt;ref id='bit'&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;&quot;
    </p>
    <p>
      &gt;&gt;&gt; import StringIO
    </p>
    <p>
      &gt;&gt;&gt; ssock = StringIO.StringIO(contents)--------------------------------------1
    </p>
    <p>
      &gt;&gt;&gt; ssock.read()---------------------------------------------------------------------2
    </p>
    <p>
      &quot;&lt;grammar&gt;&lt;ref id='bit'&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;&quot;
    </p>
    <p>
      &gt;&gt;&gt; ssock.read()----------------------------------------------------------------------3
    </p>
    <p>
      ''
    </p>
    <p>
      &gt;&gt;&gt; ssock.seek(0)--------------------------------------------------------------------4
    </p>
    <p>
      &gt;&gt;&gt; ssock.read(15)-------------------------------------------------------------------5
    </p>
    <p>
      '&lt;grammar&gt;&lt;ref i'
    </p>
    <p>
      &gt;&gt;&gt; ssock.read(15)
    </p>
    <p>
      &quot;d='bit'&gt;&lt;p&gt;0&lt;/p&quot;
    </p>
    <p>
      &gt;&gt;&gt; ssock.read()
    </p>
    <p>
      '&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;'
    </p>
    <p>
      &gt;&gt;&gt; ssock.close()----------------------------------------------------------------------6
    </p>
  </body>
</html></richcontent>
<node CREATED="1354154009937" ID="ID_1203087836" MODIFIED="1354154618046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      The StringIO module contains a single class, also called StringIO, which allows you to turn a string into a file&#8722;like object. The StringIO class takes the string as a parameter when creating an instance.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#27492;StringIO&#27169;&#22359;&#21253;&#21547;&#19968;&#20010;&#31616;&#21333;&#31867;&#65292;&#20063;&#21483;StringIO,&#23427;&#20801;&#35768;&#20320;&#36716;&#25442;&#23383;&#31526;&#20018;&#20026;file-like object.&#27492;StringIO&#31867;&#20351;&#29992;&#23383;&#31526;&#20018;&#20316;&#20026;&#21442;&#25968;&#21019;&#24314;&#23454;&#20363;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1354154628687" ID="ID_1396549976" MODIFIED="1355276295968">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      Now you have a file&#8722;like object, and you can do all sorts of file&#8722;like things with it. Like read, which returns the original string
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#26377;&#19968;&#20010; file-like object,&#20320;&#21487;&#20197;&#29992;&#23427;&#20570;&#21508;&#31181;file-like &#23545;&#35937;&#20570;&#30340;&#20107;&#12290;&#27604;&#22914; &#36820;&#22238;&#28304;&#23383;&#31526;&#30340; &#35835;&#21462;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355276342812" ID="ID_1245863293" MODIFIED="1355276719140">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      Calling read again returns an empty string. This is how real file objects work too; once you read the entire file, you can't read any more without explicitly seeking to the beginning of the file. The StringIO object works the same way.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20877;&#27425;&#35843;&#29992;&#35835;&#21462;&#20989;&#25968; &#36820;&#22238;&#31354;&#20018;&#12290;&#36825;&#20063;&#26159;&#30495;&#23454; &#25991;&#20214;&#23545;&#35937;&#30340;&#24037;&#20316;;&#19968;&#26086;&#20320;&#35835;&#21462;&#20102;&#25972;&#20010;{entire}&#25991;&#20214;,&#22312;&#27809;&#26377;&#29305;&#21035;&#23450;&#20301;{explicitly seeking to}&#21040;&#25991;&#20214;&#24320;&#22987;&#20301;&#32622;&#21069;&#20320;&#35835;&#21462;&#19981;&#20102;&#20219;&#20309;&#30340;&#20869;&#23481;&#12290;&#36825;&#20010;StringIO &#23545;&#35937;&#20351;&#29992;&#21516;&#26679;&#30340;&#26041;&#24335;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355277732703" ID="ID_1761038165" MODIFIED="1355449868375">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      You can explicitly seek to the beginning of the string, just like seeking through a file, by using the seek method of the StringIO object.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#21487;&#20197;&#26126;&#30830;&#22320;{explicitly}&#25351;&#23450;{seek}&#21040;&#23383;&#31526;&#20018;&#24320;&#22987;&#20301;&#32622;&#65292;&#36890;&#36807;&#20351;&#29992;StringIO&#23545;&#35937;&#30340;seek &#26041;&#27861;&#23601;&#20687;&#26597;&#35810;&#25972;&#20010;&#25991;&#20214;&#20219;&#20309;&#20301;&#32622;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355449944968" ID="ID_1609907959" MODIFIED="1355450575578">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      5
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      You can also read the string in chunks, by passing a size parameter to the read method
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#21487;&#20197;&#36890;&#36807;read &#26041;&#27861;&#30340;&#38271;&#24230;&#21442;&#25968;&#65292;&#21487;&#20197;&#35835;&#21462; &#22823;&#22359;{chunks}&#30340;&#23383;&#31526;&#20018;
    </p>
    <p>
      [popexizhi&#65306;&#36825;&#20010;the string in chunks &#30452;&#25509;&#32763;&#35793;&#20026; &#22810;&#20010;&#22823;&#22359;&#30340; &#23383;&#31526;&#20018;&#65292;&#20013;&#25991;feel &#33258;&#24049;&#24456;&#26197;&#30340;&#34920;&#36798;&#65292;&#20294;&#26159;&#21407;&#25991;&#21602;&#65311;&#36825;&#20010;string &#24212;&#35813;&#26159;&#34987;&#20998;&#21106;&#25104;&#22810;&#20010; chunk&#21543;&#65311;&#20877;&#24819;&#24819;&#25913;&#36827;&#21543;]
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355450607031" ID="ID_227324036" MODIFIED="1355450861265">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      6
    </p>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      At any time, read will return the rest of the string that you haven't read yet. All of this is exactly how file objects work; hence the term file&#8722;like object.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20219;&#20309;&#26102;&#20505;&#65292;&#35835;&#21462;&#23436;&#23383;&#31526;&#20018;&#30340;&#21097;&#20313;&#20869;&#23481;&#21518;&#65292;&#20320;&#23558;&#19981;&#20877;&#38656;&#35201;&#32487;&#32493;&#35835;&#21462;&#20102;&#12290;&#20840;&#37096;&#36825;&#20123;&#31934;&#30830;&#30340;{exactly}&#34920;&#29616;&#20102;f&#25991;&#20214;&#23545;&#35937;&#30340;&#24037;&#20316;&#36807;&#31243;&#65307;&#36825;&#20123;&#20840;&#37096;&#34987;&#31216;&#20026; &#31867;&#25991;&#20214;&#23545;&#35937;{file-like object}
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1355450872937" ID="ID_939186047" MODIFIED="1355450874234" TEXT="Example 10.5. Parsing XML from a string (the file&#x2212;like object way)">
<node CREATED="1355881345750" ID="ID_402591056" MODIFIED="1355881360718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; contents = &quot;&lt;grammar&gt;&lt;ref id='bit'&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;&quot;
    </p>
    <p>
      &gt;&gt;&gt; ssock = StringIO.StringIO(contents)
    </p>
    <p>
      &gt;&gt;&gt; xmldoc = minidom.parse(ssock)-------------------------------------------------------------1
    </p>
    <p>
      &gt;&gt;&gt; ssock.close()
    </p>
    <p>
      &gt;&gt;&gt; print xmldoc.toxml()
    </p>
    <p>
      &lt;?xml version=&quot;1.0&quot; ?&gt;
    </p>
    <p>
      &lt;grammar&gt;&lt;ref id=&quot;bit&quot;&gt;&lt;p&gt;0&lt;/p&gt;&lt;p&gt;1&lt;/p&gt;&lt;/ref&gt;&lt;/grammar&gt;
    </p>
  </body>
</html></richcontent>
<node CREATED="1355881403859" ID="ID_1343964811" MODIFIED="1355881617437">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      Now you can pass the file&#8722;like object (really a StringIO) to minidom.parse, which will call the object's read method and happily parse away, never knowing that its input came from a hard&#8722;coded string.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#21487;&#20197;&#20351;&#29992;&#31867;&#25991;&#20214;&#23545;&#35937;&#65288;&#23454;&#38469;&#26159;&#19968;&#20010;StringIO&#65289;&#20256;&#36882;&#21040; minidom.parse,&#23427;&#21487;&#20197;&#35843;&#29992;&#23545;&#35937;&#30340;&#35835;&#21462;&#26041;&#27861;&#24182;&#19988;&#23436;&#25104;&#35821;&#27861;&#20998;&#26512;&#65292;&#32780;&#19981;&#32771;&#34385;&#23427;&#20351;&#29992;&#30340;&#36755;&#20837;&#26469;&#33258;&#20110;&#30828;&#32534;&#30721;&#23383;&#31526;&#20018;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1355881930000" ID="ID_1876880714" MODIFIED="1355882233453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P140
    </p>
    <p>
      So now you know how to use a single function, minidom.parse, to parse an XML document stored on a web page, in a local file, or in a hard&#8722;coded string. For a web page, you use urlopen to get a file&#8722;like object; for a local file, you use open; and for a string, you use StringIO. Now let's take it one step further and generalize these differences as well.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#30693;&#36947;&#22914;&#20309;&#20351;&#29992;&#36825;&#20010;&#31616;&#21333;&#20989;&#25968;minidom.parse&#20102;&#21543;&#65281;&#20998;&#26512;&#23384;&#20648;&#22312;web &#39029;&#38754;&#30340;&#65292;&#26412;&#22320;&#30340;&#65292;&#29978;&#33267;&#26159;&#30828;&#32534;&#30721;&#30340;xml&#25991;&#20214;&#12290;&#23545;Web&#39029;&#38754;&#20320;&#35201;&#20351;&#29992;urlopen&#26469;&#33719;&#24471;&#31867;&#25991;&#20214;&#23545;&#35937;&#65292;&#23545;&#26412;&#22320;&#25991;&#20214;&#65292;&#20320;&#20351;&#29992;open&#65307;&#30828;&#32534;&#30721;&#23383;&#31526;&#20018;&#20351;&#29992;StringIO&#12290;&#29616;&#22312;&#35753;&#25105;&#20204; &#36827;&#19968;&#27493;&#20998;&#26512;&#27010;&#25324;{futher and generalize}&#23427;&#20204;&#20043;&#38388;&#30340;&#19981;&#21516;&#20043;&#22788;.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355882258187" FOLDED="true" ID="ID_1586279443" MODIFIED="1356486994109" TEXT="Example 10.6. openAnything">
<node CREATED="1355882342156" ID="ID_1113530256" MODIFIED="1355882410406">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def openAnything(source): ---------------------------------------------------1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;# try to open with urllib (if source is http, ftp, or file URL)
    </p>
    <p>
      &#160;&#160;&#160;&#160;import urllib&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;try:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return urllib.urlopen(source)&#160;&#160;&#160;&#160;&#160; -------------------------------------------------2
    </p>
    <p>
      &#160;&#160;&#160;&#160;except (IOError, OSError):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pass&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;# try to open with native open function (if source is pathname)
    </p>
    <p>
      &#160;&#160;&#160;&#160;try:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return open(source)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ---------------------------------------------------3
    </p>
    <p>
      &#160;&#160;&#160;&#160;except (IOError, OSError):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pass&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;# treat source as string
    </p>
    <p>
      &#160;&#160;&#160;&#160;import StringIO&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;return StringIO.StringIO(str(source))------------------------------------------------4
    </p>
  </body>
</html></richcontent>
<node CREATED="1355882421281" ID="ID_1169613648" MODIFIED="1356053834093">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      The openAnything function takes a single parameter, source, and returns a file&#8722;like object. source is a string of some sort; it can either be a URL (like 'http://slashdot.org/slashdot.rdf'), a full or partial pathname to a local file (like 'binary.xml'), or a string that contains actual XML data to be parsed.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#27492;OpenAnything&#20989;&#25968;&#21482;&#26377;&#19968;&#20010;&#31616;&#21333;&#30340;&#21442;&#25968;&#65292;source&#65292;&#36820;&#22238;&#31867;&#25991;&#20214;&#23545;&#35937;&#12290;source &#21487;&#20197;&#26159;&#22914;&#19979;&#31867;&#22411;: &#19968;&#20010;url&#65288;&#20687;'http://slashdot.org/slashdot.rdf'&#65289;&#65292;&#19968;&#20010;&#20840;&#36335;&#24452;&#25110;&#26159;&#37096;&#20998;&#36335;&#24452;&#30340;&#26412;&#22320;&#25991;&#20214;&#65288;&#20363;&#22914;'binary.xml'&#65289;&#65292;&#25110;&#32773;&#26159;&#21487;&#20197;&#21253;&#21547;xml&#25968;&#25454;&#30340;&#23383;&#31526;&#20018;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1356054227234" ID="ID_525535397" MODIFIED="1356055179250">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      First, you see if source is a URL. You do this through brute force: you try to open it as a URL and silently ignore errors caused by trying to open something which is not a URL. This is actually elegant in the sense that, if urllib ever supports new types of URLs in the future, you will also support them without recoding. If urllib is able to open source, then the return kicks you out of the function immediately and the following try statements never execute.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#39318;&#20808;&#65292;&#20320;&#30693;&#36947;&#30340; &#22914;&#26524;source &#26159;&#21542;&#20026;url&#65292;&#20320;&#21487;&#20197;&#36890;&#36807;&#31895;&#26292;(brute force)&#23581;&#35797;&#25171;&#24320;&#36825;&#20010;url,&#24182;&#19988;&#24573;&#30053;(silently ignore)&#25171;&#24320;&#38750;url&#22320;&#22336;&#32780;&#23548;&#33268;&#30340;&#38169;&#35823; &#26469;&#21028;&#26029;&#12290;&#22914;&#26524;&#26410;&#26469;urllib&#21487;&#20197;&#25903;&#25345;&#26032;urls&#31867;&#22411;&#65292;&#36825;&#24212;&#35813;&#20250;&#21464;&#24471;&#20248;&#38597;(elegant)&#19968;&#20123;&#65292;&#20320;&#20063;&#21487;&#20197;&#19981;&#29992;&#37325;&#22797;&#32534;&#30721;&#26469;&#25903;&#25345;&#20182;&#20204;&#12290;&#22914;&#26524;urllib&#21487;&#20197;&#25171;&#24320;&#36825;&#20010;source&#65292;&#23601;&#36820;&#22238;&#36825;&#20010;(kicks)&#20316;&#20026;&#20989;&#25968;&#36820;&#22238;&#20540;&#24182;&#19988;&#20043;&#21518;&#30340;&#31243;&#24207;&#19981;&#20877;&#25191;&#34892;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1356055216156" ID="ID_1635292678" MODIFIED="1356485825812">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      On the other hand, if urllib yelled at you and told you that source wasn't a valid URL, you assume it's a path to a file on disk and try to open it. Again, you don't do anything fancy to check whether source is a valid filename or not (the rules for valid filenames vary wildly between different platforms anyway, so you'd probably get them wrong anyway). Instead, you just blindly open the file, and silently trap any errors.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#21478;&#19968;&#26041;&#38754;&#65292;&#22914;&#26524;urllib &#25552;&#31034;{yell at}&#20320;&#36825;&#20010;&#21407;&#19981;&#26159;&#26377;&#25928;&#30340;url&#65292;&#20320;&#29468;{assume}&#23427;&#21487;&#33021;&#26159;&#30913;&#30424;&#25991;&#20214;&#24182;&#23581;&#35797;&#25171;&#24320;&#23427;&#12290;&#21516;&#26679;&#30340;&#65292;&#20320;&#20063;&#19981;&#38656;&#35201;&#29305;&#21035;&#26816;&#26597;&#65288;fancy to check&#65289;&#36825;&#20010;&#28304;&#19968;&#23450;&#26159;&#26377;&#25928;&#30340;&#25991;&#20214;&#22320;&#22336;&#25110;&#19981;&#26159;(&#20445;&#35777;&#22312;&#19981;&#21516;&#24179;&#21488;&#19978;&#65292;&#20351;&#29992;&#35268;&#21017;&#30830;&#35748;&#19968;&#20010;&#22320;&#22336;&#26159;&#21542;&#26377;&#25928;&#26159;&#24456;&#36731;&#29575;&#30340;(widly),&#36825;&#22826;&#23481;&#26131;&#20986;&#38169;&#20102; )&#12290;&#20320;&#21487;&#20197;&#21482;&#35201;&#30452;&#25509;&#25171;&#24320;&#36825;&#20010;&#25991;&#20214;&#65292;&#31561;&#24453;&#26159;&#21542;&#36820;&#22238;errors &#23601;&#21487;&#20197;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1356485874656" ID="ID_1654009864" MODIFIED="1356486674046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      By this point, you need to assume that source is a string that has hard&#8722;coded data in it (since nothing else worked), so you use StringIO to create a file&#8722;like object out of it and return that. (In fact, since you're using the str function, source doesn't even need to be a string; it could be any object, and you'll use its string representation, as defined by its __str__ special method.)
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#36825;&#28857;&#65292;&#20320;&#38656;&#35201;&#20551;&#23450;&#28304;&#26159;&#19968;&#20010;&#30828;&#32534;&#30721;&#30340;&#23383;&#31526;&#20018;&#25968;&#25454; (&#22240;&#20026;&#27809;&#20160;&#20040;&#21035;&#30340;&#21487;&#20197;&#32771;&#34385;&#20102;&#65288;[?]since nothing else worked &#21487;&#20197;&#36825;&#26679;&#35762;&#21527;&#65311;&#65289;)&#65292;&#25152;&#20197;&#20320;&#20351;&#29992;StringIO &#21019;&#24314;&#25991;&#20214;&#23545;&#35937; &#36755;&#20837;&#28304; &#24182;&#36820;&#22238;&#36825;&#20010;&#25991;&#20214;&#23545;&#35937;&#12290;(&#23454;&#38469;&#19978;&#65292;&#22240;&#20026;&#20320;&#20351;&#29992;str &#20989;&#25968;&#65292;&#28304;&#29978;&#33267;&#21487;&#20197;&#19981;&#26159;&#23383;&#31526;&#20018;;&#23427;&#21487;&#20197;&#26159;&#20160;&#20040;&#23545;&#35937;&#12290;&#36890;&#36807;&#23450;&#20041;__str__&#29305;&#27530;&#30340;&#26041;&#27861;&#65292;&#20320;&#20351;&#29992;&#30340;&#26159;&#23427;&#30340;&#23383;&#31526;&#25551;&#36848;&#24615;&#65292; )
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1356486721000" ID="ID_807510321" MODIFIED="1356486960546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      Now you can use this openAnything function in conjunction with minidom.parse to make a function that takes a source that&#160;refers to an XML document somehow (either as a URL, or a local filename, or a hard&#8722;coded XML document in a string) and parses it.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#21487;&#20197;&#36830;&#21516;(conjunction with) minidom.parse &#19968;&#36215;&#20351;&#29992; &#36825;&#20010;openAnything&#20989;&#25968;&#20102;&#65292;&#36825;&#20010;&#26032;&#30340;&#20989;&#25968;&#21487;&#20197;&#22788;&#29702;&#25351;&#21521;(refers to)&#20219;&#20309;&#24418;&#24335;&#30340;xml&#25991;&#26723;&#65288;&#26080;&#35770;&#26159;url&#65292;&#25110;&#32773;&#26412;&#22320;&#25991;&#20214;&#65292;&#29978;&#33267;&#26159;&#30828;&#32534;&#30721;&#30340;xml&#25991;&#26723;&#23383;&#31526;&#20018;&#65289;&#23545;&#20854;&#36827;&#34892;&#35821;&#27861;&#20998;&#26512;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1356486996625" ID="ID_1542272085" MODIFIED="1356486998109" TEXT="Example 10.7. Using openAnything in kgp.py">
<node CREATED="1356487012656" ID="ID_1422513271" MODIFIED="1356487015796">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      class KantGenerator:
    </p>
    <p>
      &#160;&#160;&#160;&#160;def _load(self, source):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sock = toolbox.openAnything(source)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;xmldoc = minidom.parse(sock).documentElement
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sock.close()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return xmldoc
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1356487035953" FOLDED="true" ID="ID_271847568" MODIFIED="1362103229234" POSITION="right" TEXT="10.2. Standard input, output, and error">
<node CREATED="1356487199421" ID="ID_1990220247" MODIFIED="1357522274171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P141
    </p>
    <p>
      UNIX users are already familiar with the concept of standard input, standard output, and standard error. This section is for the rest of you.
    </p>
    <p>
      Standard output and standard error (commonly abbreviated stdout and stderr) are pipes that are built into every UNIX system. When you print something, it goes to the stdout pipe; when your program crashes and prints out debugging information (like a traceback in Python), it goes to the stderr pipe. Both of these pipes are ordinarily just connected to the terminal window where you are working, so when a program prints, you see the output, and when a&#160;program crashes, you see the debugging information. (If you're working on a system with a window&#8722;based Python IDE, stdout and stderr default to your &quot;Interactive Window&quot;.)
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      UNIX &#29992;&#25143;&#24050;&#32463;&#24456;&#29087;&#24713;&#26631;&#20934;&#36755;&#20837;&#65292;&#26631;&#20934;&#36755;&#20986;&#21644;&#26631;&#20934;&#38169;&#35823;&#30340;&#27010;&#24565;&#20102;. &#36825;&#31456;&#26159;&#20026;&#19981;&#20102;&#35299;&#30340;&#20154;&#20934;&#22791;&#30340;&#12290;
    </p>
    <p>
      &#26631;&#20934;&#36755;&#20986;&#21644;&#26631;&#20934;&#38169;&#35823;(&#36890;&#24120;&#32553;&#20889;{commonly &#36890;&#24120;&#65292;abbreviated &#32553;&#20889;}&#20026;stdout &#21644;stderr) &#26159;&#27599;&#20010;UNIX&#31995;&#32479;&#30340;&#20869;&#32622;&#30340;&#31649;&#36947;&#12290;&#24403;&#20320;&#25171;&#21360;&#19968;&#20123;&#20449;&#24687;&#26102;&#65292;&#23427;&#20351;&#29992;stdout &#31649;&#36947;&#65307;&#24403;&#20320;&#30340;&#31243;&#24207;&#36935;&#21040;&#23849;&#28291;&#38169;&#35823;&#36755;&#20986;debugging&#20449;&#24687;&#26102;&#65288;&#23601;&#20687;Python&#30340;&#36861;&#28335;&#20449;&#24687;&#65289;&#65292;&#23427;&#20351;&#29992;stderr &#31649;&#36947;&#12290;&#36825;&#20123;&#31649;&#36947;&#24403;&#20320;&#24037;&#20316;&#26102;&#36890;&#24120;{ordinarily}&#37117;&#36830;&#25509;&#21040;&#32456;&#31471;&#31383;&#21475;&#65292;&#25152;&#20197;&#24403;&#31243;&#24207;&#25171;&#21360;&#26102;&#65292;&#20320;&#21487;&#20197;&#30475;&#21040;&#36755;&#20986;&#20449;&#24687;&#65292;&#24403;&#31243;&#24207;&#23849;&#28291;&#26102;{crashes}&#65292;&#20320;&#30475;&#21040;debugging&#20449;&#24687;&#12290;&#65288;&#22914;&#26524;&#20320;&#20351;&#29992;&#23621;&#20110;PythonIDE&#30340;&#31383;&#21475;&#24037;&#20316;&#65292;stdout &#21644;stderr &#40664;&#35748;&#26159;&#20320;&#30340;&#8220;&#20132;&#25442;&#31383;&#21475;&#8221;&#12290;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1357523045750" ID="ID_1322517744" MODIFIED="1357523047468" TEXT="Example 10.8. Introducing stdout and stderr">
<node CREATED="1357523058109" ID="ID_1072232311" MODIFIED="1357523097062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; for i in range(3):------------------------------------------------------------1
    </p>
    <p>
      ...&#160;&#160;&#160;&#160;&#160;print 'Dive in'
    </p>
    <p>
      Dive in
    </p>
    <p>
      Dive in
    </p>
    <p>
      Dive in
    </p>
    <p>
      &gt;&gt;&gt; import sys
    </p>
    <p>
      &gt;&gt;&gt; for i in range(3):
    </p>
    <p>
      ...&#160;&#160;&#160;&#160;&#160;sys.stdout.write('Dive in')------------------------------------------------------------2
    </p>
    <p>
      Dive inDive inDive in
    </p>
    <p>
      &gt;&gt;&gt; for i in range(3):
    </p>
    <p>
      ...&#160;&#160;&#160;&#160;&#160;sys.stderr.write('Dive in')------------------------------------------------------------3
    </p>
    <p>
      Dive inDive inDive in
    </p>
  </body>
</html></richcontent>
<node CREATED="1357523122421" ID="ID_839376839" MODIFIED="1357523397203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P142
    </p>
    <p>
      As you saw in Example 6.9, Simple Counters, you can use Python's built&#8722;in range function to build simple counter loops that repeat something a set number of times.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#30475;&#21040;&#20363;6.9 &#31616;&#21333;&#35745;&#25968;&#22120; &#30340;&#20363;&#23376;&#19968;&#26679;&#65292;&#20320;&#21487;&#20197;&#20351;&#29992;Python&#30340;&#20869;&#32622;&#25968;&#32452;&#20989;&#25968;&#21019;&#24314;&#19968;&#20010;&#31616;&#21333;&#30340;&#35745;&#25968;&#22120; &#24490;&#29615;&#35774;&#32622;&#30340;&#27425;&#25968;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1357523427921" ID="ID_1467108561" MODIFIED="1357523622625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P142
    </p>
    <p>
      stdout is a file&#8722;like object; calling its write function will print out whatever string you give it. In fact, this is what the print function really does; it adds a carriage return to the end of the string you're printing, and calls sys.stdout.write.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      stdout &#26159;&#19968;&#20010;&#25991;&#20214;&#23545;&#35937;&#65292;&#35843;&#29992;&#20889;&#20989;&#25968;&#25171;&#21360;&#20986;&#20320;&#32473;&#23427;&#30340;&#20219;&#20309;&#23383;&#31526;&#20018;&#12290;&#23454;&#38469;&#19978;&#65292;&#35843;&#29992;sys.stdout.write&#26102;&#65292;&#36825;&#20010;&#25171;&#21360;&#20989;&#25968;&#20063;&#26159;&#36825;&#26679;&#20570;&#30340;&#65307;&#23427;&#22686;&#21152;&#35201;&#25171;&#21360;&#30340;&#20869;&#23481;&#21040;&#20320;&#25171;&#21360;&#30340;&#23383;&#31526;&#20018;&#23614;&#37096;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1357523670218" ID="ID_1762297634" MODIFIED="1358300617281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P142
    </p>
    <p>
      In the simplest case, stdout and stderr send their output to the same place: the Python IDE (if you're in one), or the terminal (if you're running Python from the command line). Like stdout, stderr does not add carriage returns for you; if you want them, add them yourself.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#31616;&#21333;&#30340;&#20363;&#23376;&#20013;&#65292;stdout &#21644;stderr &#25171;&#21360;&#36755;&#20986;&#21040;&#21516;&#19968;&#20010;&#20301;&#32622;:Python IDE(&#22914;&#26524;&#20320;&#20351;&#29992;&#36825;&#20010;)&#65292;&#25110;&#32773;&#32456;&#31471;(&#22914;&#26524;&#20320;&#20351;&#29992;&#21629;&#20196;&#34892;&#36816;&#34892;python)&#12290;&#20687;stdout,stderr &#27809;&#26377;&#22686;&#21152; carriage &#36820;&#22238;&#32473;&#20320;&#65307;&#22914;&#26524;&#20320;&#38656;&#35201;&#65292;&#33258;&#24049;&#22686;&#21152;&#20182;&#20204;&#21543;
    </p>
    <p>
      [&#65311;]carriage &#22312;&#36825;&#37324;&#22914;&#20309;&#32763;&#35793;&#21602;&#65311;&#22914;&#20309;&#33258;&#24049;add carriage&#21602;&#65311;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1358300683703" ID="ID_1156457783" MODIFIED="1358301141796">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P142
    </p>
    <p>
      stdout and stderr are both file&#8722;like objects, like the ones you discussed in Section 10.1, ?Abstracting input sources?, but they are both write&#8722;only. They have no read method, only write. Still, they are file&#8722;like objects, and you can assign any other file&#8722; or file&#8722;like object to them to redirect their output.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      stdout &#21644;stderr &#37117;&#26159; file-like &#23545;&#35937;&#65292;&#23601;&#20687;&#21644;&#20320;&#22312;Section 10.1, ?&#25277;&#35937;&#36755;&#20837;&#28304;?,&#20013;&#35752;&#35770;&#36807;&#30340;&#65292;&#20294;&#20182;&#20204;&#37117;&#26159;&#21482;&#20889;&#30340;&#65292;&#27809;&#26377;&#35835;&#26041;&#27861;&#65292;&#34429;&#28982;&#20182;&#20204;&#20063;&#26159;file-like &#23545;&#35937;&#65292;&#24182;&#19988;&#20320;&#21487;&#20197;&#25351;&#27966;&#20219;&#20309;&#25991;&#20214;&#25110;file-like&#23545;&#35937; &#30452;&#25509;&#25351;&#21521;&#20182;&#20204;&#30340;&#36755;&#20986;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358301269531" FOLDED="true" ID="ID_924938386" MODIFIED="1358905961781" TEXT="Example 10.9. Redirecting output">
<node CREATED="1358301285468" ID="ID_1358915563" MODIFIED="1358301484953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P142
    </p>
    <p>
      [you@localhost kgp]$ python stdout.py
    </p>
    <p>
      Dive in
    </p>
    <p>
      [you@localhost kgp]$ cat out.log
    </p>
    <p>
      This message will be logged instead of displayed
    </p>
    <p>
      
    </p>
    <p>
      (On Windows, you can use type instead of cat to display the contents of a file.)
    </p>
    <p>
      [pope&#35793;]&#22312;windows&#20013;&#65292;&#20320;&#21487;&#20197;&#20351;&#29992;type &#20195;&#26367; cat &#23637;&#31034;&#21253;&#21547;&#30340;&#25991;&#20214;&#20869;&#23481;
    </p>
    <p>
      [popexizhi]&#27979;&#35797;&#20102;&#19968;&#19979;&#65292;&#30830;&#23454;&#22909;&#29992;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358301515000" ID="ID_364257587" MODIFIED="1358301592796">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #stdout.py
    </p>
    <p>
      import sys --------------------------------------------------------------------------1
    </p>
    <p>
      print 'Dive in'-------------------------------------------------------------------------2 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      saveout = sys.stdout ------------------------------------------------------------3
    </p>
    <p>
      fsock = open('out.log', 'w')&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------------------------------------4
    </p>
    <p>
      sys.stdout = fsock&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------------------------------------5
    </p>
    <p>
      print 'This message will be logged instead of displayed' --------------------------------------------------------------------------6
    </p>
    <p>
      sys.stdout = saveout&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------------------------------------7
    </p>
    <p>
      fsock.close()&#160; --------------------------------------------------------------------------8
    </p>
  </body>
</html></richcontent>
<node CREATED="1358472475876" ID="ID_1491057954" MODIFIED="1358472633829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P142
    </p>
    <p>
      This will print to the IDE &quot;Interactive Window&quot; (or the terminal, if running the script from the command line).
    </p>
    <p>
      [pope&#32763;&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#23558;&#22312;IDE&quot;&#20132;&#20114;(interactive)&#31383;&#21475;&quot;&#20013;&#25171;&#21360;(&#22914;&#26524;&#22312;&#21629;&#20196;&#34892;&#36816;&#34892;&#33050;&#26412;&#65292;&#23601;&#25171;&#21360;&#21040;&#32456;&#31471;&#19978;)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358472849876" ID="ID_281344018" MODIFIED="1358473136423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Always save stdout before redirecting it,&#160;so you can set it back to normal later.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#37325;&#26032;&#20256;&#20837;&#20043;&#21069;&#20445;&#23384;stdout &#65292;&#36825;&#26679;&#20320;&#22312;&#20043;&#21518;&#21487;&#20197;&#37325;&#26032;&#22238;&#22797;&#21040;&#27491;&#24120;&#35774;&#32622;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358473326860" ID="ID_1728474173" MODIFIED="1358473406876">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Open a file for writing. If the file doesn't exist, it will be created. If the file does exist, it will be overwritten.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36890;&#36807;&#20889;&#26041;&#24335;&#25171;&#24320;&#25991;&#20214;&#12290;&#22914;&#26524;&#27492;&#25991;&#20214;&#19981;&#23384;&#22312;&#65292;&#23601;&#21019;&#24314;&#19968;&#20010;&#12290;&#22914;&#26524;&#25991;&#20214;&#23384;&#22312;&#65292;&#23601;&#35206;&#30422;&#21407;&#25991;&#20214;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358473532188" ID="ID_1219356251" MODIFIED="1358474279017">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Redirect all further output to the new file you just opened.
    </p>
    <p>
      [pope&#35793;]&#37325;&#23450;&#21521;&#20043;&#21518;&#30340;&#20840;&#37096;output &#21040;&#20320;&#26032;&#25171;&#24320;&#30340;&#25991;&#20214;&#20013;&#12290;
    </p>
    <p>
      &#12304;popexizhi: &#21018;&#21018;&#24847;&#35782;&#21040;sys.stdout = fsock&#160;&#160; &#19981;&#26159;&#26222;&#36890;&#30340;&#36171;&#20540;&#25805;&#20316;&#65292;&#36825;&#20010;&#26159;&#22312;&#20026;&#31995;&#32479;&#36755;&#20986;&#25351;&#23450;&#26032;&#30340;&#36755;&#20986;&#25991;&#20214;&#21834;&#65281;&#31995;&#32479;&#23558;&#20043;&#21069;&#30340;&#40664;&#35748;&#30340;IDE&#25110;&#26159;command line &#24819;&#36825;&#20010;file&#19968;&#26679;&#22788;&#29702;&#30340;&#65292;&#36825;&#37324;&#30340;redirect&#25805;&#20316;&#23545;sys.out&#26469;&#35828;&#26159;&#21482;&#26159;&#25442;&#20102;&#20010;&#25991;&#20214;&#65292;&#35774;&#22791;&#21363;&#25991;&#20214;&#30340;&#27010;&#24565;&#22312;&#36825;&#37324;&#26159;&#20010;&#20877;&#22909;&#19981;&#36807;&#30340;&#20307;&#29616;&#20102;&#21543;:)&#12290;&#22312;&#36825;&#37324;&#31361;&#28982;&#24847;&#35782;&#21040;&#21478;&#22806;&#19968;&#20010;&#38382;&#39064;&#65292;&#19981;&#21516;&#30340;&#36755;&#20986;&#22495;&#30340;&#23450;&#20041;&#65292;&#26159;&#22312;&#21516;&#31867;&#38598;&#21512;&#20013;&#25165;&#26377;&#20999;&#25442;&#30340;&#21487;&#33021;&#65292;&#35774;&#22791;&#65292;&#25991;&#26412;&#26159;&#21516;&#31867;&#30340;&#23450;&#20041;&#21069;&#25552;&#25165;&#21487;&#20197;&#23436;&#25104;&#36825;&#20010;&#36807;&#31243;&#12290;&#12298;&#40644;&#24093;&#20869;&#32463;&#12299;&#20013;&#35828;&#30340;&#8220;&#22312;&#22825;&#20026;&#29572;<font face="arial, sans-serif" color="rgb(34, 34, 34)">&#65292;&#22312;&#20154;&#20026;&#36947;&#65292;&#22312;&#22320;&#20026;&#21270;</font>&#8221;&#30340;&#8220;&#22825;&#65292;&#20154;&#65292;&#22320;&#8221;&#31561;&#65292;&#36825;&#20010;&#36807;&#31243;&#21487;&#20197;&#20351;&#29992; fsock=open('&#22825;','w')&#65307;sys.stdout=fsock &#30340;&#26041;&#24335;&#34920;&#36798;&#20102;&#21543;&#65281;&#22909;&#30340;&#65292;&#21487;&#20197;&#36827;&#19968;&#27493;&#32763;&#35793;&#19968;&#19979;&#35797;&#35797;&#12290; &#12305;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358905385531" ID="ID_563198656" MODIFIED="1358905505750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      5
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      This will be &quot;printed&quot; to the log file only; it will not be visible in the IDE window or on the screen.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#20165;&#20165;&#25171;&#21360;&#22312;&#26085;&#24535;&#25991;&#20214;&#20013;&#65292;&#23427;&#24182;&#19981;&#29616;&#22312;&#22312;window IDE&#20013;&#25110;&#23631;&#24149;&#20013;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358905546234" ID="ID_213723962" MODIFIED="1358905858296">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      6
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Set stdout back to the way it was before you mucked with it.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23558;stdout&#37325;&#32622;&#20026;&#20320;&#20462;&#25913;&#21069;&#30340;&#35774;&#32622;
    </p>
    <p>
      &#12304;popexizhi&#65306;&#22312;&#24819;&#65292;windowIDE&#21644;linux&#30340;command &#37117;&#24212;&#35813;&#22914;&#20309;&#20351;&#29992;&#21517;&#31216;&#24341;&#29992;&#21602;&#65311;&#24403;&#28982;&#20351;&#29992;&#23436;&#35774;&#32622;&#22238;&#20043;&#21069;&#30340;&#26041;&#24335;&#26368;&#21512;&#29702;&#65292;&#25105;&#21482;&#26159;&#24819;&#24819;&#65306;&#65289;&#12305;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358905867375" ID="ID_130308278" MODIFIED="1358905899609">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      7
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Close the log file.
    </p>
    <p>
      [pope&#35793;] &#20851;&#38381;&#26085;&#24535;&#25991;&#20214;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1358905963843" ID="ID_1480816610" MODIFIED="1358906043968">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P143
    </p>
    <p>
      Redirecting stderr works exactly the same way, using sys.stderr instead of sys.stdout.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#37325;&#32622;{redirecting}stderr&#30340;&#36755;&#20351;&#29992;&#30456;&#21516;&#26041;&#24335;&#65292;&#20351;&#29992;sys.stderr &#26367;&#20195; sys.stdout &#23601;&#21487;&#20197;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358906243421" FOLDED="true" ID="ID_374189015" MODIFIED="1359508597187" TEXT="Example 10.10. Redirecting error information">
<node CREATED="1358906246609" ID="ID_1807457582" MODIFIED="1358906288437">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [you@localhost kgp]$ python stderr.py
    </p>
    <p>
      [you@localhost kgp]$ cat error.log
    </p>
    <p>
      Traceback (most recent line last):
    </p>
    <p>
      &#160;&#160;File &quot;stderr.py&quot;, line 5, in ?
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise Exception, 'this error will be logged'
    </p>
    <p>
      Exception: this error will be logged
    </p>
    <p>
      If you have not already done so, you can download this and other examples
    </p>
    <p>
      (http://diveintopython.org/download/diveintopython&#8722;examples&#8722;5.4.zip) used in this book.
    </p>
    <p>
      #stderr.py
    </p>
    <p>
      import sys
    </p>
    <p>
      fsock = open('error.log', 'w')&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -----------------------------------------------------------1
    </p>
    <p>
      sys.stderr = fsock&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -----------------------------------------------------------2
    </p>
    <p>
      raise Exception, 'this error will be logged' -----------------------------------------------------------3&#65292;4
    </p>
  </body>
</html></richcontent>
<node CREATED="1359077100203" ID="ID_997369600" MODIFIED="1359077165594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Open the log file where you want to store debugging information
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#39044;&#23384;&#35843;&#35797;&#20449;&#24687;&#65292;&#35201;&#25171;&#24320;&#26085;&#24535;&#25991;&#20214;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359077191250" ID="ID_1076931235" MODIFIED="1359077452297">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Redirect standard error by assigning the file object of the newly&#8722;opened log file to stderr.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36890;&#36807;&#25351;&#23450;{assigning}&#26032;&#25171;&#24320;&#30340;&#25991;&#20214;&#20026;stderr &#65292;&#37325;&#26032;{redirect}&#25351;&#23450;&#26631;&#20934;&#38169;&#35823;&#36755;&#20986;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359077538266" ID="ID_549766213" MODIFIED="1359078060578">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Raise an exception. Note from the screen output that this does not print anything on screen. All the normal traceback information has been written to error.log.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#35302;&#21457;&#19968;&#20010;&#24322;&#24120;{raise a exception}.&#27880;&#24847;&#21040;&#20043;&#21069;&#25171;&#21360;&#21040;&#23631;&#24149;&#30340;&#36755;&#20986;&#65292;&#29616;&#22312;&#19981;&#22312;&#23631;&#24149;&#19978;&#25171;&#21360;&#20219;&#20309;&#20869;&#23481;&#12290;&#20840;&#37096;&#30340;&#22238;&#28335;{traceback}&#20449;&#24687;&#37117;&#20889;&#20837;error.log&#20013;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359078175453" ID="ID_1278918298" MODIFIED="1359079386750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Also note that you're not explicitly closing your log file, nor are you setting stderr back to its original value. This is fine, since once the program crashes (because of the exception), Python will clean up and close the file for us, and&#160;it doesn't make any difference that stderr is never restored, since, as I mentioned, the program crashes and Python ends. Restoring the original is more important for stdout, if you expect to go do other stuff within the same script afterwards.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#27880;&#24847;&#20320;&#26410;&#26366;&#26126;&#30830;&#30340;{exlicitly}&#20851;&#38381;&#26085;&#24535;&#25991;&#20214;&#65292;&#20063;&#26410;&#23558;stderr&#35774;&#32622;&#22238;&#20043;&#21069;&#30340;&#35774;&#22791;&#20540;&#12290;this is fine,&#19968;&#26086;&#31243;&#24207;&#23849;&#28291;&#65288;&#30001;&#20110;&#24322;&#24120;&#65289;&#12290;&#23601;&#20687;&#25105;&#35828;&#30340;&#37027;&#26679;&#65292;&#31243;&#24207;&#23849;&#28291;Python&#32467;&#26463;&#65292;Python&#23558;&#26367;&#25105;&#20204;&#22788;&#29702;&#24182;&#20851;&#38381;&#25991;&#20214;&#65292;&#23427;&#19981;&#20250;&#21644;&#36825;&#20010;stderr&#30340;&#35774;&#22791;&#27809;&#26377;&#24674;&#22797;{restored}&#65292;&#26377;&#20160;&#20040;&#19981;&#21516;&#12290;&#22914;&#26524;&#20320;&#35745;&#21010;&#21516;&#19968;&#20010;&#33050;&#26412;&#20013;&#21518;&#38754;&#20570;&#20854;&#20182;&#30340;&#20869;&#23481;&#65292;&#37325;&#32622;&#22238;&#21407;&#22987;&#30340;&#35774;&#22791;&#23545;stdout&#37325;&#35201;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359079413000" ID="ID_979549906" MODIFIED="1359079460672" TEXT="[popexizhi]pope lab&#x7684;&#x7ed3;&#x679c;&#x662f;&#x5728;error.log&#x4e2d;&#x6ca1;&#x6709;&#x770b;&#x5230;&#x8fd9;&#x4e2a;&#x5f02;&#x5e38;&#x7684;&#x53e5;&#x5b50;&#x3002;&#xff1f;&#xff1f;&#xff1f;why"/>
</node>
</node>
<node CREATED="1359508598296" ID="ID_1770393505" MODIFIED="1359508599468" TEXT="Example 10.11. Printing to stderr">
<node CREATED="1359508620515" ID="ID_1905223600" MODIFIED="1359508640468">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; print 'entering function'
    </p>
    <p>
      entering function
    </p>
    <p>
      &gt;&gt;&gt; import sys
    </p>
    <p>
      &gt;&gt;&gt; print &gt;&gt; sys.stderr, 'entering function' -------------------------------1
    </p>
    <p>
      entering function
    </p>
  </body>
</html></richcontent>
<node CREATED="1359508659718" ID="ID_383008520" MODIFIED="1359509047718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      This shorthand syntax of the print statement can be used to write to any open file, or file&#8722;like object. In this case, you can redirect a single print statement to stderr without affecting subsequent print statements.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;print &#30340;&#31616;&#21333;&#35821;&#27861;&#26041;&#24335; &#21487;&#20197;&#29992;&#26469; &#20889;&#20837;&#20219;&#20309;&#25171;&#24320;&#30340;&#25991;&#20214;&#65292;&#29978;&#33267;&#26159;&#31867;&#20284;&#30340;&#25991;&#20214;&#23545;&#35937;&#12290;&#22312;&#36825;&#20010;&#20363;&#23376;&#20013;&#65292;&#20320;&#21487;&#20197;&#20351;&#29992;print&#37325;&#20889;&#21040;stderr&#20013; &#65292;&#32780;&#19981;&#24433;&#21709;&#20043;&#21518;&#30340;print
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1359509130093" ID="ID_400342440" MODIFIED="1359510294265">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P143
    </p>
    <p>
      Standard input, on the other hand, is a read&#8722;only file object, and it represents the data flowing into the program from some previous program. This will likely not make much sense to classic Mac OS users, or even Windows users unless you were ever fluent on the MS&#8722;DOS command line. The way it works is that you can construct a chain of commands in a single line, so that one program's output becomes the input for the next program in the chain. The first program simply outputs to standard output (without doing any special redirecting itself, just doing normal print statements or whatever), and the next program reads from standard input, and the operating system&#160;takes care of connecting one program's output to the next program's input.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#26631;&#20934;&#36755;&#20837;&#65292;&#25442;&#21477;&#35805;&#35828;&#65292;&#26159;&#19968;&#20010;&#21482;&#35835;&#25991;&#20214;&#65292;&#23427;&#34920;&#31034;{represents}&#25968;&#25454;&#20174;&#26576;&#20010;&#20043;&#21069;&#30340;&#31243;&#24207;&#27969;&#20837;&#21040;&#27492;&#31243;&#24207;&#20013;&#12290;&#36825;&#20010;&#21487;&#33021;&#23545;&#32463;&#20856;&#30340;MacOS &#29992;&#25143;&#65292;&#29978;&#33267;&#26159;Windows &#29992;&#25143; &#27809;&#26377;&#22826;&#22823;&#30340;&#24847;&#20041;{not make much sense},&#38500;&#38750;&#20320;&#20351;&#29992;MS-DOC &#21629;&#20196;&#34892;.&#23427;&#30340;&#24037;&#20316;&#26041;&#24335;&#26159;&#20320;&#21487;&#20197;&#26500;&#36896;&#19968;&#34892;&#21629;&#20196;&#20018;&#65292;&#36825;&#26679;&#19968;&#20010;&#31243;&#24207;&#30340;&#36755;&#20986;&#21487;&#20197;&#22312;&#38142;&#20013;&#25104;&#20026;&#21478;&#19968;&#20010;&#31243;&#24207;&#30340;&#36755;&#20837;&#12290;&#31532;&#19968;&#20010;&#31243;&#24207;&#30340;&#31616;&#21333;&#36755;&#20986;&#21040;&#26631;&#20934;&#36755;&#20986;&#20013;&#65288;&#19981;&#29992;&#20570;&#20219;&#20309;&#30340;&#29305;&#21035;&#30340;&#37325;&#23450;&#21521;&#35774;&#32622;&#65292;&#20165;&#20165;&#27491;&#24120;&#25171;&#21360;&#26631;&#20934;&#36755;&#20986;&#29978;&#33267;&#19968;&#20123;&#20869;&#23481;&#65289;&#65292;&#19979;&#19968;&#20010;&#31243;&#24207;&#35835;&#21462;&#36825;&#20123;&#26631;&#20934;&#36755;&#20837;&#65292;&#24182;&#19988;&#25805;&#20316;&#31995;&#32479;&#36127;&#36131;{takes care of } &#36830;&#25509;&#19968;&#20010;&#31243;&#24207;&#30340;&#36755;&#20837;&#21040;&#21478;&#19968;&#20010;&#31243;&#24207;&#30340;&#36755;&#20837;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359510565546" ID="ID_1199362758" MODIFIED="1359510598812" TEXT="Example 10.12. Chaining commands">
<node CREATED="1359510618000" FOLDED="true" ID="ID_1582593116" MODIFIED="1361930675406">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [you@localhost kgp]$ python kgp.py &#8722;g binary.xml ------------------------------------------------------------------------------1
    </p>
    <p>
      01100111
    </p>
    <p>
      [you@localhost kgp]$ cat binary.xml&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ------------------------------------------------------------------------------2
    </p>
    <p>
      &lt;?xml version=&quot;1.0&quot;?&gt;
    </p>
    <p>
      &lt;!DOCTYPE grammar PUBLIC &quot;&#8722;//diveintopython.org//DTD Kant Generator Pro v1.0//EN&quot; &quot;kgp.dtd&quot;&gt;
    </p>
    <p>
      &lt;grammar&gt;
    </p>
    <p>
      &lt;ref id=&quot;bit&quot;&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;0&lt;/p&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;1&lt;/p&gt;
    </p>
    <p>
      &lt;/ref&gt;
    </p>
    <p>
      &lt;ref id=&quot;byte&quot;&gt;
    </p>
    <p>
      &#160;&#160;&lt;p&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;\
    </p>
    <p>
      &lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;xref id=&quot;bit&quot;/&gt;&lt;/p&gt;
    </p>
    <p>
      &lt;/ref&gt;
    </p>
    <p>
      &lt;/grammar&gt;
    </p>
    <p>
      [you@localhost kgp]$ cat binary.xml | python kgp.py &#8722;g &#8722; --------------------------------------------------------------------------3,4
    </p>
    <p>
      10110001
    </p>
  </body>
</html></richcontent>
<node CREATED="1359510709781" ID="ID_42134047" MODIFIED="1359510802562">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P144
    </p>
    <p>
      As you saw in Section 9.1, ?Diving in?, this will print a string of eight random bits, 0 or 1.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#22312;Section 9.1, ?Diving in?&#20013;&#30475;&#21040;&#30340;&#65292;&#36825;&#37324;&#23558;&#25171;&#21360;8&#20010;&#20219;&#24847;&#30340;&#27604;&#29305;&#20301;&#65292;0&#25110;1
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359511076921" ID="ID_1763916633" MODIFIED="1359511167218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P144
    </p>
    <p>
      This simply prints out the entire contents of binary.xml. (Windows users should use type instead of cat.)
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#26159;&#31616;&#21333;&#25171;&#21360;&#20986;binary.xml&#30340;&#20840;&#37096;&#20869;&#23481;&#65288;windows &#29992;&#25143;&#20351;&#29992;type &#26367;&#20195; cat&#65289;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359511179390" ID="ID_1594467115" MODIFIED="1361928981187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P144
    </p>
    <p>
      This prints the contents of binary.xml, but the &quot;|&quot; character, called the &quot;pipe&quot; character, means that the contents will not be printed to the screen. Instead, they will become the standard input of the next command, which in this case calls your Python script.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#25171;&#21360;binary.xml&#20013;&#30340;&#20869;&#23481;&#65292;&#30001;&#20110;&#8220;|&#8221;&#23383;&#31526;&#65292;&#21483;&#20570;&#8220;&#31649;&#36947;&#8221;&#31526;&#65292;&#20351;&#20869;&#23481;&#19981;&#20250;&#34987;&#25171;&#21360;&#22312;&#23631;&#24149;&#19978;&#12290;&#20195;&#26367;&#30340;&#65292;&#23427;&#20204;&#25104;&#20026;&#19979;&#20010;&#21629;&#20196;&#30340;&#26631;&#20934;&#36755;&#20837;&#65292;&#22312;&#36825;&#37324;&#26159;&#35843;&#29992;&#20320;&#30340;Python&#33050;&#26412;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1359682948440" ID="ID_438848667" MODIFIED="1361930658093">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P144
    </p>
    <p>
      Instead of specifying a module (like binary.xml), you specify &quot;&#8722;&quot;, which causes your script to load the grammar from standard input instead of from a specific file on disk. (More on how this happens in the next example.) So the effect is the same as the first syntax, where you specified the grammar filename directly, but think of the expansion possibilities here. Instead of simply doing cat binary.xml, you could run a script that dynamically generates the grammar, then you can pipe it into your script. It could come from anywhere: a database, or some grammar&#8722;generating meta&#8722;script, or whatever. The point is that you don't need to change your kgp.py script at all to incorporate any of this functionality. All you need to do is be able to take grammar files from standard input, and you can separate all the other logic into another program.
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#25351;&#23450;&quot;-&quot;&#65292;&#26367;&#20195;&#25351;&#23450;&#30340;&#27169;&#22359;&#65288;&#20687;binary.xml&#65289;&#65292;&#23427;&#20351;&#20320;&#30340;&#33050;&#26412;&#21152;&#36733;&#35821;&#27861; &#20351;&#29992;&#26631;&#20934;&#36755;&#20837;&#65292;&#26367;&#25442;&#20043;&#21069;&#30340;&#25351;&#23450;&#30913;&#30424;&#25991;&#20214;&#65288;&#19979;&#20010;&#20363;&#23376;&#26377;&#26356;&#22810;&#20851;&#20110;&#36825;&#20010;&#30340;&#20869;&#23481;&#65289;&#12290;&#36825;&#37324;&#30340;&#25928;&#26524;&#19982;&#19978;&#19968;&#22788;&#30452;&#25509;&#25351;&#23450;&#25991;&#20214;&#20301;&#32622;&#26159;&#19968;&#26679;&#30340;&#65292;&#20294;&#24819;&#24819;&#36825;&#37324;&#21487;&#33021;&#30340;&#25193;&#23637;&#20351;&#29992;&#12290;&#26367;&#20195;&#31616;&#21333;&#30340;cat binary.xml&#65292;&#20320;&#21487;&#20197;&#36816;&#34892;&#33050;&#26412;&#21160;&#24577;&#29983;&#25104;&#30340;&#20869;&#23481;&#65292;&#20351;&#29992;&#31649;&#36947;&#24341;&#20837;&#20320;&#30340;&#33050;&#26412;&#12290;&#23427;&#21487;&#20197;&#26469;&#33258;&#20219;&#20309;&#20301;&#32622;&#65306;&#25968;&#25454;&#24211;&#65292;&#25110;&#26159;&#30456;&#21516;&#30340;&#35821;&#27861;-&#29983;&#25104;&#20803;&#33050;&#26412;&#65292;&#25110;&#32773;&#21035;&#30340;&#20160;&#20040;&#12290;&#26377;&#19968;&#28857;&#26159;&#20320;&#19981;&#38656;&#35201;&#25913;&#21464;&#20320;&#30340;kgp.py &#33050;&#26412;&#22312;&#20219;&#20309;&#36825;&#20123;&#21151;&#33021;&#23454;&#29616;&#26102;&#12290;&#20320;&#20840;&#37096;&#35201;&#20570;&#30340;&#23601;&#26159;&#33021;&#22815;&#25509;&#21463;&#26631;&#20934;&#36755;&#20837;&#30340;&#25991;&#20214;&#65292;&#24182;&#19988;&#21487;&#20197;&#21306;&#20998;&#30340;&#36923;&#36753;&#25918;&#21040;&#21478;&#20026;&#30340;&#31243;&#24207;&#20013;&#12290;[?]and you can separate all the other logic into another program &#36825;&#21477;&#24590;&#20040;&#24863;&#35273;&#32763;&#35793;&#21518;&#19978;&#19979;&#25991;&#19981;&#36890;&#21602;&#65311;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1361930676625" ID="ID_1434793964" MODIFIED="1362102095171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P144
    </p>
    <p>
      So how does the script &quot;know&quot; to read from standard input when the grammar file is &quot;&#8722;&quot;? It's not magic; it's just code
    </p>
    <p>
      [pope &#35793;]
    </p>
    <p>
      &#37027;&#20040;&#33050;&#26412;&#22914;&#20309;&#8220;&#30693;&#36947;&#8221;&#24403;&#20351;&#29992;&#8220;-&#8221;&#35821;&#27861;&#26102;&#65292;&#35201;&#35835;&#21462;&#26631;&#20934;&#36755;&#20837;&#21602;&#65311;&#36825;&#20010;&#27809;&#20160;&#20040;&#31070;&#22855;&#30340;&#65292;&#20165;&#20165;&#21482;&#26159;&#20195;&#30721;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1362102137906" FOLDED="true" ID="ID_990591400" MODIFIED="1362103212953" TEXT="Example 10.13. Reading from standard input in kgp.py">
<node CREATED="1362102197843" ID="ID_1028754114" MODIFIED="1362102222046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def openAnything(source):
    </p>
    <p>
      &#160;&#160;&#160;&#160;if source == &quot;&#8722;&quot;:&#160;&#160;&#160; -----------------------------------------------------------------------------1
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;import sys
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return sys.stdin
    </p>
    <p>
      &#160;&#160;&#160;&#160;# try to open with urllib (if source is http, ftp, or file URL)
    </p>
    <p>
      &#160;&#160;&#160;&#160;import urllib
    </p>
    <p>
      &#160;&#160;&#160;&#160;try:
    </p>
    <p>
      [... snip ...]
    </p>
  </body>
</html></richcontent>
<node CREATED="1362102365593" ID="ID_32292732" MODIFIED="1362103178187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P145
    </p>
    <p>
      This is the openAnything function from toolbox.py, which you previously examined in Section 10.1, Abstracting input sources . All you've done is add three lines of code at the beginning of the function to check if the source is &quot;&#8722;&quot;; if so, you return sys.stdin. Really, that's it! Remember, stdin is a file&#8722;like object with a read method, so the rest of the code (in kgp.py, where you call openAnything) doesn't change a bit.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#26159;&#26469;&#33258;toolbox.py&#30340;openAnything&#65292;&#36825;&#20010;&#22312;&#20320;&#20043;&#21069;&#30475;&#21040;&#30340;10.1&#31456; &#25277;&#35937;&#36755;&#20837;&#28304;&#12290; &#20320;&#21482;&#38656;&#22312;&#20989;&#25968;&#24320;&#22987;&#22788;&#22686;&#21152;&#19977;&#34892;&#20195;&#30721;&#65292;&#26816;&#26597;&#28304;&#26159;&#21542;&#20026;&#8220;-&#8221;&#65292;&#22914;&#26524;&#26159;&#65292;&#20320;&#23601;&#36820;&#22238; sys.stdin&#12290;&#23454;&#38469;&#19978;&#65292;&#23601;&#36825;&#20123;&#20869;&#23481;&#12290;&#22238;&#24518;&#19968;&#19979;&#65292;stdin &#26159;&#31867;&#19968;&#20010;&#25991;&#20214;&#23545;&#35937;&#30340;&#35835;&#21462;&#26041;&#27861;&#65292;&#25152;&#20197;&#21097;&#19979;&#30340;&#20195;&#30721;&#65288;&#22312;kgp.py&#20013;&#30340;openAnything&#65289;&#20160;&#20040;&#20063;&#19981;&#29992;&#25913;&#21464;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1362103217437" FOLDED="true" ID="ID_1738989228" MODIFIED="1364175338580" POSITION="right" TEXT="10.3. Caching node lookups">
<node CREATED="1362533566390" ID="ID_1905728141" MODIFIED="1362534288515">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P145
    </p>
    <p>
      kgp.py employs several tricks which may or may not be useful to you in your XML processing. The first one takes advantage of the consistent structure of the input documents to build a cache of nodes.
    </p>
    <p>
      A grammar file defines a series of ref elements. Each ref contains one or more p elements, which can contain a lot of different things, including xrefs. Whenever you encounter an xref, you look for a corresponding ref element with the same id attribute, and choose one of the ref element's children and parse it. (You'll see how this random choice is made in the next section.)
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      kgp.py&#21253;&#21547;&#20960;&#20010;&#23567;&#25216;&#24039;{several tricks}&#65292;&#22312;&#20320;&#30340;xml&#22788;&#29702;&#20013;&#21487;&#33021;&#20250;&#29992;&#21040;&#12290;&#31532;&#19968;&#20010;&#25216;&#24039;{advantage}&#26159;&#22312;&#27599;&#27425;&#36830;&#32493;{the consistent structure}&#36755;&#20837;&#25991;&#26723;&#26102;&#21019;&#24314;&#19968;&#20010;&#32531;&#20914;&#33410;&#28857;&#12290;
    </p>
    <p>
      &#35821;&#27861;&#25991;&#20214;&#23450;&#20041;&#20102;&#19968;&#36830;&#20018;&#30340;ref&#20803;&#32032;&#12290;&#27599;&#20010;ref&#21253;&#21547;&#19968;&#20010;&#25110;&#22810;&#20010;&#30340;p&#20803;&#32032;&#65292;&#23427;&#21487;&#20197;&#21253;&#21547;&#24456;&#22810;&#19981;&#21516;&#30340;&#19996;&#35199;&#65292;&#21253;&#21547;xrefs&#12290;&#20219;&#20309;&#26102;&#20505;&#20320;&#36935;&#21040;{encounter}xref,&#21487;&#20197;&#26597;&#35810;&#30456;&#20851;&#30340;{corresponding}&#26377;&#30456;&#21516;id&#23646;&#24615;&#30340; ref&#20803;&#32032;&#65292;&#24182;&#19988;&#36873;&#25321;&#36825;&#20010;ref&#20803;&#32032;&#30340;&#23376;&#33410;&#28857;&#36827;&#34892;&#35821;&#27861;&#20998;&#26512;&#12290;&#65288;&#20320;&#23558;&#22312;&#19979;&#19968;&#31456;&#30475;&#21040;&#36825;&#20010;&#38543;&#26426;&#36873;&#25321;&#30340;&#36807;&#31243;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1362534498968" ID="ID_1395270870" MODIFIED="1362707819328">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P145
    </p>
    <p>
      This is how you build up the grammar: define ref elements for the smallest pieces, then define ref elements which &quot;include&quot; the first ref elements by using xref, and so forth. Then you parse the &quot;largest&quot; reference and follow each xref, and eventually output real text. The text you output depends on the (random) decisions you make each time
    </p>
    <p>
      you fill in an xref, so the output is different each time.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22914;&#19979;&#26159;&#20320;&#22914;&#20309;&#21019;&#24314;&#30340;&#35821;&#27861;&#35268;&#21017;&#65306;
    </p>
    <p>
      &#20351;&#29992;&#26368;&#23567;&#30340;&#29255;&#23450;&#20041;ref&#20803;&#32032;&#65292;&#20043;&#21518;&#20877;&#23450;&#20041;ref&#20803;&#32032;&#65292;&#36890;&#36807;&#20351;&#29992;xref&#8220;&#21253;&#21547;&#8221;&#31532;&#19968;&#20010;ref&#20803;&#32032;&#65292;&#20197;&#27492;&#31867;&#25512;&#12290;&#37027;&#20040;&#20320;&#35821;&#27861;&#20998;&#26512;&#36825;&#20010;&#8220;&#26368;&#22823;&#8221;&#28041;&#21450;&#21040;&#22914;&#19979;&#30340;&#27599;&#20010;xref&#65292;&#26368;&#21518;&#36755;&#20986;&#30495;&#23454;&#30340;&#25991;&#26412;&#20869;&#23481;&#12290;&#36825;&#20010;&#25991;&#26412;&#20869;&#23481;&#20320;&#36755;&#20986;&#23450;&#20041;&#22312;&#38543;&#26426;&#30340; &#20915;&#23450;&#20320;&#27599;&#27425;&#21046;&#20316;&#30340;&#12290;
    </p>
    <p>
      [?]&#22312;&#22909;&#22909;&#24819;&#24819;&#65292;&#36825;&#20010;&#32763;&#35793;&#20063;&#22826;&#19981;&#30528;&#35843;&#20102;:)
    </p>
    <p>
      [net &#35793; &#26469;&#28304;&#65306;http://woodpecker.org.cn/diveintopython/scripts_and_streams/caching.html]
    </p>
    <p>
      <font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#35821;&#27861;&#30340;&#26500;&#24314;&#26041;&#24335;&#22914;&#19979;&#65306;&#20808;&#20026;&#26368;&#23567;&#30340;&#29255;&#27573;&#23450;&#20041;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">ref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#20803;&#32032;&#65292;&#28982;&#21518;&#20351;&#29992;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">xref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#23450;&#20041;&#8220;&#21253;&#21547;&#8221;&#31532;&#19968;&#20010;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">ref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#20803;&#32032;&#30340;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">ref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#20803;&#32032;&#65292;&#31561;&#31561;&#12290;&#28982;&#21518;&#65292;&#35299;&#26512;&#8220;&#26368;&#22823;&#30340;&#8221;&#24341;&#29992;&#24182;&#36319;&#30528;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">xref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#36339;&#26469;&#36339;&#21435;&#65292;&#26368;&#21518;&#36755;&#20986;&#30495;&#23454;&#30340;&#25991;&#26412;&#12290;&#36755;&#20986;&#30340;&#25991;&#26412;&#20381;&#36182;&#20110;&#20320;&#27599;&#27425;&#22635;&#20805;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="line-height: 23px; white-space: normal; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; font-weight: normal" class="sgmltag-element">xref</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="line-height: 23px; white-space: normal; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); word-spacing: 0px; text-transform: none; font-variant: normal; display: inline !important; float: none; font-size: medium; font-weight: normal">&#26102;&#25152;&#20570;&#30340; (&#38543;&#26426;) &#20915;&#31574;&#65292;&#25152;&#20197;&#27599;&#27425;&#30340;&#36755;&#20986;&#37117;&#26159;&#19981;&#21516;&#30340; </span></font>
    </p>
    <p>
      [popexizhi]&#30475;net&#35793; &#36824;&#26159;&#24863;&#35273;&#24456;&#26197;&#65292;&#30475;&#26469;&#35201;&#20808;&#20998;&#26512;&#19979;&#38754;&#30340;&#20869;&#23481;&#26368;&#21518;&#20877;&#22238;&#26469;&#20102;&#35299;&#36825;&#37324;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363137870203" ID="ID_1720219566" MODIFIED="1363138365625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P145
    </p>
    <p>
      This is all very flexible, but there is one downside: performance. When you find an xref and need to find the corresponding ref element, you have a problem. The xref has an id attribute, and you want to find the ref element that has that same id attribute, but there is no easy way to do that. The slow way to do it would be to get the&#160;entire list of ref elements each time, then manually&#160;loop through and look at each id attribute. The fast way is to do
    </p>
    <p>
      that once and build a cache, in the form of a dictionary.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23427;&#24456;&#28789;&#27963;{flexible},&#20294;&#21516;&#26102;&#26377;&#20010;&#32570;&#28857;{downside}:&#25191;&#34892;{performance}.&#24403;&#20320;&#26597;&#25214;xref&#24182;&#19988;&#38656;&#35201;&#26597;&#25214;&#23545;&#24212;&#30340;ref&#20803;&#32032;&#26102;&#65292;&#20320;&#35201;&#35299;&#20915;&#19968;&#20010;&#38382;&#39064;&#12290;&#36825;&#20010;xref&#26377;&#19968;&#20010;id&#23646;&#24615;&#65292;&#32780;&#20320;&#35201;&#26597;&#25214;&#30340;ref&#20803;&#32032;&#26377;&#19968;&#20010;&#30456;&#21516;&#30340;id&#23646;&#24615;&#65292;&#20294;&#26159;&#27809;&#26377;&#31616;&#21333;&#30340;&#26041;&#24335;&#26597;&#25214;&#12290;&#36739;&#24930;&#30340;&#26041;&#24335;&#26159;&#27599;&#27425;&#22312;&#25972;&#20010;&#21015;&#34920;{the entire list}&#20013;&#26597;&#25214;,&#24490;&#29615;&#25972;&#20010;&#36807;&#31243;&#24182;&#26597;&#25214;&#23545;&#24212;&#30340;id&#23646;&#24615;&#12290;&#36739;&#24555;&#30340;&#26041;&#24335;&#20570;&#19968;&#27425;&#24314;&#31435;&#19968;&#20010;&#23383;&#20856;&#26684;&#24335;&#30340;&#32531;&#23384;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363138604140" ID="ID_1956532806" MODIFIED="1363138604828" TEXT="Example 10.14. loadGrammar">
<node CREATED="1363138615281" ID="ID_1704722192" MODIFIED="1363138679031">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def loadGrammar(self, grammar):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.grammar = self._load(grammar)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.refs = {}&#160;&#160; --------------------------------------------------------------------------------------------------1 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for ref in self.grammar.getElementsByTagName(&quot;ref&quot;):-------------------------------------------<b>2</b>&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.refs[ref.attributes[&quot;id&quot;].value] = ref&#160;&#160;&#160;&#160; ------------------------------------------------------------3,4&#160;
    </p>
  </body>
</html></richcontent>
<node CREATED="1363138704703" ID="ID_1500413427" MODIFIED="1363138764468">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1 P145
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      Start by creating an empty dictionary, self.refs.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24320;&#22987;&#21019;&#24314;&#19968;&#20010;&#31354;&#23383;&#20856;self.refs
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363138794640" ID="ID_1534307372" MODIFIED="1363139157750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2 P145
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      As you saw in Section 9.5, ?Searching for elements?, getElementsByTagName returns a list of all the elements of a particular name. You easily can get a list of all the ref elements, then simply loop through that list
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#22312;Section 9.5, ?Searching for elements? &#20013;&#30475;&#21040;&#30340;&#65292;getElemetsByTagName &#36820;&#22238;&#19968;&#20010;&#21253;&#21547;&#29305;&#23450;{particular}&#21517;&#23383;&#30340;&#20840;&#37096;&#20803;&#32032;&#21015;&#34920;&#12290;&#20320;&#21487;&#20197;&#26041;&#20415;&#22320;&#24471;&#21040;&#19968;&#20010;&#21253;&#21547;&#20840;&#37096;&#30340;ref&#20803;&#32032;&#30340;&#21015;&#34920;&#65292;&#36890;&#36807;&#31616;&#21333;&#30340;&#36825;&#20010;&#21015;&#34920;&#24490;&#29615;&#24471;&#21040;&#24819;&#35201;&#30340;&#20869;&#23481;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363139268312" ID="ID_836674555" MODIFIED="1363139649218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3 P145
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      As you saw in Section 9.6, ?Accessing element attributes?, you can access individual attributes of an element by name, using standard dictionary syntax. So the keys of the self.refs dictionary will be the values of the id attribute of each ref element.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#22312;Section 9.6, ?Accessing element attributes? &#30475;&#21040;&#30340;&#65292;&#20320;&#21487;&#20197;&#20351;&#29992;&#26631;&#20934;&#23383;&#20856;&#35821;&#27861;&#65292;&#36890;&#36807;&#21517;&#23383;&#21333;&#29420;&#23384;&#21462;&#27599;&#20010;&#20803;&#32032;&#30340;&#23646;&#24615;&#12290;&#25152;&#20197;self.refs&#23383;&#20856;&#20013;&#30340;&#38190;&#20540;&#23558;&#26159;&#27599;&#20010;ref&#20803;&#32032;&#30340;id&#23646;&#24615;&#30340;&#20540;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363140072468" ID="ID_1330802080" MODIFIED="1363311212187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4 P145
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      The values of the self.refs dictionary will be the ref elements themselves. As you saw in Section 9.3, ?Parsing XML?, each element, each node, each comment, each piece of text in a parsed XML document is an object.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      self.refs &#23383;&#20856;&#20013;&#30340;&#20540;&#37117;&#26159; ref&#20803;&#32032;&#33258;&#36523;&#12290;&#23601;&#20687;&#20320;&#22312;Section 9.3, ?Parsing XML?&#20013;&#30475;&#21040;&#30340;&#27599;&#19968;&#20010;&#20803;&#32032;&#65292;&#27599;&#19968;&#20010;&#33410;&#28857;&#65292;&#27599;&#19968;&#20010;&#27880;&#37322;{comment}&#65292;&#27599;&#19968;&#29255;&#25991;&#26412;&#20869;&#23481; &#22312;xml&#25991;&#26723;&#20013;&#37117;&#26159;&#19968;&#20010;&#23545;&#35937;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1363311261687" ID="ID_616175173" MODIFIED="1363311394406">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P145
    </p>
    <p>
      Once you build this cache, whenever you come across an xref and need to find the ref element with the same id attribute, you can simply look it up in self.refs.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#19968;&#26086;&#20320;&#21019;&#24314;&#20102;&#32531;&#23384;&#65292;&#20219;&#20309;&#26102;&#20505;&#20320;&#24320;&#22987;&#23384;&#20648;xref&#25110;&#26159;&#38656;&#35201;&#26597;&#25214;ref&#20803;&#32032;&#30340;&#30456;&#21516;id&#23646;&#24615;&#26102;&#65292;&#20320;&#21487;&#20197;&#22312;self.refs&#20013;&#26041;&#20415;&#30340;&#26597;&#25214;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363311507578" ID="ID_687195350" MODIFIED="1363311516421" TEXT="Example 10.15. Using the ref element cache">
<node CREATED="1363311527859" ID="ID_898994272" MODIFIED="1363311531671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;def do_xref(self, node):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;id = node.attributes[&quot;id&quot;].value
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.parse(self.randomChildElement(self.refs[id]))
    </p>
  </body>
</html></richcontent>
<node CREATED="1363311564062" ID="ID_910186953" MODIFIED="1363311631671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      You'll explore the randomChildElement function in the next section.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#23558;&#22312;&#19979;&#31456;&#30475;&#21040;randomChildElement &#20989;&#25968;&#30340;&#35299;&#37322;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1363311681515" FOLDED="true" ID="ID_396796716" MODIFIED="1364175317768" POSITION="right" TEXT="10.4. Finding direct children of a node">
<node CREATED="1363311874468" ID="ID_1666241329" MODIFIED="1363312489359">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      Another useful techique when parsing XML documents is finding all the direct child elements of a particular element.For instance, in the grammar files, a ref element can have several p elements, each of which can contain many things, including other p elements. You want to find just the p elements that are children of the ref, not p elements that are children of other p elements.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24403;&#20998;&#26512;xml&#25991;&#26723;&#30340;&#35821;&#27861;&#26102;&#21478;&#19968;&#20010;&#26377;&#29992;&#30340;&#25216;&#24039;{techique}&#26159;&#26597;&#25214;&#26576;&#20010;&#29305;&#23450;&#20803;&#32032;&#30340;&#20840;&#37096;&#23376;&#33410;&#28857;&#12290;&#22312;&#36825;&#20010;&#35821;&#27861;&#25991;&#20214;&#20013;&#20030;&#20010;&#20363;&#23376;&#65292;&#19968;&#20010;ref&#20803;&#32032;&#21487;&#33021;&#29992;&#20960;&#20010;p&#20803;&#32032;&#65292;&#23427;&#20204;&#20013;&#30340;&#27599;&#20010;&#21487;&#33021;&#37117;&#21253;&#21547;&#65292;&#26377;&#21478;&#22806;&#19968;&#20123;p&#20803;&#32032;&#12290;&#20320;&#20165;&#20165;&#24819;&#26597;&#25214;&#19968;&#19979;&#21253;&#21547;p&#20803;&#32032;&#30340;ref&#33410;&#28857;&#65292;&#32780;&#19981;&#26159;&#27809;&#26377;p&#20803;&#32032;&#30340;&#20316;&#20026;&#23376;&#33410;&#28857;&#30340;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363312542593" ID="ID_1535172227" MODIFIED="1363829384984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      You might think you could simply use getElementsByTagName for this, but you can't. getElementsByTagName searches recursively and returns a single list for all the elements it finds. Since p elements can contain other p elements, you can't use getElementsByTagName, because it would return nested p elements that you don't want. To find only direct child elements, you'll need to do it yourself.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#21487;&#33021;&#35748;&#20026;&#20320;&#21487;&#20197;&#24819;&#36825;&#26679;&#31616;&#21333;&#30340;&#20351;&#29992;getElementsByTagName&#65292;&#20294;&#20320;&#19981;&#33021;&#36882;&#24402;&#30340;&#20351;&#29992;getElementsByTagName &#25628;&#32034;&#65292;&#26469;&#36820;&#22238;&#19968;&#20010;&#23427;&#21487;&#20197;&#26597;&#35810;&#21040;&#30340;&#20840;&#37096;&#20803;&#32032;&#30340;&#23383;&#31526;&#20018;&#12290;&#22914;&#26524;p&#21253;&#21547;&#20854;&#20182;&#30340;p&#20803;&#32032;&#65292;&#20320;&#19981;&#33021;&#20351;&#29992;getElementsByTagName&#65292;&#22240;&#20026;&#23427;&#23558;&#36820;&#22238;&#19968;&#20010;&#20320;&#19981;&#38656;&#38656;&#35201;&#30340;&#23884;&#22871;&#30340;p&#20803;&#32032;&#12290;&#20320;&#38656;&#35201;&#20570;&#30340;&#26159;&#30452;&#25509;&#26597;&#25214;&#23376;&#20803;&#32032; &#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363829510546" FOLDED="true" ID="ID_956697395" MODIFIED="1364175315893" TEXT="Example 10.16. Finding direct child elements">
<node CREATED="1363829518781" ID="ID_1436585867" MODIFIED="1363829556343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def randomChildElement(self, node):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;choices = [e for e in node.childNodes
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if e.nodeType == e.ELEMENT_NODE] -----------------------1&#65292;2&#65292;3
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;chosen = random.choice(choices)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ---------------------------4
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return chosen
    </p>
  </body>
</html></richcontent>
<node CREATED="1363829731375" ID="ID_1961793638" MODIFIED="1363829844781">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;] P146
    </p>
    <p>
      As you saw in Example 9.9, ?Getting child nodes?, the childNodes attribute returns a list of all the child nodes of an element.
    </p>
    <p>
      [pope&#35793;] &#23601;&#20687;&#20320;&#22312;Example 9.9, ?Getting child nodes? &#20013;&#30475;&#21040;&#30340;childNodes &#23646;&#24615;&#36820;&#22238;&#19968;&#20010;&#27492;&#20803;&#32032;&#30340;&#23376;&#33410;&#28857;&#21015;&#34920;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363830049937" ID="ID_1912591308" MODIFIED="1363830228953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      However, as you saw in Example 9.11, ?Child nodes can be text?, the list returned by childNodes contains all different types of nodes, including text nodes. That's not what you're looking for here. You only want the children that are elements.
    </p>
    <p>
      [pope&#35793;]&#26080;&#35770;&#22914;&#20309;&#65292;&#23601;&#20687;&#20320;&#22312;Example 9.11, ?Child nodes can be text?&#20013;&#30475;&#21040;&#30340;&#21015;&#34920;&#36820;&#22238;&#19968;&#20010;&#23376;&#33410;&#28857;&#65292;&#23427;&#21253;&#21547;&#20840;&#37096;&#19981;&#21516;&#31867;&#22411;&#30340;&#33410;&#28857;&#65292;&#20063;&#21253;&#25324;&#25991;&#26412;&#33410;&#28857;&#12290;&#37027;&#20010;&#21487;&#19981;&#26159;&#20320;&#35201;&#26597;&#25214;&#30340;&#65292;&#20320;&#21482;&#38656;&#35201;&#23376;&#33410;&#28857;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363830368984" ID="ID_148466461" MODIFIED="1363831442453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      Each node has a nodeType attribute, which can be ELEMENT_NODE, TEXT_NODE, COMMENT_NODE, or any number of other values. The complete list of possible values is in the __init__.py file in the xml.dom package. (See Section 9.2, ?Packages? for more on packages.) But you're just interested in nodes that are elements, so you can filter the list to only include those nodes whose nodeType is ELEMENT_NODE.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#27599;&#19968;&#20010;&#33410;&#28857;&#37117;&#26377;&#33410;&#28857;&#31867;&#22411;&#30340;&#23646;&#24615;&#65292;&#21487;&#33021;&#26159;ELEMENT_NODE, TEXT_NODE, COMMENT_NODE,&#25110;&#32773;&#20219;&#20309;&#25968;&#30446;&#30340;&#20854;&#20182;&#20540;&#12290;&#22312;xml.dom &#21253;&#30340;__init__.py &#25991;&#20214;&#20013;&#23436;&#25972;&#30340;&#21015;&#20986;&#20102;&#20840;&#37096;&#21487;&#33021;&#30340;&#20540;&#65288;&#21442;&#35265;9.2, ?Packages? &#20102;&#35299;&#36825;&#20010;&#21253;&#30340;&#26356;&#22810;&#20449;&#24687;&#65289;&#12290;&#20294;&#20320;&#20165;&#20165;&#23545;&#36825;&#20010;&#20013;&#30340;&#20803;&#32032;&#33410;&#28857;&#24863;&#20852;&#36259;&#65292;&#25152;&#20197;&#20320;&#21487;&#20197;&#36807;&#28388;&#19968;&#19979;ELEMENT_NODE&#31867;&#22411;&#12290;
    </p>
    <p>
      [?]any number &#22914;&#20309;&#32763;&#35793;&#21602;&#65311;&#12304;ok &#20102;&#65292;&#22312;xml.dom&#21253;&#20013;&#30340;__init__.py&#20013;&#32473;&#20986;&#20102;&#36825;&#20123;&#31867;&#22411;&#30340;&#20840;&#37096;&#23450;&#20041;&#65292;&#26159;&#25968;&#23383;&#31867;&#22411;&#30340;&#65292;&#22914;&#19979;&#65306;
    </p>
    <p>
      class Node:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;&quot;&quot;Class giving the NodeType constants.&quot;&quot;&quot;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;# DOM implementations may use this as a base class for their own
    </p>
    <p>
      &#160;&#160;&#160;&#160;# Node implementations.&#160;&#160;If they don't, the constants defined here
    </p>
    <p>
      &#160;&#160;&#160;&#160;# should still be used as the canonical definitions as they match
    </p>
    <p>
      &#160;&#160;&#160;&#160;# the values given in the W3C recommendation.&#160;&#160;Client code can
    </p>
    <p>
      &#160;&#160;&#160;&#160;# safely refer to these values in all tests of Node.nodeType
    </p>
    <p>
      &#160;&#160;&#160;&#160;# values.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;ELEMENT_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;ATTRIBUTE_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 2
    </p>
    <p>
      &#160;&#160;&#160;&#160;TEXT_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 3
    </p>
    <p>
      &#160;&#160;&#160;&#160;CDATA_SECTION_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 4
    </p>
    <p>
      &#160;&#160;&#160;&#160;ENTITY_REFERENCE_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 5
    </p>
    <p>
      &#160;&#160;&#160;&#160;ENTITY_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 6
    </p>
    <p>
      &#160;&#160;&#160;&#160;PROCESSING_INSTRUCTION_NODE = 7
    </p>
    <p>
      &#160;&#160;&#160;&#160;COMMENT_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 8
    </p>
    <p>
      &#160;&#160;&#160;&#160;DOCUMENT_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 9
    </p>
    <p>
      &#160;&#160;&#160;&#160;DOCUMENT_TYPE_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 10
    </p>
    <p>
      &#160;&#160;&#160;&#160;DOCUMENT_FRAGMENT_NODE&#160;&#160;&#160;&#160;&#160;&#160;= 11
    </p>
    <p>
      &#160;&#160;&#160;&#160;NOTATION_NODE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 12
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      #ExceptionCode
    </p>
    <p>
      INDEX_SIZE_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 1
    </p>
    <p>
      DOMSTRING_SIZE_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 2
    </p>
    <p>
      HIERARCHY_REQUEST_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 3
    </p>
    <p>
      WRONG_DOCUMENT_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 4
    </p>
    <p>
      INVALID_CHARACTER_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 5
    </p>
    <p>
      NO_DATA_ALLOWED_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 6
    </p>
    <p>
      NO_MODIFICATION_ALLOWED_ERR&#160;&#160;&#160;&#160;= 7
    </p>
    <p>
      NOT_FOUND_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 8
    </p>
    <p>
      NOT_SUPPORTED_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 9
    </p>
    <p>
      INUSE_ATTRIBUTE_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 10
    </p>
    <p>
      INVALID_STATE_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 11
    </p>
    <p>
      SYNTAX_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 12
    </p>
    <p>
      INVALID_MODIFICATION_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 13
    </p>
    <p>
      NAMESPACE_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 14
    </p>
    <p>
      INVALID_ACCESS_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 15
    </p>
    <p>
      VALIDATION_ERR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 16
    </p>
    <p>
      &#12305;
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1363831455875" ID="ID_1557822731" MODIFIED="1364175153627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      Once you have a list of actual elements, choosing a random one is easy. Python&#160;comes with a module called random which includes several useful functions. The random.choice function takes a list of any number of items and returns a random item. For example, if the ref elements contains several p elements, then choices would be a list of p elements, and chosen would end up being assigned exactly one of them, selected at random.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#19968;&#26086;&#20320;&#26377;&#20102;&#19968;&#20010;&#21253;&#21547;&#23454;&#38469;&#20803;&#32032;&#32452;&#25104;&#30340;&#21015;&#34920;&#65292;&#38543;&#26426;&#36873;&#19968;&#20010;&#23601;&#24456;&#23481;&#26131;&#20102;&#12290;Python &#26377;&#19968;&#20010;&#21483;&#20570;&#38543;&#26426;&#30340;&#27169;&#24335;&#65292;&#23427;&#21253;&#21547;&#19968;&#20123;&#24456;&#29992;&#20110;&#30340;&#20989;&#25968;&#12290;&#36825;&#20010;&#38543;&#26426;&#36873;&#25321;&#20989;&#25968;&#21487;&#20197;&#20174;&#20219;&#20309;&#39033;&#30446;&#21015;&#34920;&#20013;&#36820;&#22238;&#19968;&#20010;&#38543;&#26426;&#39033;&#30446;&#12290;&#20363;&#22914;:&#22914;&#20309;ref&#20803;&#32032;&#21253;&#21547;&#19968;&#20123;p&#20803;&#32032;&#65292;&#37027;&#20040;chocies &#23601;&#26159;&#36825;&#20010;p&#20803;&#32032;&#21015;&#34920;&#65292;&#32780; chosen &#23558;&#26159;&#20174;&#20182;&#20204;&#20043;&#20013;&#38543;&#26426;&#36873;&#25321;&#30340;&#19968;&#20010;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1364175319471" FOLDED="true" ID="ID_416609715" MODIFIED="1367977162734" POSITION="right" TEXT="10.5. Creating separate handlers by node type">
<node CREATED="1364175469237" ID="ID_1948350295" MODIFIED="1364519945359">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P146
    </p>
    <p>
      The third useful XML processing tip involves separating your code into logical functions, based on node types and element names. Parsed XML documents are made up of various types of nodes, each represented by a Python object. The root level of the document itself is represented by a Document object. The Document then contains one or more Element objects (for actual XML tags), each of which may contain other Element objects, Text objects (for bits of text), or Comment objects (for embedded comments). Python makes it easy to write a dispatcher to separate the logic for each node type.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#31532;&#19977;&#26377;&#30410;&#30340;XML&#36827;&#31243;&#25216;&#24039;&#65292; &#22522;&#20110;&#33410;&#28857;&#31867;&#22411;&#21644;&#20803;&#32032;&#21517;&#31216; ,&#20351;&#29992;&#36923;&#36753;&#20989;&#25968;&#65292;&#20998;&#31163;&#20320;&#30340;code&#12290;&#35821;&#27861;&#20998;&#26512;XML&#25991;&#26723;&#26159;&#30001;&#21508;&#31181;{various}&#31867;&#22411;&#30340;nodes&#32452;&#25104;&#65292;&#27599;&#20010;&#20195;&#34920;(represented)&#19968;&#31181;Python&#23545;&#35937;&#12290;root&#32423;&#21035;&#30340;&#25991;&#26723; &#20195;&#34920;Document&#23545;&#35937;&#12290;&#36825;&#20010;Document &#21253;&#21547;&#19968;&#20010;&#25110;&#26356;&#22810;&#30340;Element &#23545;&#35937;&#65288;&#20363;&#22914;:xml &#26631;&#31614;&#65289;&#65292;&#36825;&#20043;&#20013;&#30340;&#27599;&#19968;&#20010;&#37117;&#21253;&#21547;&#20854;&#20182;&#30340;Element&#23545;&#35937;&#65292;&#25991;&#26723;&#23545;&#35937;&#65288;&#20363;&#22914;&#25991;&#26412;&#30340;&#20108;&#36827;&#21046;bit&#23383;&#33410;&#65289;&#65292;&#25110;&#32773;&#27880;&#37322;&#23545;&#35937;(&#20363;&#22914;&#20869;&#23884;&#30340;&#27880;&#37322;)&#12290;Python&#20351;&#24471;&#23427;&#21487;&#20197;&#31616;&#20415;&#30340;&#32534;&#20889;&#20998;&#31163;&#27599;&#31181;&#31867;&#22411;&#33410;&#28857;&#36923;&#36753;&#30340;&#35843;&#24230;&#22120; &#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1364519964593" FOLDED="true" ID="ID_890053130" MODIFIED="1364522139859" TEXT="Example 10.17. Class names of parsed XML objects">
<node CREATED="1364520549015" ID="ID_1448543015" MODIFIED="1364520610343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; from xml.dom import minidom
    </p>
    <p>
      &gt;&gt;&gt; xmldoc = minidom.parse('kant.xml')--------------------------------1
    </p>
    <p>
      &gt;&gt;&gt; xmldoc
    </p>
    <p>
      &lt;xml.dom.minidom.Document instance at 0x01359DE8&gt;
    </p>
    <p>
      &gt;&gt;&gt; xmldoc.__class__&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------2
    </p>
    <p>
      &lt;class xml.dom.minidom.Document at 0x01105D40&gt;
    </p>
    <p>
      &gt;&gt;&gt; xmldoc.__class__.__name__&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;--------------------------------3
    </p>
    <p>
      'Document'
    </p>
  </body>
</html></richcontent>
<node CREATED="1364520639171" ID="ID_839564161" MODIFIED="1364520737109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;] P147
    </p>
    <p>
      Assume for a moment that kant.xml is in the current directory.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20551;&#23450;kant.xml&#22312;&#24403;&#21069;&#30446;&#24405;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1364520772656" ID="ID_847993629" MODIFIED="1364521154937">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      As you saw in Section 9.2, ?Packages?, the object returned by parsing an XML document is a Document object, as defined in the minidom.py in the xml.dom package. As you saw in Section 5.4, ?Instantiating Classes?, __class__ is built&#8722;in attribute of every Python object.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#22312;Section 9.2, ?Packages?&#30475;&#21040;&#30340;&#65292;&#20316;&#20026;xml.dom&#21253;&#20013;&#30340;minidom.py&#30340;&#23450;&#20041;&#65292;&#36825;&#20010;&#23545;&#35937;&#36890;&#36807;xml&#25991;&#26723;&#35821;&#27861;&#20998;&#26512;&#36820;&#22238;&#20102;&#19968;&#20010;&#25991;&#26723;&#23545;&#35937;&#12290;&#23601;&#20687;&#20320;&#22312;Section 5.4, ?Instantiating Classes? &#20013;&#35265;&#21040;&#30340; __class__&#26159;&#27599;&#20010;Python&#23545;&#35937;&#30340;&#20869;&#23884;&#23646;&#24615;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1364521228156" ID="ID_1754146241" MODIFIED="1364521413625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      Furthermore, __name__ is a built&#8722;in attribute of every Python class, and it is a string. This string is not mysterious; it's the same as the class name you type when you define a class yourself. (See Section 5.3, ?Defining Classes?.)
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#21478;&#22806;&#65292;__name__&#26159;&#27599;&#20010;Python&#31867;&#30340;&#20869;&#23884;&#23646;&#24615;&#65292;&#23427;&#26159;&#23383;&#31526;&#20018;&#31867;&#22411;&#30340;&#12290;&#36825;&#20010;&#23383;&#31526;&#20018;&#27809;&#26377;&#20160;&#20040;&#31070;&#31192;&#30340;&#65307;&#23427;&#26159;&#21644;&#20320;&#23450;&#20041;&#31867;&#22411;&#26102;&#30340;&#31867;&#21517;&#31216;&#26159;&#19968;&#26679;&#30340;&#65288;&#21442;&#35265;Section 5.3, ?Defining Classes?.&#65289;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1364521647312" ID="ID_1346835075" MODIFIED="1364522128531">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      Fine, so now you can get the class name of any particular XML node (since each XML node is represented as a Python object). How can you use this to your advantage to separate the logic of parsing each node type? The answer is getattr, which you first saw in Section 4.4, ?Getting Object References With getattr?
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24456;&#22909;&#65292;&#25152;&#20197;&#29616;&#22312;&#20320;&#21487;&#20197;&#30693;&#36947;&#22914;&#20309;&#29305;&#23450;(particular)XMLnode&#30340;&#31867;&#30340;&#21517;&#31216;&#20102;&#65288;&#22240;&#20026;&#27599;&#20010;XML&#33410;&#28857;&#37117;&#26159;&#19968;&#31181;Python&#23545;&#35937;&#65289;&#12290;&#37027;&#20320;&#22914;&#20309;&#20351;&#29992;&#36825;&#20010;&#20248;&#21183;{advantage}&#26469;&#22788;&#29702;&#35821;&#27861;&#20998;&#26512;&#33410;&#28857;&#31867;&#22411;&#30340;&#36923;&#36753;&#21602;&#65311;&#31572;&#26696;&#26159;getattr&#65292;&#20320;&#39318;&#27425;&#30475;&#21040;&#23427;&#26159;&#22312;Section 4.4, ?Getting Object References With getattr?&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1364522140718" FOLDED="true" ID="ID_655982237" MODIFIED="1365556798906" TEXT="Example 10.18. parse, a generic XML node dispatcher">
<node CREATED="1364952195906" ID="ID_1527645579" MODIFIED="1364952235265">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def parse(self, node):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;parseMethod = getattr(self, &quot;parse_%s&quot; % node.__class__.__name__) ------------------------1,2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;parseMethod(node) ----------------------------------------------------------------------------------------------3
    </p>
  </body>
</html></richcontent>
<node CREATED="1364952316453" ID="ID_392558629" MODIFIED="1364952847625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      First off, notice that you're constructing a larger string based on the class name of the node&#160;you were passed (in the node argument). So if you're passed a Document node, you're constructing the string 'parse_Document', and so forth.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#39318;&#20808;&#65292;&#35831;&#27880;&#24847;&#21040;&#20320;&#26366;&#26500;&#36896;&#19968;&#20010;&#22522;&#20110;node&#21517;&#31216;&#30340;&#22823;&#23383;&#31526;&#20018;&#65288;&#22312;node&#23646;&#24615;&#20013;&#65289;&#12290;&#25152;&#20197;&#22914;&#26524;&#20320;&#22788;&#29702;&#36807;&#19968;&#20010;&#25991;&#26723;&#33410;&#28857;&#65292;&#20320;&#23601;&#26500;&#36896;&#20102;&#19968;&#20010;'parse_Document'&#33410;&#28857;&#65292;&#20197;&#27492;&#31867;&#25512;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1364952955031" ID="ID_58483916" MODIFIED="1364953051953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      Now you can treat that string as a function name, and get a reference to the function itself using getattr
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#21487;&#20197;&#22788;&#29702;&#20989;&#25968;&#21517;&#31216;&#30340;&#23383;&#31526;&#20018;&#65292;&#24182;&#19988;&#20351;&#29992;getattr&#33719;&#24471;&#20989;&#25968;&#30340;&#24341;&#29992;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1364953144453" ID="ID_1314212284" MODIFIED="1364953411906">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
    <p>
      [&#21407;&#25991;]P147
    </p>
    <p>
      Finally, you can call that function and pass the node itself as an argument. The next example shows the definitions of each of these functions
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#26368;&#21518;&#65292;&#20320;&#21487;&#20197;&#35843;&#29992;&#20989;&#25968;&#24182;&#20351;&#29992;node&#20316;&#20026;&#21442;&#25968;&#65292;&#19979;&#19968;&#20010;&#20363;&#23376;&#20013;&#23637;&#31034;&#27599;&#20010;&#20989;&#25968;&#30340;&#23450;&#20041;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1364952308781" ID="ID_629126975" MODIFIED="1364952308781" TEXT=""/>
</node>
<node CREATED="1364953567656" FOLDED="true" ID="ID_1828506797" MODIFIED="1367977137843" TEXT="Example 10.19. Functions called by the parse dispatcher">
<node CREATED="1364953584296" ID="ID_389651601" MODIFIED="1364953662109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;def parse_Document(self, node): ------------------------------------------------1
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.parse(node.documentElement)
    </p>
    <p>
      &#160;&#160;&#160;&#160;def parse_Text(self, node):&#160;&#160;&#160; ------------------------------------------------2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;text = node.data
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if self.capitalizeNextWord:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.pieces.append(text[0].upper())
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.pieces.append(text[1:])
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.capitalizeNextWord = 0
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;else:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.pieces.append(text)
    </p>
    <p>
      &#160;&#160;&#160;&#160;def parse_Comment(self, node): ------------------------------------------------3
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pass
    </p>
    <p>
      &#160;&#160;&#160;&#160;def parse_Element(self, node): ------------------------------------------------4
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;handlerMethod = getattr(self, &quot;do_%s&quot; % node.tagName)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;handlerMethod(node)
    </p>
  </body>
</html></richcontent>
<node CREATED="1365557071546" ID="ID_582497836" MODIFIED="1365989525056">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1P148
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      parse_Document is only ever called once, since there is only one Document node in an XML document,and only one Document object in the parsed XML representation. It simply&#160;turns around and parses the root element of the grammar file.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      parse_Document &#21482;&#34987;&#35843;&#29992;&#19968;&#27425;&#65292;&#22240;&#20026;&#22312;XML&#25991;&#26723;&#20013;&#21482;&#26377;&#19968;&#20010;Document &#33410;&#28857;&#65292;&#24182;&#19988;&#22312;&#35821;&#27861;&#20998;&#26512;XML&#30340;&#32467;&#26500;{representation}&#20013;&#21482;&#26377;&#19968;&#20010;Document&#23545;&#35937;&#12290;&#23427;&#31616;&#21333;&#22320;&#36820;&#22238;&#35821;&#27861;&#20998;&#26512;&#25991;&#20214;&#30340;&#26681;&#20803;&#32032;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365558066640" ID="ID_859203323" MODIFIED="1365989531462">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2 P148
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      parse_Text is called on nodes that represent bits of text. The function itself does some special processing to handle automatic capitalization of the first word of a sentence, but otherwise simply appends the represented text to a list.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      parse_Text &#22312;&#35299;&#37322;{represent}&#25991;&#26412;&#22359;&#26102;&#34987;&#35843;&#29992;&#12290;&#27492;&#20989;&#25968;&#29305;&#21035;&#22788;&#29702;&#20102;&#19968;&#20010;&#27573;&#33853;&#30340;&#33258;&#21160;&#35774;&#32622;&#39318;&#23383;&#31526;&#22823;&#20889;&#65292;&#20854;&#20182;&#20869;&#23481;&#21482;&#26159;&#31616;&#21333;&#30340;&#28155;&#21152;&#21040;&#25991;&#26412;&#21015;&#34920;&#20013;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365558120968" ID="ID_1561110417" MODIFIED="1365989539400">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3 P148
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      parse_Comment is just a pass, since you don't care about embedded comments in the grammar files. Note, however, that you still need to define the function and explicitly make it do nothing. If the function did not exist, the generic parse function would fail as soon as it stumbled on a comment, because it would try to find the non&#8722;existent parse_Comment function. Defining a separate function for every node type, even ones you don't use, allows the generic parse function to stay simple and dumb.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      parse_Comment &#21482;&#26159;pass&#65292;&#22240;&#20026;&#20320;&#19981;&#20851;&#24515;&#31243;&#24207;&#25991;&#20214;&#23884;&#20837;&#30340;comments&#12290;&#27880;&#24847;&#65292;&#26080;&#35770;&#22914;&#20309;&#65292;&#20320;&#20173;&#38656;&#35201;&#23450;&#20041;&#20989;&#25968;&#21644;&#24182;&#19988;&#26126;&#30830;&#25351;&#20986;&#23427;&#19981;&#29992;&#20570;&#20160;&#20040;&#12290;&#22914;&#26524;&#20989;&#25968;&#19981;&#23384;&#22312;&#65292;&#19968;&#33324;&#35821;&#27861;&#20998;&#26512;&#36935;&#21040;{stumbled}comment&#23601;&#20250;&#22833;&#36133;&#65292;&#22240;&#20026;&#23427;&#23581;&#35797;&#23547;&#25214;&#19981;&#23384;&#22312;&#30340;parse_Comment&#20989;&#25968;&#12290;&#20026;&#27599;&#31181;&#33410;&#28857;&#31867;&#22411;&#23450;&#20041;&#23545;&#24212;&#30340;&#20989;&#25968;&#65292;&#21363;&#20351;&#26159;&#20320;&#19981;&#20351;&#29992;&#30340;&#20801;&#35768;&#36890;&#24120;&#30340;&#35821;&#27861;&#20998;&#26512;&#20160;&#20040;&#20063;&#19981;&#20570;&#23601;&#21487;&#20197;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365989675634" ID="ID_253327261" MODIFIED="1365990823369">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4P148
    </p>
    <p>
      <b><font size="4">The parse_Element method is actually itself a dispatcher, based on the name of the element's tag. The basic idea is the same:&#160;take what distinguishes elements from each other (their tag names) and dispatch to a separate function for each of them. You construct a string like 'do_xref' (for an &lt;xref&gt; tag), find a function of that name, and call it. And so forth for each of the other tag names that might be found in the course of parsing a grammar file (&lt;p&gt; tags, &lt;choice&gt; tags).</font></b>
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      parse_Element &#26041;&#27861;&#23454;&#38469;&#19978;&#65292;&#26377;&#22522;&#20110;&#20803;&#32032;&#26631;&#31614;&#21517;&#31216;&#30340;&#65292;&#23427;&#33258;&#24049;&#30340;&#35843;&#24230;&#22120;{dispatcher}&#12290;&#22522;&#20110;&#30456;&#21516;&#30340;&#29702;&#24565;&#22788;&#29702;:&#20351;&#29992; &#21333;&#29420;&#30340;&#65288;&#23427;&#20204;&#26631;&#31614;&#30340;&#21517;&#31216;&#65289;&#21306;&#20998;&#20803;&#32032; &#24182;&#19988;&#20026;&#27599;&#20010;&#35843;&#29992;&#29305;&#27530;&#30340;&#20989;&#25968;&#12290;[?]&quot;<b><font size="4">&#160; take what distinguishes elements from each other (their tag names) and dispatch to a separate function for each of them</font></b>&quot;&#32763;&#35793;&#30340;&#22909;&#32416;&#32467;&#65292;&#21442;&#32771;&#19968;&#19979;&#21035;&#20154;&#30340;&#21543;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1367976537218" ID="ID_665917338" MODIFIED="1367977118359">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P148
    </p>
    <p>
      In this example, the dispatch functions parse and parse_Element simply find other methods in the same class. If your processing is very complex (or you have many different tag names), you could break up your code into separate modules, and use dynamic importing to import each module and call whatever functions you needed. Dynamic importing will be discussed in Chapter 16, Functional Programming.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#36825;&#20010;&#20363;&#23376;&#20013;&#65292;&#35843;&#29992;&#21151;&#33021;(dispatch functions) parse &#21644; parse_Element &#22312;&#21516;&#19968;&#20010;&#31867;&#20013;&#31616;&#21333;&#30340;&#26597;&#25214;&#20854;&#20182;&#26041;&#27861;&#12290;&#22914;&#26524;&#20320;&#30340;&#22788;&#29702;&#27493;&#39588;&#38750;&#24120;&#22797;&#26434;&#65288;&#25110;&#32773;&#20320;&#26377;&#24456;&#22810;&#19981;&#21516;&#30340;&#26631;&#31614;&#21517;&#31216;&#65289;&#65292;&#20320;&#20498;&#26159;&#24212;&#35813;&#23558;&#20320;&#30340;&#20195;&#30721;&#20998;&#25955;&#21040;&#29420;&#31435;&#30340;&#27169;&#22359;&#65292;&#24182;&#22312;&#20320;&#38656;&#35201;&#20351;&#29992;&#26102;&#21160;&#24577;&#23548;&#20837;&#27169;&#22359;&#12290;&#21160;&#24577;&#23548;&#20837;&#23558;&#22312;16&#31456; Functional Programming&#35752;&#35770;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1367977157109" ID="ID_949273232" MODIFIED="1367977159156" POSITION="right" TEXT="10.6. Handling command&#x2212;line arguments">
<node CREATED="1367977371187" ID="ID_5986725" MODIFIED="1368667925011">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P148
    </p>
    <p>
      Python fully supports creating programs that can be run on the command line, complete with command&#8722;line arguments and either short&#8722; or long&#8722;style flags to specify various options. None of this is XML&#8722;specific, but this script makes good use of command&#8722;line processing, so it seemed like a good time to mention it.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      Python&#23436;&#20840;&#25903;&#25345;&#22312;&#21629;&#20196;&#34892;&#19978;&#36816;&#34892;&#30340;&#31243;&#24207;&#65292;&#22788;&#29702;&#21629;&#20196;&#34892;&#21442;&#25968;&#26080;&#35770;&#26159;&#30701;&#26684;&#24335;&#65292;&#36824;&#26159;&#38271;&#26684;&#24335;&#26631;&#35760;&#26631;&#35760;&#30340;&#36873;&#39033;&#20869;&#23481;&#37117;&#26159;&#21487;&#20197;&#30340;&#12290;&#36825;&#20010;&#19981;&#26159;xml&#29305;&#24615;&#65292;&#20294;&#26159;&#36825;&#20010;&#33050;&#26412;&#21487;&#20197;&#24456;&#22909;&#30340;&#36816;&#34892;&#22312;&#21629;&#20196;&#34892;&#36827;&#31243;&#65292;&#25152;&#20197;&#23427;&#30475;&#36215;&#26469;&#20687;&#19968;&#20010;&#19981;&#38169;&#30340;&#25552;&#21450;&#30340;&#26102;&#26426;
    </p>
    <p>
      
    </p>
    <p>
      It's difficult to talk about command&#8722;line processing without understanding how command&#8722;line arguments are exposed to your Python program, so let's write a simple program to see them.
    </p>
    <p>
      &#27809;&#26377;&#29702;&#35299;&#21629;&#20196;&#34892;&#21442;&#25968;&#23601;&#35848;&#35770;&#21629;&#20196;&#34892;&#36827;&#31243;&#23637;&#29616;&#20986;&#20320;&#30340;python&#31243;&#24207;&#65292;&#26159;&#20214;&#24456;&#38590;&#30340;&#20107;&#20214;&#65292;&#25152;&#20197;&#35753;&#25105;&#20204;&#20889;&#20010;&#31616;&#21333;&#31243;&#24207;&#20102;&#35299;&#19968;&#19979;&#23427;&#20204;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368668047152" ID="ID_1958699461" MODIFIED="1368668047917" TEXT="Example 10.20. Introducing sys.argv">
<node CREATED="1368668088871" ID="ID_884196178" MODIFIED="1368668157964">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P148
    </p>
    <p>
      If you have not already done so, you can download this and other examples (http://diveintopython.org/download/diveintopython&#8722;examples&#8722;5.4.zip) used in this book.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22914;&#26524;&#20320;&#36824;&#27809;&#26377;&#65292;&#21487;&#20197;&#22312;http://diveintopython.org/download/diveintopython&#8722;examples&#8722;5.4.zip &#19979;&#36733;&#21040;&#26412;&#20070;&#20854;&#20182;&#30340;&#20363;&#23376;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368668159121" ID="ID_661302036" MODIFIED="1368668246542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #argecho.py
    </p>
    <p>
      import sys
    </p>
    <p>
      for arg in sys.argv:&#160;&#160;-------------------1
    </p>
    <p>
      &#160;&#160;&#160;&#160;print arg
    </p>
  </body>
</html></richcontent>
<node CREATED="1368668281011" ID="ID_868167858" MODIFIED="1368668757246">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P148
    </p>
    <p>
      Each command&#8722;line argument passed to the program will be in sys.argv, which is just a list. Here you are printing each argument on a separate line.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#27599;&#20010;&#20256;&#20837;&#31243;&#24207;&#30340;&#21629;&#20196;&#34892;&#21442;&#25968;&#37117;&#23558;&#22312;sys.argv&#20013;&#65292;&#23427;&#20165;&#26159;&#20010;&#21015;&#34920;&#12290;&#36825;&#37324;&#20320;&#21487;&#20197;&#20998;&#21035;&#25171;&#21360;&#27599;&#20010;&#21442;&#25968;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1368668875371" ID="ID_455658714" MODIFIED="1368668876152" TEXT="Example 10.21. The contents of sys.argv">
<node CREATED="1368668887949" ID="ID_179016258" MODIFIED="1368668933761">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [you@localhost py]$ python argecho.py ----------------------------------------1
    </p>
    <p>
      argecho.py
    </p>
    <p>
      [you@localhost py]$ python argecho.py abc def----------------------------------------2
    </p>
    <p>
      argecho.py
    </p>
    <p>
      abc
    </p>
    <p>
      def
    </p>
    <p>
      [you@localhost py]$ python argecho.py &#8722;&#8722;help----------------------------------------3
    </p>
    <p>
      argecho.py
    </p>
    <p>
      &#8722;&#8722;help
    </p>
    <p>
      [you@localhost py]$ python argecho.py &#8722;m kant.xml----------------------------------------4
    </p>
    <p>
      argecho.py
    </p>
    <p>
      &#8722;m
    </p>
    <p>
      kant.xml
    </p>
  </body>
</html></richcontent>
<node CREATED="1368669004261" ID="ID_163791095" MODIFIED="1368669235324">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P149
    </p>
    <p>
      The first thing to know about sys.argv is that it contains the name of the script you're calling. You will actually use this knowledge to your advantage later, in Chapter 16, Functional Programming. Don't worry about it for now.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#35201;&#20102;&#35299;sys.argv&#30340;&#31532;&#19968;&#20214;&#20107;&#23601;&#26159;&#20182;&#21253;&#21547;&#20320;&#35843;&#29992;&#30340;&#33050;&#26412;&#21517;&#31216;&#12290;&#20320;&#23558;&#22312;&#20043;&#21518;&#30340;16&#31456;Functional Programming&#20351;&#29992;&#36825;&#20010;&#30693;&#35782;&#12290;&#29616;&#22312;&#19981;&#29992;&#25805;&#24515;&#23427;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368669285761" ID="ID_1117415476" MODIFIED="1368669397746">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2[&#21407;&#25991;]P149
    </p>
    <p>
      Command&#8722;line arguments are separated by spaces, and each&#160;shows up as a separate element in the sys.argv list.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#21629;&#20196;&#34892;&#21442;&#25968;&#34987;&#31354;&#26684;&#20998;&#38548;&#65292;&#22312;sys.argv&#21015;&#34920;&#20013;&#27599;&#20010;&#23637;&#31034;&#20026;&#29420;&#31435;&#30340;&#20803;&#32032;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368669429683" ID="ID_1268337731" MODIFIED="1368669643777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3[&#21407;&#25991;]P149
    </p>
    <p>
      Command&#8722;line flags, like &#8722;&#8722;help, also show up as their own element in the sys.argv list.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#21629;&#20196;&#34892;&#26631;&#35760;&#65292;&#20687;--help&#65292;&#20063;&#22312;sys.argv&#21015;&#34920;&#20013;&#20316;&#20026;&#19968;&#20010;&#20803;&#32032;&#26174;&#31034;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369186457718" ID="ID_1635817569" MODIFIED="1369186969421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4[&#21407;&#25991;]P149
    </p>
    <p>
      To make things even more interesting, some command&#8722;line flags themselves take arguments. For instance, here you have a flag (&#8722;m) which takes an argument (kant.xml). Both the flag itself and the flag's argument are simply sequential elements in the sys.argv list. No attempt is made to associate one with the other; all you get is a list.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20107;&#24773;&#26356;&#21152;&#26377;&#36259;&#20102;&#65292;&#19968;&#20123;&#21629;&#20196;&#34892;&#26631;&#35760;&#26412;&#36523;&#24102;&#26377;&#21442;&#25968;&#12290;&#20363;&#22914;&#65292;&#36825;&#37324;&#20320;&#26377;&#19968;&#20010;-m&#26631;&#35760;&#65292;&#23427;&#24102;&#19968;&#20010;&#21442;&#25968;kant.xml&#12290;&#22312;sys.argv &#21015;&#34920;&#20013;&#65292;&#36825;&#20010;&#26631;&#35760;&#33258;&#36523;&#21644;&#23427;&#30340;&#21442;&#25968;&#26159;&#31616;&#21333;&#20998;&#24320;&#30340;&#20803;&#32032;&#12290;&#22312;&#20320;&#24471;&#21040;&#30340;&#21015;&#34920;&#20013;&#65292;&#27809;&#26377;&#23558;&#20854;&#25918;&#21040;&#19968;&#36215;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1369187053265" ID="ID_1117962612" MODIFIED="1369187707390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P149
    </p>
    <p>
      So as you can see, you certainly have all the information passed on the command line, but then again, it doesn't look like it's going to be all that easy to actually use it. For simple programs that only take a single argument and have no flags, you can simply use sys.argv[1] to access the argument. There's no shame in this; I do it all the time. For more complex programs, you need the getopt module.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23601;&#20687;&#20320;&#30475;&#21040;&#30340;&#37027;&#26679;&#65292;&#20320;&#30830;&#23454;{certainly}&#21487;&#20197;&#36890;&#36807;&#21629;&#20196;&#34892;&#33719;&#24471;&#20840;&#37096;&#30340;&#20449;&#24687;&#65292;&#20294;&#26159;&#21448;&#35828;&#22238;&#26469;&#20102;{then again}&#65292;&#23427;&#24182;&#19981;&#26159;&#22312;&#23454;&#38469;{actually}&#20351;&#29992;&#20013;&#30475;&#36215;&#26469;&#37027;&#20040;&#31616;&#21333;&#30340;.&#22312;&#31616;&#21333;&#30340;&#31243;&#24207;&#20013;&#23427;&#20165;&#20165;&#20351;&#29992;&#31616;&#21333;&#30340;&#21442;&#25968;&#27809;&#26377;&#26631;&#35760;&#65292;&#20320;&#21487;&#20197;&#31616;&#21333;&#30340;&#20351;&#29992;sys.argv[1]&#26469;&#23384;&#20648;&#21442;&#25968;&#12290;&#27809;&#20160;&#20040;&#38656;&#35201;&#24863;&#21040;&#32670;&#24871;&#30340;{shame};&#25105;&#24635;&#26159;&#36825;&#20040;&#20351;&#29992;&#23427;&#12290;&#22312;&#19968;&#20123;&#22797;&#26434;&#30340;&#31243;&#24207;&#20013;&#65292;&#20320;&#38656;&#35201;&#20351;&#29992;getopt&#27169;&#22359;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369187946640" ID="ID_1165630905" MODIFIED="1369187947890" TEXT="Example 10.22. Introducing getopt">
<node CREATED="1369187961421" ID="ID_1070974864" MODIFIED="1369188020375">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def main(argv):&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;grammar = &quot;kant.xml&quot;&#160;&#160;&#160;&#160;&#160; -------------------------------------------------------------------1&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;try:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;opts, args = getopt.getopt(argv, &quot;hg:d&quot;, [&quot;help&quot;, &quot;grammar=&quot;]) -----------------2
    </p>
    <p>
      &#160;&#160;&#160;&#160;except getopt.GetoptError:-------------------------------------------------------------------3 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;usage()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -------------------------------------------------------------------4
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sys.exit(2)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      ...
    </p>
    <p>
      if __name__ == &quot;__main__&quot;:
    </p>
    <p>
      &#160;&#160;&#160;&#160;main(sys.argv[1:])
    </p>
  </body>
</html></richcontent>
<node CREATED="1369188040187" ID="ID_1271329714" MODIFIED="1369876427561">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P149
    </p>
    <p>
      First off, look at the bottom of the example and notice that you're calling the main function with sys.argv[1:]. Remember, sys.argv[0] is the name of the script that you're running; you don't care about that for command&#8722;line processing, so you chop it off and pass the rest of the list.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#39318;&#20808;&#65292;&#30475;&#19968;&#19979;&#20363;&#23376;&#30340;&#39030;&#37096;&#21487;&#20197;&#27880;&#24847;&#21040;&#20320;&#20256;&#20837;sys.argv[1:]&#26469;&#25481;&#29992;main&#20989;&#25968;&#12290;&#36824;&#35760;&#24471;sys.argv[0]&#26159;&#20320;&#36816;&#34892;&#30340;&#33050;&#26412;&#21517;&#31216;&#65307;&#20320;&#26080;&#27861;&#25511;&#21046;&#21629;&#20196;&#34892;&#36807;&#31243;&#65292;&#25152;&#20197;&#20320;&#25130;&#26029;&#23427;&#26469;&#22788;&#29702;&#21097;&#19979;&#30340;&#21015;&#34920;&#20869;&#23481;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369876679811" ID="ID_1685481580" MODIFIED="1369877372623">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2[&#21407;&#25991;]P149
    </p>
    <p>
      This is where all the interesting processing happens. The getopt function of the getopt module takes three parameters: the argument list (which you got from sys.argv[1:]), a string containing all the possible single&#8722;character command&#8722;line flags that this program accepts, and a list of longer command&#8722;line flags that are equivalent to the single&#8722;character versions. This is quite confusing at first glance, and is explained in more
    </p>
    <p>
      detail below.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#37324;&#26159;&#20840;&#37096;&#26377;&#36259;&#30340;&#36807;&#31243;&#21457;&#29983;&#30340;&#20301;&#32622;&#12290;&#36825;&#20010;getopt&#27169;&#22359;&#30340;getopt&#26041;&#27861;&#26377;&#19977;&#20010;&#21442;&#25968;:&#33258;&#21464;&#37327;&#21015;&#34920;(&#20320;&#20174; sys.argv[1:]&#20013;&#24471;&#21040;&#30340;)&#65292;&#23383;&#31526;&#20018;&#21253;&#21547;&#20840;&#37096;&#21487;&#33021;&#30340;&#21333;&#23383;&#31526;&#30340;&#21629;&#20196;&#34892;&#26631;&#24535;&#65292;&#36825;&#20010;&#26159;&#31243;&#24207;&#21487;&#20197;&#25509;&#21463;&#30340;&#20869;&#23481;&#65292;&#24182;&#19988;&#38271;&#21629;&#20196;&#34892;&#26631;&#24535;&#21015;&#34920; &#31561;&#20110;{equivalent} &#23376;&#31616;&#23383;&#31526;&#29256;&#26412;&#12290;&#36825;&#20010;&#22312;&#39318;&#27425;&#30475;&#21040;&#26102;&#24456;&#35753;&#20154;&#22256;&#24785;{quite confusing}, &#19979;&#25991;&#20250;&#32473;&#20986;&#26356;&#35814;&#32454;&#30340;&#35299;&#37322;{explained in more detail below}
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369877569248" ID="ID_1039418858" MODIFIED="1369877826092">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3[&#21407;&#25991;]P149
    </p>
    <p>
      If anything goes wrong trying to parse these command&#8722;line flags, getopt will raise an exception, which you catch. You told getopt all the flags you understand, so this probably means that the end user passed some command&#8722;line flag that you don't understand.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22914;&#20309;&#21629;&#20196;&#34892;&#26631;&#24535;&#35821;&#27861;&#20998;&#26512;&#19978;&#21457;&#29616;&#20219;&#20309;&#38169;&#35823;&#65292;getopt&#23558;&#25243;&#20986;&#20320;&#21487;&#20197;&#25429;&#33719;&#21040;&#30340;&#24322;&#24120;&#12290;&#20320;&#21521;getopt&#22768;&#26126;&#20102;&#20840;&#37096;&#20320;&#30693;&#36947;&#30340;&#26631;&#24535;&#20301;&#65292;&#25152;&#20197;&#36825;&#21487;&#33021;&#24847;&#21619;&#30528;&#32456;&#31471;&#29992;&#25143;&#20256;&#20837;&#20102;&#19968;&#20123;&#20320;&#19981;&#29702;&#35299;&#30340;&#21629;&#20196;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369877905108" ID="ID_1176468324" MODIFIED="1369878476295">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4[&#21407;&#25991;]P149
    </p>
    <p>
      As is standard practice in the UNIX world, when the script is passed flags it doesn't understand, you print out a summary of proper usage and exit gracefully. Note that I haven't shown the usage function here. You would still need to code that somewhere and have it print out the appropriate summary; it's not automatic.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20316;&#20026;UNIX&#19990;&#30028;&#30340;&#26631;&#20934;&#20570;&#27861;{standard practice},&#24403;&#21629;&#20196;&#34892;&#36755;&#20837;&#19968;&#20010;&#23427;&#19981;&#30693;&#36947;&#30340;&#21442;&#25968;&#26102;&#65292;&#20320;&#25171;&#21360;&#20986;&#27491;&#30830;&#29992;&#27861;{proper usage}&#30340;&#27010;&#36848;&#20043;&#21518;&#20248;&#38597;&#30340;{gracefully}&#36864;&#20986;.&#27880;&#24847;&#25105;&#27809;&#26377;&#22312;&#36825;&#37324;&#23637;&#31034;&#36825;&#20010;&#29992;&#27861;{usage}&#20989;&#25968;.&#20320;&#20173;&#23558;&#38656;&#35201;&#22312;&#26576;&#20010;&#20301;&#32622;&#23545;&#20854;&#36827;&#34892;&#32534;&#30721;&#20351;&#20854;&#25171;&#21360;&#20986;&#21512;&#36866;&#30340;{appropriate}&#27010;&#36848;,&#36825;&#20010;&#24182;&#19981;&#26159;&#33258;&#21160;&#23436;&#25104;&#30340;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1369878756420" ID="ID_1236417923" MODIFIED="1369879168045">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P150
    </p>
    <p>
      So what are all those parameters you pass to the getopt function? Well, the first one is simply the raw list of command&#8722;line flags and arguments (not including the first element, the script name, which you already chopped off before calling the main function). The second is the list of short command&#8722;line flags that the script accepts.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#37027;&#20040;&#20320;&#20256;&#32473;getopt&#20989;&#25968;&#30340;&#21442;&#25968;&#26159;&#20160;&#20040;&#21602;?&#24456;&#22909;&#65292;&#31532;&#19968;&#20010;&#26159;&#31616;&#21333;&#21407;&#22987;{the raw}&#30340;&#21629;&#20196;&#34892;&#26631;&#24535;&#21644;&#21442;&#25968;(&#19981;&#21253;&#21547;&#31532;&#19968;&#20010;&#21407;&#22987;&#65292;&#21363;&#33050;&#26412;&#21517;&#31216;&#65292;&#36825;&#20010;&#26159;&#20320;&#22312;&#35843;&#29992;main&#20989;&#25968;&#21069;&#23601;&#20999;&#21106;&#20102;&#30340;)&#12290;&#31532;&#20108;&#20010;&#26159;&#21629;&#20196;&#34892;&#21015;&#34920;&#21487;&#34987;&#25509;&#21463;&#30340;&#30701;&#26631;&#24535;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369879193514" ID="ID_928723048" MODIFIED="1370570234953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P150
    </p>
    <p>
      &quot;hg:d&quot;
    </p>
    <p>
      &#8722;h
    </p>
    <p>
      print usage summary
    </p>
    <p>
      &#8722;g ...
    </p>
    <p>
      use specified grammar file or URL
    </p>
    <p>
      &#8722;d
    </p>
    <p>
      show debugging information while parsing
    </p>
    <p>
      The first and third flags are simply standalone flags; you specify them or you don't, and they do things (print help) or change state (turn on debugging). However, the second flag (&#8722;g) must be followed by an argument, which is the name of the grammar file to read from. In fact it can be a filename or a web address, and you don't know which yet (you'll figure it out later), but you know it has to be something. So you tell getopt this by putting a colon after the g in that second parameter to the getopt function.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &quot;hg:d&quot;
    </p>
    <p>
      -h
    </p>
    <p>
      &#25171;&#21360;&#24815;&#29992;&#27010;&#36848;
    </p>
    <p>
      -g
    </p>
    <p>
      &#20351;&#29992;&#25351;&#23450;&#30340;&#35821;&#27861;&#25991;&#20214;&#25110;url
    </p>
    <p>
      -d
    </p>
    <p>
      &#22312;&#35821;&#27861;&#20998;&#26512;&#26102;&#26174;&#31034;&#35843;&#35797;&#20449;&#24687;
    </p>
    <p>
      &#31532;&#19968;&#21644;&#31532;&#19977;&#20010;&#26631;&#24535;&#26159;&#31616;&#21333;&#29420;&#31435;&#30340;&#26631;&#24535;: &#20320;&#21487;&#20197;&#35814;&#36848;&#20043;&#25110;&#27809;&#26377;&#35828;&#26126;&#65292;&#20182;&#20204;&#20570;&#19968;&#20123;&#20107;&#24773;&#65288;&#25171;&#21360;&#24110;&#21161;&#65289;&#25110;&#32773;&#25913;&#21464;&#29366;&#24577;&#65288;&#25171;&#24320;{turn on}&#35843;&#35797;&#20449;&#24687;&#65289;.&#26080;&#35770;&#24590;&#26679;&#65292;&#36825;&#31532;&#20108;&#20010;&#26631;&#24535;(-g) &#19968;&#23450;&#26377;&#36319;&#38543;&#30340;&#33258;&#21464;&#37327;&#65292;&#23427;&#26159;&#35201;&#35835;&#21462;&#30340;&#35821;&#27861;&#25991;&#20214;&#30340;&#21517;&#23383;&#12290;&#23454;&#38469;&#19978;&#23427;&#21487;&#20197;&#26159;&#25991;&#20214;&#21517;&#31216;&#25110;&#32773;web&#22320;&#22336;&#65292;&#23454;&#38469;&#19978;&#20320;&#24182;&#19981;&#28165;&#26970;&#26159;&#21738;&#19968;&#20010;(&#20320;&#19968;&#20250;&#20799;&#23601;&#23558;&#30475;&#21040;{you'll figure it out later[?]}),&#20294;&#20320;&#30693;&#36947;&#23427;&#20570;&#20102;&#19968;&#20123;&#20107;&#12290;&#25152;&#20197;&#20320;&#21578;&#35785;getopt&#36825;&#20010;&#36890;&#36807;&#22312;g&#21518;&#38754;&#25918;&#19968;&#20010;&#20882;&#21495;(colon)&#20256;&#20837;getopt&#20989;&#25968;&#30340;&#31532;&#20108;&#20010;&#21442;&#25968;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1372643433125" ID="ID_829204440" MODIFIED="1372644363015">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      p150
    </p>
    <p>
      [&#21407;&#25991;]
    </p>
    <p>
      [&quot;help&quot;, &quot;grammar=&quot;]
    </p>
    <p>
      &#8722;&#8722;help
    </p>
    <p>
      print usage summary
    </p>
    <p>
      &#8722;&#8722;grammar ...
    </p>
    <p>
      use specified grammar file or URL
    </p>
    <p>
      Three things of note here:
    </p>
    <p>
      All long flags are preceded by two dashes on the command line, but you don't include those dashes when
    </p>
    <p>
      calling getopt. They are understood.
    </p>
    <p>
      1.
    </p>
    <p>
      The &#8722;&#8722;grammar flag must always be followed by an additional argument, just like the &#8722;g flag. This is
    </p>
    <p>
      notated by an equals sign, &quot;grammar=&quot;.
    </p>
    <p>
      2.
    </p>
    <p>
      The list of long flags is shorter than the list of short flags, because the &#8722;d flag does not have a corresponding
    </p>
    <p>
      long version. This is fine; only &#8722;d will turn on debugging. But the order of short and long flags needs to be
    </p>
    <p>
      the same, so you'll need to specify all the short flags that do have corresponding long flags first, then all the
    </p>
    <p>
      rest of the short flags.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      [&quot;help&quot;,&quot;grammar=&quot;]
    </p>
    <p>
      --help
    </p>
    <p>
      &#25171;&#21360;&#20351;&#29992;&#20171;&#32461;
    </p>
    <p>
      --grammar ..
    </p>
    <p>
      &#20351;&#29992;&#25351;&#23450;&#30340;&#35821;&#27861;&#25991;&#20214;&#25110;url
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#37324;&#35201;&#27880;&#24847;&#19977;&#28857;:
    </p>
    <p>
      &#22312;&#21629;&#20196;&#34892;&#20013;&#65292;&#20840;&#37096;&#30340;&#36825;&#20123;&#26631;&#24535;&#21069;&#37117;&#26377;&#20004;&#20010;&#30772;&#25240;&#21495;{dashes}&#65292;&#20294;&#20320;&#20351;&#29992;getopt&#26102;&#26399;&#20013;&#24182;&#19981;&#21253;&#21547;&#36825;&#20123;&#30772;&#25240;&#21495;&#12290;&#36825;&#20123;&#30772;&#25240;&#21495;&#34987;getopt&#22788;&#29702;&#20102;&#12290;
    </p>
    <p>
      1.
    </p>
    <p>
      &#36825;&#20010;---grammar &#26631;&#24535;&#36890;&#24120;&#34987;&#35299;&#37322;&#20026;&#20801;&#35768;&#28155;&#21152;&#21442;&#25968;&#65292;&#23601;&#20687;-g &#26631;&#35760;&#12290;&#36825;&#20010;notated&#31561;&#20110;&#31526;&#21495;&#8220;grammar=&#8221;
    </p>
    <p>
      2.
    </p>
    <p>
      &#36825;&#20010;&#38271;&#26631;&#35760;&#21015;&#34920;&#27604;&#30701;&#26631;&#35760;&#21015;&#34920;&#30701;&#19968;&#20123;&#65292;&#22240;&#20026;-d&#26631;&#35760;&#27809;&#26377;&#23545;&#24212;&#30340;&#38271;&#26631;&#35760;&#29256;&#26412;&#12290;&#36825;&#24456;&#22909;&#65292;&#20165;&#20165;-d &#21487;&#20197;&#29992;&#26469;&#24320;&#21551;&#35843;&#35797;&#12290;&#20294;&#26159;&#36825;&#20010;&#30701;&#26631;&#35760;&#30340;&#39034;&#24207;&#19982;&#38271;&#26631;&#35760;&#26159;&#19968;&#33268;&#30340;&#65292;&#25152;&#20197;&#20320;&#39318;&#20808;&#38656;&#35201;&#29305;&#21035;&#25351;&#20986;&#20840;&#37096;&#30340;&#30701;&#26631;&#35760;&#20570;&#23545;&#24212;&#38271;&#26631;&#35760;&#30340;&#20869;&#23481;&#65292;&#28982;&#21518;&#25165;&#26159;&#20840;&#37096;&#21097;&#20313;&#30340;&#30701;&#26631;&#35760;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>

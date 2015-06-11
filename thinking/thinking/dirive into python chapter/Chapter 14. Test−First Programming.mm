<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1368409971609" ID="ID_540147170" MODIFIED="1368409974609" TEXT="Chapter 14. Test&#x2212;First Programming">
<node CREATED="1368410169203" ID="ID_1047197106" MODIFIED="1368410170546" POSITION="right" TEXT="14.1. roman.py, stage 1">
<node CREATED="1368410317281" ID="ID_1142561415" MODIFIED="1370483548519">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;]P198
    </p>
    <p>
      Now that the unit tests are complete, it's time to start writing the code that the test cases are attempting to test. You're going to do this in stages, so you can see all the unit tests fail, then watch them pass one by one as you fill in the gaps in roman.py.
    </p>
    <p>
      [pope&#25913;&#36827;&#35793;]
    </p>
    <p>
      &#21333;&#20803;&#27979;&#35797;&#20808;&#24050;&#23436;&#25972;&#65292;&#26159;&#20889;&#34987;&#27979;&#20195;&#30721;&#20043;&#26102;&#20102;&#12290;&#21531;&#35745;&#21010;&#20998;&#27573;&#23436;&#25104;&#65292;&#27492;&#26102;&#25152;&#35265;&#20840;&#37096;&#21333;&#20803;&#27979;&#35797;&#20043;&#22833;&#25928;&#65292;&#23558;&#22312;roman.py&#20998;&#27573;&#23436;&#25104;&#20013;&#27493;&#27493;&#36890;&#36807;&#12290;
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#21333;&#20803;&#27979;&#35797;&#20171;&#32461;&#23436;&#20840;&#20102;&#65292;&#26159;&#24320;&#22987;&#20889;&#27979;&#35797;&#29992;&#20363;&#30340;&#27979;&#35797;&#20195;&#30721;&#30340;&#26102;&#38388;&#20102;&#12290;&#20320;&#35745;&#21010;&#20174;&#36825;&#24320;&#22987;&#65292;&#24320;&#22987;&#26102;&#30475;&#21040;&#20840;&#37096;&#30340;&#21333;&#20803;&#27979;&#35797;&#30340;&#22833;&#36133;&#65292;&#24403;&#20320;&#22312;roman.py&#20805;&#22635;&#21040;&#23545;&#24212;&#30340;&#20869;&#23481;&#21518;&#65292;&#23601;&#21487;&#20197;&#30475;&#30528;&#23427;&#20204;&#19968;&#20010;&#20010;&#36890;&#36807;&#27979;&#35797;&#20102;&#12290;
    </p>
    <p>
      [net &#35793;&#65306;<a href="http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html">http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html </a>]
    </p>
    <p>
      <font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#21040;&#30446;&#21069;&#20026;&#27490;&#65292;&#21333;&#20803;&#27979;&#35797;&#24050;&#32463;&#23436;&#25104;&#65292;&#26159;&#26102;&#20505;&#24320;&#22987;&#32534;&#20889;&#34987;&#21333;&#20803;&#27979;&#35797;&#27979;&#35797;&#30340;&#20195;&#30721;&#20102;&#12290;&#20320;&#23558;&#20998;&#38454;&#27573;&#22320;&#23436;&#25104;&#36825;&#20010;&#24037;&#20316;&#65292;&#22240;&#27492;&#24320;&#22987;&#26102;&#25152;&#26377;&#30340;&#21333;&#20803;&#27979;&#35797;&#37117;&#26159;&#22833;&#36133;&#30340;&#65292;&#20294;&#22312;&#36880;&#27493;&#23436;&#25104;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><tt class="filename" style="white-space: normal; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; text-indent: 0px; font-weight: normal; text-align: start; letter-spacing: normal; line-height: 23px; color: rgb(34, 34, 34); word-spacing: 0px; font-style: normal"><font color="rgb(34, 34, 34)">roman.py</font></tt><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#30340;&#21516;&#26102;&#20320;&#20250;&#30475;&#21040;&#23427;&#20204;&#19968;&#20010;&#20010;&#22320;&#36890;&#36807;&#27979;&#35797; </font>
    </p>
    <p>
      [popexizhi]
    </p>
    <p>
      now that the unit tests are complete
    </p>
    <p>
      [pope&#35793;]&#29616;&#22312;&#21333;&#20803;&#27979;&#35797;&#20171;&#32461;&#23436;&#20840;&#20102;
    </p>
    <p>
      [net&#35793;]<font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#21040;&#30446;&#21069;&#20026;&#27490;&#65292;&#21333;&#20803;&#27979;&#35797;&#24050;&#32463;&#23436;&#25104; </font>
    </p>
    <p>
      [popexizhi] are complete &#23601;&#26159;&#23436;&#25104; &#65292;&#27809;&#26377;&#20171;&#32461;&#65292;pope&#33222;&#26029;&#20102;&#12290;
    </p>
    <p>
      writing code that the test cases are attempting to test
    </p>
    <p>
      [pope&#35793;]&#20889;&#27979;&#35797;&#29992;&#20363;&#30340;&#27979;&#35797;&#20195;&#30721;
    </p>
    <p>
      [net &#35793;]<font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#32534;&#20889;&#34987;&#21333;&#20803;&#27979;&#35797;&#27979;&#35797;&#30340;&#20195;&#30721; </font>
    </p>
    <p>
      [popexizhi] that &#20174;&#21477;&#35828;&#26126; code &#65292;&#23601;&#26159;&#34987;&#27979;&#35797;&#30340;&#20195;&#30721;&#65292;pope&#32763;&#35793;&#20013;&#27809;&#26377;&#20351;&#29992;&#34987;&#21160;&#21477;&#35835;&#26469;&#24456;&#19981;&#27969;&#30021;
    </p>
    <p>
      you're going to do this in stages
    </p>
    <p>
      [pope&#35793;]&#20320;&#35745;&#21010;&#20174;&#36825;&#24320;&#22987;
    </p>
    <p>
      [net&#35793;]<font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#20320;&#23558;&#20998;&#38454;&#27573;&#22320;&#23436;&#25104;&#36825;&#20010;&#24037;&#20316; </font>
    </p>
    <p>
      [popexizhi] in stages &#23601;&#26159;&#20998;&#21095;&#20998;&#27573;&#23436;&#25104;&#65292;&#36825;&#20010;pope&#27809;&#32763;&#35793;
    </p>
    <p>
      then watch them pass ono by one as you fill in the gaps in roman.py
    </p>
    <p>
      [pope&#35793;]&#24403;&#20320;&#22312;roman.py&#20805;&#22635;&#21040;&#23545;&#24212;&#30340;&#20869;&#23481;&#21518;&#65292;&#23601;&#21487;&#20197;&#30475;&#30528;&#23427;&#20204;&#19968;&#20010;&#20010;&#36890;&#36807;&#27979;&#35797;&#20102;&#12290;
    </p>
    <p>
      [net&#35793;]<font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#20294;&#22312;&#36880;&#27493;&#23436;&#25104;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><tt class="filename" style="white-space: normal; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; text-align: start; font-weight: normal; text-indent: 0px; letter-spacing: normal; line-height: 23px; color: rgb(34, 34, 34); word-spacing: 0px; font-style: normal"><font color="rgb(34, 34, 34)">roman.py</font></tt><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font size="medium" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#30340;&#21516;&#26102;&#20320;&#20250;&#30475;&#21040;&#23427;&#20204;&#19968;&#20010;&#20010;&#22320;&#36890;&#36807;&#27979;&#35797; </font>
    </p>
    <p>
      [popexizhi]fill in the gaps &#26412;&#23601;&#26159;&#22312;&#31354;&#30333;&#22788;&#20805;&#22635;&#30340;&#24847;&#24605;&#65292;&#20294;net &#35793;&#20013;&#25226;&#24418;&#23481;pass &#30340;one by&#160;&#160;one &#20114;&#25991;&#32763;&#35793;&#20102;&#19968;&#19979;&#8220;&#36880;&#27493;&#8221;&#28155;&#21152;&#21040;fill in the gaps&#30340;&#20869;&#23481;&#20013;&#65292;&#35753;&#35793;&#25991;&#35835;&#26469;&#26356;&#20026;&#27969;&#30021;&#65292;&#36190;&#19968;&#20010;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370221291390" ID="ID_399717614" MODIFIED="1370221293828" TEXT=""/>
<node CREATED="1368410849421" FOLDED="true" ID="ID_217611978" MODIFIED="1401182211730" TEXT="Example 14.1. roman1.py">
<node CREATED="1368581049218" ID="ID_438890330" MODIFIED="1370483633207">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This file is available in py/roman/stage1/ in the examples directory.
    </p>
    <p>
      If you have not already done so, you can download this and other examples (http://diveintopython.org/download/diveintopython&#8722;examples&#8722;5.4.zip) used in this book.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#21487;&#29992;&#30340;&#25991;&#20214;&#22312;py/roman/stage1/ &#20363;&#23376;&#30340;&#25991;&#20214;&#22841;&#20013;&#12290;
    </p>
    <p>
      &#22914;&#26524;&#20320;&#36824;&#27809;&#26377;&#65292;&#21487;&#20197;&#22312;http://diveintopython.org/download/diveintopython&#8722;examples&#8722;5.4.zip &#20013;&#19979;&#36733;&#20351;&#29992;&#26412;&#20070;&#30340;&#20854;&#20182;&#20363;&#23376;
    </p>
    <p>
      [net &#35793; &#26469;&#28304;:<a href="http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html">http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html </a>]
    </p>
    <p style="font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; white-space: normal; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; text-indent: 0px; font-weight: normal; text-align: start; letter-spacing: normal; font-size: medium; line-height: 23px; color: rgb(34, 34, 34); word-spacing: 0px; font-style: normal">
      &#36825;&#20010;&#31243;&#24207;&#21487;&#20197;&#22312;&#20363;&#23376;&#30446;&#24405;&#19979;&#30340;<span class="Apple-converted-space">&#160;</span><tt class="filename">py/roman/stage1/</tt><span class="Apple-converted-space">&#160;</span>&#30446;&#24405;&#20013;&#25214;&#21040;&#12290;
    </p>
    <p style="font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; white-space: normal; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; text-indent: 0px; font-weight: normal; text-align: start; letter-spacing: normal; line-height: 23px; font-size: medium; color: rgb(34, 34, 34); word-spacing: 0px; font-style: normal">
      &#22914;&#26524;&#24744;&#36824;&#27809;&#26377;&#19979;&#36733;&#26412;&#20070;&#38468;&#24102;&#30340;&#26679;&#20363;&#31243;&#24207;, &#21487;&#20197;<span class="Apple-converted-space">&#160;</span><a title="Download example scripts" href="http://www.woodpecker.org.cn/diveintopython/download/diveintopython-exampleszh-cn-5.4b.zip">&#19979;&#36733;&#26412;&#31243;&#24207;&#21644;&#20854;&#20182;&#26679;&#20363;&#31243;&#24207;</a>&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368581779640" ID="ID_121485212" MODIFIED="1368581857281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;&quot;&quot;Convert to and from Roman numerals&quot;&quot;&quot;
    </p>
    <p>
      #Define exceptions
    </p>
    <p>
      class RomanError(Exception): pass--------------------------------------------------------------1&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      class OutOfRangeError(RomanError): pass--------------------------------------------------------------2&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;
    </p>
    <p>
      class NotIntegerError(RomanError): pass
    </p>
    <p>
      class InvalidRomanNumeralError(RomanError): pass -------------------------------------------------3
    </p>
    <p>
      def toRoman(n):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;&quot;&quot;convert integer to Roman numeral&quot;&quot;&quot;--------------------------------------------------------------4
    </p>
    <p>
      &#160;&#160;&#160;&#160;pass&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      def fromRoman(s):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;&quot;&quot;convert Roman numeral to integer&quot;&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pass
    </p>
  </body>
</html></richcontent>
<node CREATED="1368582264203" ID="ID_803642060" MODIFIED="1372816192234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P198
    </p>
    <p>
      This is how you define your own custom exceptions in Python. Exceptions are classes, and you create your own by subclassing existing exceptions. It is strongly recommended (but not required) that you subclass Exception, which is the base class that all built&#8722;in exceptions inherit from. Here I am defining RomanError (inherited from Exception) to act as the base class&#160;for all my other custom exceptions to follow. This is a matter of style; I could just as easily have inherited each individual exception from the Exception class directly
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#26159;&#20320;&#22312;python&#20013;&#22914;&#20309;&#23450;&#20041;&#33258;&#24049;&#30340;&#24322;&#24120;&#12290;&#24322;&#24120;&#26159;&#31867;&#65292;&#20320;&#36890;&#36807;&#32487;&#25215;&#23384;&#22312;&#30340;&#24322;&#24120;&#31867;&#21019;&#24314;&#20320;&#33258;&#24049;&#30340;&#24322;&#24120;&#31867;&#12290;&#21019;&#24314;Exception &#30340;&#23376;&#38598;&#34987;&#24378;&#28872;&#25512;&#33616;&#65292;&#20294;&#19981;&#24378;&#21046;&#65292;&#36825;&#20010;&#26159;&#20840;&#37096;&#23884;&#20837;&#30340;&#24322;&#24120;&#36890;&#36807;&#32487;&#25215;&#24471;&#21040;&#30340;&#12290;&#36825;&#37324;&#25105;&#23450;&#20041;&#30340;RomanError&#65288;&#32487;&#25215;Exception&#65289;&#20316;&#20026;&#25105;&#24403;&#21069;&#24322;&#24120;&#30340;&#22522;&#31867;&#20351;&#29992;&#12290;&#36825;&#26159;&#20010;&#39118;&#26684;&#38382;&#39064;&#65292;&#25105;&#20063;&#21487;&#20197;&#27599;&#20010;&#24322;&#24120;&#31867;&#21482;&#30452;&#25509;&#31616;&#21333;&#30340;&#32487;&#25215;Exception&#12290;
    </p>
    <p>
      [popexizhi:&#36825;&#20010;&#32487;&#25215;&#30340;&#39118;&#26684;&#65292;&#33258;&#24049;&#31532;&#19968;&#27425;&#30475;&#26102;&#36824;&#30495;&#27809;&#26377;&#22909;&#22909;&#27880;&#24847;:)]
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#36825;&#23601;&#26159;&#22914;&#20309;&#23450;&#20041;&#20320;&#33258;&#24049;&#30340;&#160;Python&#160;&#24322;&#24120;&#12290;&#24322;&#24120; (Exception) &#20063;&#26159;&#31867;&#65292;&#36890;&#36807;&#32487;&#25215;&#24050;&#26377;&#30340;&#24322;&#24120;&#65292;&#20320;&#21487;&#20197;&#21019;&#24314;&#33258;&#23450;&#20041;&#30340;&#24322;&#24120;&#12290;&#24378;&#28872;&#24314;&#35758; (&#20294;&#19981;&#26159;&#24517;&#39035;) &#20320;&#32487;&#25215;&#160;</font><tt style="font-weight: normal; letter-spacing: normal; background-color: rgb(255, 255, 255); line-height: 23px; font-style: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); text-align: -webkit-left; font-variant: normal; white-space: normal" class="errorcode"><font color="rgb(34, 34, 34)">Exception</font></tt><font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#160;&#26469;&#23450;&#20041;&#33258;&#24049;&#30340;&#24322;&#24120;&#65292;&#22240;&#20026;&#23427;&#26159;&#25152;&#26377;&#20869;&#24314;&#24322;&#24120;&#30340;&#22522;&#31867;&#12290;&#36825;&#37324;&#25105;&#23450;&#20041;&#20102;&#160;</font><tt style="font-weight: normal; letter-spacing: normal; background-color: rgb(255, 255, 255); font-style: normal; line-height: 23px; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); text-align: -webkit-left; font-variant: normal; white-space: normal" class="errorcode"><font color="rgb(34, 34, 34)">RomanError</font></tt><font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#160;(&#20174;&#160;</font><tt style="font-weight: normal; letter-spacing: normal; background-color: rgb(255, 255, 255); font-style: normal; line-height: 23px; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); text-align: -webkit-left; font-variant: normal; white-space: normal" class="errorcode"><font color="rgb(34, 34, 34)">Exception</font></tt><font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#160;&#32487;&#25215;&#32780;&#26469;) &#20316;&#20026;&#25105;&#25152;&#26377;&#33258;&#23450;&#20041;&#24322;&#24120;&#30340;&#22522;&#31867;&#12290;&#36825;&#26159;&#19968;&#20010;&#39118;&#26684;&#38382;&#39064;&#65292;&#25105;&#20063;&#21487;&#20197;&#30452;&#25509;&#20174;&#160;</font><tt style="font-weight: normal; letter-spacing: normal; background-color: rgb(255, 255, 255); font-style: normal; line-height: 23px; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); text-align: -webkit-left; font-variant: normal; white-space: normal" class="errorcode"><font color="rgb(34, 34, 34)">Exception</font></tt><font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#32487;&#25215;&#24314;&#31435;&#27599;&#19968;&#20010;&#33258;&#23450;&#20041;&#24322;&#24120;&#12290; </font>
    </p>
    <p>
      [popexizhi]
    </p>
    <p>
      which is the base class that all built&#8722;in exceptions inherit from
    </p>
    <p>
      [pope&#35793;]&#36825;&#20010;&#26159;&#20840;&#37096;&#23884;&#20837;&#30340;&#24322;&#24120;&#36890;&#36807;&#32487;&#25215;&#24471;&#21040;&#30340;
    </p>
    <p>
      [net &#35793;]<font color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif">&#22240;&#20026;&#23427;&#26159;&#25152;&#26377;&#20869;&#24314;&#24322;&#24120;&#30340;&#22522;&#31867; </font>
    </p>
    <p>
      [popexizhi] &#20869;&#24314;&#24322;&#24120;&#30340;&#22522;&#31867;
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369013888203" ID="ID_990241562" MODIFIED="1372816334171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2[&#21407;&#25991;]P198
    </p>
    <p>
      The OutOfRangeError and NotIntegerError exceptions will eventually be used by toRoman to flag various forms of invalid input, as specified in ToRomanBadInput.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      OutOfRangeError &#21644; NotIntegerError &#24322;&#24120;&#26159;toRoman&#29992;&#26469;&#26631;&#24535;&#19981;&#21516;&#24418;&#24335;&#30340;&#38169;&#35823;&#36755;&#20837;&#20351;&#29992;&#30340;&#65292;&#22312;ToRomanBadInput&#20013;&#29305;&#21035;&#25351;&#20986;&#30340;
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font color="rgb(34, 34, 34)"><tt style="font-style: normal; font-variant: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); letter-spacing: normal; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="errorcode">OutOfRangeError</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#21644;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="errorcode">NotIntegerError</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#24322;&#24120;&#23558;&#20250;&#26368;&#32456;&#34987;&#29992;&#20110;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="function">toRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#20197;&#26631;&#31034;&#19981;&#21516;&#31867;&#22411;&#30340;&#26080;&#25928;&#36755;&#20837;&#65292;&#26356;&#20855;&#20307;&#32780;&#35328;&#23601;&#26159;</span><span class="Apple-converted-space">&#160;</span></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" size="medium"><tt class="classname"><a title="例?13.3.?测试 toRoman 的无效输入" style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" href="http://woodpecker.org.cn/diveintopython/unit_testing/testing_for_failure.html#roman.tobadinput.example">ToRomanBadInput</a></tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#27979;&#35797;&#30340;&#37027;&#20123;&#12290; </span></font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369014248046" ID="ID_401403597" MODIFIED="1372816394343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3[&#21407;&#25991;]P198
    </p>
    <p>
      The InvalidRomanNumeralError exception will eventually be used by fromRoman to flag invalid input, as specified in FromRomanBadInput.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      InvalidRomanNumeralError&#24322;&#24120;&#26159;fromRoman&#29992;&#26469;&#26631;&#35760;&#38169;&#35823;&#36755;&#20837;&#20351;&#29992;&#30340;&#65292;&#22312;FromRomanBadInput&#20013;&#29305;&#21035;&#27979;&#35797;&#23545;&#24212;&#20869;&#23481;
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font color="rgb(34, 34, 34)"><tt style="font-style: normal; font-variant: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; color: rgb(34, 34, 34); letter-spacing: normal; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="errorcode">InvalidRomanNumeralError</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#23558;&#34987;&#26368;&#32456;&#29992;&#20110;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="function">fromRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#20197;&#26631;&#31034;&#26080;&#25928;&#36755;&#20837;&#65292;&#20855;&#20307;&#32780;&#35328;&#23601;&#26159;</span><span class="Apple-converted-space">&#160;</span></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" size="medium"><tt class="classname"><a title="例?13.4.?测试 fromRoman 的无效输入" style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" href="http://woodpecker.org.cn/diveintopython/unit_testing/testing_for_failure.html#roman.frombadinput.example">FromRomanBadInput</a></tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#27979;&#35797;&#30340;&#37027;&#20123;&#12290;</span></font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369014720921" ID="ID_1698586233" MODIFIED="1372816459265">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4[&#21407;&#25991;]P198
    </p>
    <p>
      At this stage, you want to define the API of each of your functions, but you don't want to code them yet, so you stub&#160;them out using the Python reserved word pass.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#36825;&#20010;&#36807;&#31243;&#20013;&#65292;&#20320;&#24819;&#35201;&#23450;&#20041;&#23454;&#29616;&#21151;&#33021;&#30340;API&#65292;&#20294;&#20320;&#29616;&#22312;&#19981;&#25171;&#31639;&#20351;&#29992;&#20195;&#30721;&#23454;&#29616;&#65292;&#25152;&#20197;&#20320;&#20351;&#29992;python&#20445;&#30041;&#30340;&#20851;&#38190;&#23383;pass &#20805;&#22635;&#36825;&#20010;&#36807;&#31243;&#12290;
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span style="font-style: normal; font-variant: normal; white-space: normal; word-spacing: 0px; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-transform: none; text-indent: 0px; display: inline !important; color: rgb(34, 34, 34); letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#22312;&#36825;&#19968;&#27493;&#20013;&#20320;&#21482;&#26159;&#24819;&#23450;&#20041;&#27599;&#20010;&#20989;&#25968;&#30340;</span><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="acronym">API</span><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#65292;&#32780;&#19981;&#24819;&#20855;&#20307;&#23454;&#29616;&#23427;&#20204;&#65292;&#22240;&#27492;&#20320;&#20197;</span><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" class="application">Python</span><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#20851;&#38190;&#23383;</span><span class="Apple-converted-space">&#160;</span></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" size="medium"><tt class="literal"><a title="例?5.3.?最简单的 Python 类" style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: -webkit-left" href="http://woodpecker.org.cn/diveintopython/object_oriented_framework/defining_classes.html#fileinfo.class.simplest">pass</a></tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: -webkit-left">&#22993;&#19988;&#24102;&#36807;&#12290;</span></font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1369015001515" ID="ID_1290707898" MODIFIED="1372816698953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P198
    </p>
    <p>
      Now for the big moment (drum roll please): you're finally going to run the unit test against this stubby little module. At this point, every test case should fail. In fact, if any test case passes in stage 1, you should go back to romantest.py and re&#8722;evaluate why you coded a test so useless that it passes with do&#8722;nothing functions.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#26377;&#19968;&#20010;&#37325;&#35201;&#20449;&#24687;&#65288;&#25171;&#36215;&#31934;&#31070;&#26469;&#27880;&#24847;&#20102;&#65289;:&#20320;&#20043;&#21518;&#35201;&#38024;&#23545;&#36825;&#20010;&#31616;&#30701;&#30340;&#27169;&#22359;&#36816;&#34892;&#21333;&#20803;&#27979;&#35797;&#12290;&#22312;&#24403;&#21069;&#28857;&#65292;&#27599;&#20010;&#21333;&#20803;&#27979;&#35797;&#37117;&#24212;&#35813;&#22833;&#36133;&#12290;&#22914;&#26524;&#26377;&#20160;&#20040;&#21333;&#20803;&#27979;&#35797;&#22312;stage1&#20013;&#25104;&#21151;&#65292;&#20320;&#21040;&#24212;&#35813;&#36820;&#22238;&#21040;romantest.py &#20013;&#37325;&#26032;&#35780;&#20272;&#19968;&#19979;{re-evaluate}&#20026;&#20160;&#20040;&#20320;&#30340;&#21333;&#20803;&#27979;&#35797;&#20195;&#30721;&#36825;&#20040;&#27809;&#26377;&#65292;&#31455;&#28982;&#35753;&#20160;&#20040;&#37117;&#27809;&#20570;&#30340;&#21151;&#33021;&#36890;&#36807;&#27979;&#35797;&#20102;&#12290;
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span style="font-style: normal; font-variant: normal; white-space: normal; word-spacing: 0px; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-transform: none; text-indent: 0px; display: inline !important; color: rgb(34, 34, 34); letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#37325;&#35201;&#30340;&#26102;&#21051;&#21040;&#20102; (&#35831;&#25171;&#36215;&#40723;&#26469;)&#65306;&#20320;&#32456;&#20110;&#35201;&#23545;&#36825;&#20010;&#31616;&#38475;&#30340;&#23567;&#27169;&#22359;&#24320;&#22987;&#36816;&#34892;&#21333;&#20803;&#27979;&#35797;&#20102;&#12290;&#30446;&#21069;&#32780;&#35328;&#65292;&#27599;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#37117;&#24212;&#35813;&#22833;&#36133;&#12290;&#20107;&#23454;&#19978;&#65292;&#20219;&#20309;&#27979;&#35797;&#29992;&#20363;&#22312;&#27492;&#26102;&#36890;&#36807;&#65292;&#20320;&#37117;&#24212;&#35813;&#22238;&#22836;&#30475;&#30475;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: start" class="filename">romantest.py</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#65292;&#20180;&#32454;&#24819;&#24819;&#20026;&#20160;&#20040;&#20320;&#20889;&#30340;&#27979;&#35797;&#20195;&#30721;&#22914;&#27492;&#27809;&#29992;&#65292;&#20197;&#33267;&#20110;&#36830;&#20160;&#20040;&#37117;&#19981;&#20316;&#30340;&#20989;&#25968;&#37117;&#33021;&#36890;&#36807;&#27979;&#35797;&#12290; </span></font>
    </p>
    <p>
      [popexizhi]
    </p>
    <p>
      at this point
    </p>
    <p>
      [pope&#35793;]&#22312;&#24403;&#21069;&#28857;
    </p>
    <p>
      [net &#35793;]<font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#30446;&#21069;&#32780;&#35328; </span></font>
    </p>
    <p>
      [popexizhi] at this point &#30446;&#21069;&#32780;&#35328;&#65292;&#23398;&#20064;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369015506656" ID="ID_264808346" MODIFIED="1372816762734">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P198
    </p>
    <p>
      Run romantest1.py with the &#8722;v command&#8722;line option, which will give more verbose output so you can see exactly what's going on as each test case runs. With any luck, your output should look like this:
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20351;&#29992;-v&#21629;&#20196;&#34892;&#21442;&#25968;&#36816;&#34892;romantest1.py,&#23427;&#23558;&#32473;&#20986;&#26356;&#22810;&#30340;&#35814;&#32454;{verbose}&#36755;&#20986;&#36825;&#26679;&#20320;&#23601;&#21487;&#20197;&#30475;&#21040;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#36816;&#34892;&#30340;&#31934;&#30830;&#30340;&#36807;&#31243;&#12290;&#22914;&#26524;&#19968;&#20999;&#24184;&#36816;&#30340;&#35805;{with any luck}&#65292;&#20320;&#30475;&#21040;&#30340;&#36755;&#20986;&#31867;&#20284;&#22914;&#19979;:
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span style="font-style: normal; font-variant: normal; white-space: normal; word-spacing: 0px; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-transform: none; text-indent: 0px; display: inline !important; color: rgb(34, 34, 34); letter-spacing: normal; font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#29992;&#21629;&#20196;&#34892;&#36873;&#39033;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: start" class="option">-v</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#36816;&#34892;</span><span class="Apple-converted-space">&#160;</span></font><font color="rgb(34, 34, 34)"><tt style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; text-align: start" class="filename">romantest1.py</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium"><span class="Apple-converted-space">&#160;</span><span style="font-variant: normal; font-style: normal; white-space: normal; word-spacing: 0px; text-transform: none; font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-indent: 0px; display: inline !important; letter-spacing: normal; color: rgb(34, 34, 34); font-size: medium; background-color: rgb(255, 255, 255); line-height: 23px; font-weight: normal; float: none; text-align: start">&#21487;&#20197;&#24471;&#21040;&#26356;&#35814;&#32454;&#30340;&#36755;&#20986;&#20449;&#24687;&#65292;&#36825;&#26679;&#20320;&#23601;&#21487;&#20197;&#30475;&#21040;&#27599;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#30340;&#20855;&#20307;&#36816;&#34892;&#24773;&#20917;&#12290;&#22914;&#26524;&#24184;&#36816;&#65292;&#20320;&#30340;&#32467;&#26524;&#24212;&#35813;&#26159;&#36825;&#26679;&#30340;</span></font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369272082553" FOLDED="true" ID="ID_32374888" MODIFIED="1374721451093" TEXT="Example 14.2. Output of romantest1.py against roman1.py">
<node CREATED="1369272096584" ID="ID_1583290897" MODIFIED="1374633598343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fromRoman should only accept uppercase input ... ERROR
    </p>
    <p>
      toRoman should always return uppercase ... ERROR
    </p>
    <p>
      fromRoman should fail with malformed antecedents ... FAIL
    </p>
    <p>
      fromRoman should fail with repeated pairs of numerals ... FAIL
    </p>
    <p>
      fromRoman should fail with too many repeated numerals ... FAIL
    </p>
    <p>
      fromRoman should give known result with known input ... FAIL
    </p>
    <p>
      toRoman should give known result with known input ... FAIL
    </p>
    <p>
      fromRoman(toRoman(n))==n for all n ... FAIL
    </p>
    <p>
      toRoman should fail with non&#8722;integer input ... FAIL
    </p>
    <p>
      toRoman should fail with negative input ... FAIL
    </p>
    <p>
      toRoman should fail with large input ... FAIL
    </p>
    <p>
      toRoman should fail with 0 input ... FAIL
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      ERROR: fromRoman should only accept uppercase input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 154, in testFromRomanCase
    </p>
    <p>
      &#160;&#160;&#160;&#160;roman1.fromRoman(numeral.upper())
    </p>
    <p>
      AttributeError: 'None' object has no attribute 'upper'
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      ERROR: toRoman should always return uppercase
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 148, in testToRomanCase
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertEqual(numeral, numeral.upper())
    </p>
    <p>
      AttributeError: 'None' object has no attribute 'upper'
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman should fail with malformed antecedents
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 133, in testMalformedAntecedent
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.InvalidRomanNumeralError, roman1.fromRoman, s)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: InvalidRomanNumeralError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman should fail with repeated pairs of numerals
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 127, in testRepeatedPairs
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.InvalidRomanNumeralError, roman1.fromRoman, s)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: InvalidRomanNumeralError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman should fail with too many repeated numerals
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 122, in testTooManyRepeatedNumerals
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.InvalidRomanNumeralError, roman1.fromRoman, s)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: InvalidRomanNumeralError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman should give known result with known input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 99, in testFromRomanKnownValues
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertEqual(integer, result)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 273, in failUnlessEqual
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, (msg or '%s != %s' % (first, second))
    </p>
    <p>
      AssertionError: 1 != None
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: toRoman should give known result with known input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 93, in testToRomanKnownValues
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertEqual(numeral, result)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 273, in failUnlessEqual
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, (msg or '%s != %s' % (first, second))
    </p>
    <p>
      AssertionError: I != None
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman(toRoman(n))==n for all n
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 141, in testSanity
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertEqual(integer, result)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 273, in failUnlessEqual
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, (msg or '%s != %s' % (first, second))
    </p>
    <p>
      AssertionError: 1 != None
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: toRoman should fail with non&#8722;integer input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 116, in testNonInteger
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.NotIntegerError, roman1.toRoman, 0.5)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: NotIntegerError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: toRoman should fail with negative input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 112, in testNegative
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.OutOfRangeError, roman1.toRoman, &#8722;1)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: OutOfRangeError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: toRoman should fail with large input
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 104, in testTooLarge
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.OutOfRangeError, roman1.toRoman, 4000)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: OutOfRangeError
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: toRoman should fail with 0 input&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;----------------------------------------------------------------------------------------------------------------------------1&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#160;&#160;File &quot;C:\docbook\dip\py\roman\stage1\romantest1.py&quot;, line 108, in testZero
    </p>
    <p>
      &#160;&#160;&#160;&#160;self.assertRaises(roman1.OutOfRangeError, roman1.toRoman, 0)
    </p>
    <p>
      &#160;&#160;File &quot;c:\python21\lib\unittest.py&quot;, line 266, in failUnlessRaises
    </p>
    <p>
      &#160;&#160;&#160;&#160;raise self.failureException, excName
    </p>
    <p>
      AssertionError: OutOfRangeError&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;----------------------------------------------------------------------------------------------------------------------------2
    </p>
    <p>
      &#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;&#8722;
    </p>
    <p>
      Ran 12 tests in 0.040s&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ----------------------------------------------------------------------------------------------------------------------------3
    </p>
    <p>
      FAILED (failures=10, errors=2)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ----------------------------------------------------------------------------------------------------------------------------4
    </p>
  </body>
</html></richcontent>
<node CREATED="1369272408396" ID="ID_1392818502" MODIFIED="1374634955453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P200
    </p>
    <p>
      Running the script runs unittest.main(), which runs each&#160;test case, which is to say each method defined in each class within romantest.py. For each test case, it prints out the doc string of the method and whether that test passed or failed.&#160;As expected, none of the test cases passed.
    </p>
    <p>
      [pope &lt;du&gt;]
    </p>
    <p>
      &#36816;&#34892;&#33050;&#26412;&#26102;&#36816;&#34892;unittest.main()&#23558;&#36816;&#34892;&#27599;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#65292;&#20063;&#23601;&#26159;&#35828;romantest.py&#20013;&#30340;&#27599;&#20010;&#31867;&#30340;&#23450;&#20041;&#30340;&#27599;&#20010;&#26041;&#27861;&#12290;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#37117;&#23558;&#25171;&#21360;&#20986;&#27492;&#26041;&#27861;&#30340;doc string,&#19982;&#26159;&#21542;&#27979;&#35797;&#36890;&#36807;&#26080;&#20851;&#12290;&#23601;&#20687;&#39044;&#26399;&#19968;&#26679;&#65292;&#27809;&#26377;&#36890;&#36807;&#27979;&#35797;&#30340;&#27979;&#35797;&#29992;&#20363;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36816;&#34892;&#33050;&#26412;&#26102;unittest.main()&#65292;&#36816;&#34892;&#27599;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#65292;&#20063;&#23601;&#26159;&#35828;&#22312;romantest.py&#20013;&#30340;&#27599;&#20010;&#31867;&#20013;&#23450;&#20041;&#30340;&#27599;&#20010;&#26041;&#27861;&#37117;&#34987;&#36816;&#34892;&#12290;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#25171;&#21360;&#20986;&#26469;&#26041;&#27861;&#30340;&#25991;&#26723;&#23383;&#31526;&#20018;&#21644;&#26159;&#21542;&#27979;&#35797;&#36890;&#36807;&#12290;&#21644;&#39044;&#26399;&#30340;&#19968;&#26679;{as expected},&#27809;&#26377;&#27979;&#35797;&#29992;&#20363;&#36890;&#36807;&#27979;&#35797;&#12290;
    </p>
    <p>
      [net &#35793; &#26469;&#28304;:<a href="http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html">http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html</a>]
    </p>
    <p>
      &#36816;&#34892;&#33050;&#26412;&#23558;&#20250;&#25191;&#34892; unittest.main()&#65292;&#30001;&#23427;&#26469;&#25191;&#34892;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#65292;&#20063;&#23601;&#26159;&#27599;&#20010;&#22312; romantest.py &#20013;&#23450;&#20041;&#30340;&#26041;&#27861;&#12290;&#23545;&#20110;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#65292;&#26080;&#35770;&#27979;&#35797;&#36890;&#36807;&#19982;&#21542;&#65292;&#37117;&#20250;&#36755;&#20986;&#36825;&#20010;&#26041;&#27861;&#30340; doc string&#12290;&#24847;&#26009;&#20043;&#20013;&#65292;&#27809;&#26377;&#36890;&#36807;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#12290;
    </p>
    <p>
      [popexizhi:]
    </p>
    <p>
      each method defined in each class within romantest.py
    </p>
    <p>
      [pope&#35793;]&#22312;romantest.py&#20013;&#30340;&#27599;&#20010;&#31867;&#20013;&#23450;&#20041;&#30340;&#27599;&#20010;&#26041;&#27861;
    </p>
    <p>
      [net &#35793;]&#27599;&#20010;&#22312; romantest.py &#20013;&#23450;&#20041;&#30340;&#26041;&#27861;
    </p>
    <p>
      [popexizhi]net&#32763;&#35793;&#20013;&#30340;each class &#34987;net&#30465;&#30053;&#20102;&#65292;&#20063;&#23545;&#21543;&#65292;&#21453;&#27491;&#37117;&#22312;.py&#20013;&#21543;
    </p>
    <p>
      it prints out the doc string of the method and whether that test passed or failed.
    </p>
    <p>
      [pope&#35793;]&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#25171;&#21360;&#20986;&#26469;&#26041;&#27861;&#30340;&#25991;&#26723;&#23383;&#31526;&#20018;&#21644;&#26159;&#21542;&#27979;&#35797;&#36890;&#36807;&#12290;
    </p>
    <p>
      [net &#35793;]&#23545;&#20110;&#27599;&#20010;&#27979;&#35797;&#29992;&#20363;&#65292;&#26080;&#35770;&#27979;&#35797;&#36890;&#36807;&#19982;&#21542;&#65292;&#37117;&#20250;&#36755;&#20986;&#36825;&#20010;&#26041;&#27861;&#30340; doc string
    </p>
    <p>
      [popexizhi] &#36825;&#37324;&#30340;and&#26159;&#34920;&#31034;&#26465;&#20214;&#30340;&#65292;&#36825;&#37324;pope&#32763;&#35793;&#20013;&#27809;&#26377;&#29702;&#35299;&#25171;&#21360;&#20986;&#30340;doc string &#26159;&#26041;&#27861;&#40664;&#35748;&#30340;&#25991;&#23383;&#35828;&#26126;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369272942975" ID="ID_968204100" MODIFIED="1374635417921">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2[&#21407;&#25991;]P201
    </p>
    <p>
      For each failed test case, unittest displays the trace information showing exactly what happened. In this case, the call to assertRaises (also called failUnlessRaises) raised an AssertionError because it was expecting toRoman to raise an OutOfRangeError and it didn't
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23545;&#27599;&#20010;&#27979;&#35797;&#22833;&#36133;&#30340;&#29992;&#20363;&#65292;&#21333;&#20803;&#27979;&#35797;&#23637;&#31034;&#36319;&#36394;{trace}&#20449;&#24687;&#31934;&#30830;&#30340;{exactly}&#26174;&#31034;&#21457;&#29983;&#20102;&#20160;&#20040;.&#22312;&#36825;&#20010;&#20363;&#23376;&#20013;&#65292;&#35843;&#29992;assertRaises&#65288;&#20063;&#21483;&#20570;failUniessRaises&#65289;&#25243;&#20986;{raised}AssertionError &#22240;&#20026;&#23427;&#39044;&#26399; toRoman &#24212;&#35813;&#25243;&#20986;OutOfRangeError &#24322;&#24120;&#20294;&#23427;&#27809;&#26377;&#25243;&#20986;&#12290;
    </p>
    <p>
      [net &#35793;]
    </p>
    <p>
      &#23545;&#20110;&#27599;&#20010;&#22833;&#36133;&#30340;&#27979;&#35797;&#29992;&#20363;&#65292;unittest &#26174;&#31034;&#30340;&#36319;&#36394;&#20449;&#24687;&#21578;&#35785;&#25105;&#20204;&#37117;&#21457;&#29983;&#20102;&#20160;&#20040;&#12290;&#23601;&#27492;&#22788;&#32780;&#35328;&#65292;&#35843;&#29992; assertRaises (&#20063;&#31216;&#20316; failUnlessRaises) &#24341;&#21457;&#20102;&#19968;&#20010; AssertionError &#24322;&#24120;&#65292;&#22240;&#20026;&#26399;&#24453; toRoman &#25152;&#24341;&#21457;&#30340; OutOfRangeError &#24322;&#24120;&#27809;&#26377;&#20986;&#29616;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369273792678" ID="ID_461394844" MODIFIED="1374635534296">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3[&#21407;&#25991;]P201
    </p>
    <p>
      After the detail, unittest displays a summary of how many tests were performed and how long it took.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22312;&#36825;&#20123;&#32454;&#33410;&#20043;&#21518;&#65292;&#21333;&#20803;&#27979;&#35797;&#23637;&#31034;&#26377;&#22810;&#23569;&#27979;&#35797;&#25191;&#34892;{performed}&#21644;&#23427;&#36816;&#34892;&#22810;&#20037;&#30340;&#24635;&#32467;&#12290;
    </p>
    <p>
      [net&#35793;]
    </p>
    <p>
      <font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span style="font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-transform: none; white-space: normal; text-indent: 0px; display: inline !important; background-color: rgb(255, 255, 255); font-style: normal; text-align: -webkit-left; word-spacing: 0px; font-variant: normal; float: none; font-weight: normal; line-height: 23px; font-size: medium; letter-spacing: normal; color: rgb(34, 34, 34)">&#22312;&#36825;&#20123;&#32454;&#33410;&#21518;&#38754;&#65292;</span></font><font color="rgb(34, 34, 34)"><tt class="filename" style="text-transform: none; text-indent: 0px; white-space: normal; text-align: -webkit-left; font-style: normal; background-color: rgb(255, 255, 255); word-spacing: 0px; font-variant: normal; font-weight: normal; line-height: 23px; letter-spacing: normal; color: rgb(34, 34, 34)">unittest</tt></font><font size="medium" color="rgb(34, 34, 34)" face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif"><span class="Apple-converted-space">&#160;</span><span style="font-family: Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif; text-transform: none; text-indent: 0px; white-space: normal; text-align: -webkit-left; font-style: normal; background-color: rgb(255, 255, 255); display: inline !important; word-spacing: 0px; font-variant: normal; float: none; font-weight: normal; line-height: 23px; font-size: medium; letter-spacing: normal; color: rgb(34, 34, 34)">&#32473;&#20986;&#20102;&#19968;&#20010;&#20851;&#20110;&#34987;&#25191;&#34892;&#27979;&#35797;&#30340;&#20010;&#25968;&#21644;&#33457;&#36153;&#26102;&#38388;&#30340;&#24635;&#32467;&#12290;</span></font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369274117787" ID="ID_538050199" MODIFIED="1374721438781">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4[&#21407;&#25991;]P201
    </p>
    <p>
      Overall, the unit test failed because at least one test case did not pass. When a test case doesn't pass, unittest distinguishes between failures and errors. A failure is a call to an assertXYZ method, like assertEqual or assertRaises, that fails because the asserted condition is not true or the expected exception was not raised. An error is any other sort of exception raised in the code you're testing or the unit test case itself. For instance, the testFromRomanCase method (&quot;fromRoman should only accept uppercase input&quot;) was an error, because the call to numeral.upper() raised an AttributeError exception,&#160;because toRoman was supposed to return a string but didn't. But testZero (&quot;toRoman should fail with 0 input&quot;) was a failure, because the call to fromRoman did not raise the InvalidRomanNumeral exception that assertRaises was looking for.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24635;&#35745;&#19968;&#19979;&#65292;&#21333;&#20803;&#27979;&#35797;&#22833;&#36133;&#26159;&#22240;&#20026;&#33267;&#23569;&#26377;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#27809;&#26377;&#36890;&#36807;&#27979;&#35797;&#12290;&#24403;&#27979;&#35797;&#29992;&#20363;&#19981;&#33021;&#36890;&#36807;&#26102;&#65292;&#21333;&#20803;&#27979;&#35797;&#21306;&#20998;&#20102;{distinguishes} &#22833;&#36133;&#21644;&#38169;&#35823;&#12290;&#22833;&#36133;&#26159;&#35843;&#29992;assertXYZ &#26041;&#27861;&#65292;&#20687;assertEqual&#25110;&#32773;assertRaises&#65292;&#22833;&#36133;&#26159;&#22240;&#20026;&#22768;&#26126;&#30340;&#26465;&#20214;{asserted condition}&#19981;&#20026;&#30495;&#25110;&#32773;&#39044;&#26399;&#30340;&#24322;&#24120;{the expected exception }&#27809;&#26377;&#25243;&#20986;&#12290;&#38169;&#35823;&#26159;&#22312;&#20320;&#30340;&#27979;&#35797;&#20195;&#30721;&#25110;&#32773;&#21333;&#20803;&#27979;&#35797;&#29992;&#20363;&#33258;&#36523;&#20013;&#21508;&#31181;&#31181;&#31867;&#30340;&#24322;&#24120;&#25243;&#20986;&#12290;&#20363;&#22914;:testFromRomanCase &#26041;&#27861;&#30340;(&quot;fromRoman should only accept uppercase input&quot;) &#23601;&#26159;&#19968;&#20010;&#38169;&#35823;&#65292;&#22240;&#20026;&#35843;&#29992; numeral.upper() &#25243;&#20986;&#19968;&#20010; AttributeError &#24322;&#24120;&#65292;&#22240;&#20026; toRoman &#24212;&#35813;(was supposed to)&#36820;&#22238;&#23383;&#31526;&#20018;&#21364;&#27809;&#26377;. &#20294;testZero (&quot;toRoman should fail with 0 input&quot;)&#26159;&#19968;&#20010;&#22833;&#36133;&#65292;&#22240;&#20026;&#35843;&#29992;fromRoman &#27809;&#26377;&#25243;&#20986;assertRaises&#26597;&#25214;&#30340; InvalidRomanNumeral &#24322;&#24120;&#12290;
    </p>
    <p>
      [net&#35793; &#26469;&#28304;:<a href="http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html">http://woodpecker.org.cn/diveintopython/unit_testing/stage_1.html </a>]
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#24635;&#32780;&#35328;&#20043;&#65292;&#30001;&#20110;&#33267;&#23569;&#19968;&#20010;&#27979;&#35797;&#29992;&#20363;&#27809;&#26377;&#36890;&#36807;&#65292;&#21333;&#20803;&#27979;&#35797;&#22833;&#36133;&#20102;&#12290;&#24403;&#26576;&#20010;&#27979;&#35797;&#29992;&#20363;&#27809;&#33021;&#36890;&#36807;&#26102;&#65292;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; background-color: rgb(255, 255, 255); white-space: normal; line-height: 23px; font-variant: normal; word-spacing: 0px; text-transform: none; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="filename">unittest</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#20250;&#21306;&#20998;&#26159;&#22833;&#36133; (failures) &#36824;&#26159;&#38169;&#35823; (errors)&#12290;&#22833;&#36133;&#26159;&#25351;&#35843;&#29992;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">assertXYZ</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#26041;&#27861;&#65292;&#27604;&#22914;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">assertEqual</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#25110;&#32773;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">assertRaises</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#26102;&#65292;&#26029;&#35328;&#30340;&#24773;&#20917;&#27809;&#26377;&#21457;&#29983;&#25110;&#39044;&#26399;&#30340;&#24322;&#24120;&#27809;&#26377;&#34987;&#24341;&#21457;&#12290;&#32780;&#38169;&#35823;&#26159;&#25351;&#20320;&#27979;&#35797;&#30340;&#20195;&#30721;&#25110;&#21333;&#20803;&#27979;&#35797;&#26412;&#36523;&#21457;&#29983;&#20102;&#26576;&#31181;&#24322;&#24120;&#12290;&#20363;&#22914;&#65306;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">testFromRomanCase</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#26041;&#27861; (&#8220;<tt class="function">fromRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#21482;&#25509;&#21463;&#22823;&#20889;&#36755;&#20837;&#8221;) &#23601;&#26159;&#19968;&#20010;&#38169;&#35823;&#65292;&#22240;&#20026;&#35843;&#29992;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">numeral.upper()</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#24341;&#21457;&#20102;&#19968;&#20010;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="errorcode">AttributeError</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#24322;&#24120;&#65292;&#22240;&#20026;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">toRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#30340;&#36820;&#22238;&#20540;&#19981;&#26159;&#26399;&#26395;&#30340;&#23383;&#31526;&#20018;&#31867;&#22411;&#12290;&#20294;&#26159;&#65292;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">testZero</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">(&#8220;<tt class="function">toRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#24212;&#35813;&#22312;&#36755;&#20837; 0 &#26102;&#22833;&#36133;&#8221;) &#26159;&#19968;&#20010;&#22833;&#36133;&#65292;&#22240;&#20026;&#35843;&#29992;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">fromRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#27809;&#26377;&#24341;&#21457;&#19968;&#20010;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">assertRaises</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#26399;&#24453;&#30340;&#24322;&#24120;&#65306;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="errorcode">InvalidRomanNumeral</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#12290; </font>
    </p>
    <p>
      [popexizhi]
    </p>
    <p>
      because the call to numeral.upper() raised an AttributeError exception,because toRoman was supposed to return a string but didn't.
    </p>
    <p>
      [pope&#35793;]&#22240;&#20026; toRoman &#24212;&#35813;(was supposed to)&#36820;&#22238;&#23383;&#31526;&#20018;&#21364;&#27809;&#26377;.
    </p>
    <p>
      [net &#35793;]<font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#22240;&#20026;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font color="rgb(34, 34, 34)"><tt style="text-align: -webkit-left; white-space: normal; background-color: rgb(255, 255, 255); line-height: 23px; text-transform: none; word-spacing: 0px; font-variant: normal; font-weight: normal; font-style: normal; text-indent: 0px; letter-spacing: normal; color: rgb(34, 34, 34)" class="function">toRoman</tt></font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)">&#160;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#30340;&#36820;&#22238;&#20540;&#19981;&#26159;&#26399;&#26395;&#30340;&#23383;&#31526;&#20018;&#31867;&#22411; </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">[popexizhi]&#36825;&#20010;&#20301;&#32622;&#32763;&#35793;&#30340;&#27809;&#26377;&#22826;&#22810;&#38382;&#39064;&#65292;&#26597;&#20102;&#19968;&#19979;&#28304;&#30721;&#65292;&#26159;&#22240;&#20026;&#36825;&#37324;&#30340;unittest&#21407;&#25991;&#22914;&#19979;&#65306; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">def testFromRomanCase(self): </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;&quot;&quot;fromRoman should only accept uppercase input&quot;&quot;&quot; </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for integer in range(1, 4000): </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="#ff3333" size="medium">numeral = roman1.toRoman(integer)</font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;roman1.fromRoman(</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="#ff3399" size="medium">numeral.upper()</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">) </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;self.assertRaises(roman1.InvalidRomanNumeralError, </font>
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;roman1.fromRoman, numeral.lower()) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#36825;&#37324;&#30340;&#38169;&#35823;&#26159;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="#ff3399" size="medium">numeral.upper() </font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#20294;&#21407;&#22240;&#26159;</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="#ff3333" size="medium">numeral = roman1.toRoman(integer)</font><font face="Book Antiqua, Georgia, Palatino, Times, Times New Roman, serif" color="rgb(34, 34, 34)" size="medium">&#36820;&#22238;pass&#24341;&#36215;&#30340;&#65292;&#36825;&#26679;&#23601;&#24456;&#26126;&#30333;&#20102;&#65292;&#30475;&#20102;&#32763;&#35793;&#26102;&#65292;&#36824;&#26159;&#19978;&#19979;&#25991;&#24456;&#37325;&#35201;&#21834;&#65306;&#65289; </font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      [popexizhi]&#22833;&#36133;&#26159;&#26029;&#35328;&#26399;&#26395;&#30340;&#22833;&#36133;&#65292;&#32780;&#38169;&#35823;&#26159;&#20195;&#30721;&#26412;&#36523;&#30340;&#38169;&#35823;&#65288;&#20294;&#26377;&#21487;&#33021;&#26159;&#34987;&#27979;&#35797;&#20195;&#30721;&#24341;&#36215;&#30340;&#21834;&#65306;&#65289;&#65289;&#65292;&#25152;&#20197;&#20363;&#23376;&#20013;&#25165;&#20250;&#25552;&#21040;testZero&#27809;&#26377;&#24471;&#21040;&#39044;&#26399;&#30340;&#24322;&#24120;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1370221300125" ID="ID_1083609229" MODIFIED="1370221301593" TEXT="14.2. roman.py, stage 2">
<node CREATED="1370221388437" ID="ID_90798145" MODIFIED="1404805204750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P201
    </p>
    <p>
      Now that you have the framework of the roman module laid&#160;out, it's time to start writing code and passing test cases.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#26377;roman&#27169;&#22359;&#26694;&#26550;&#30340;&#22833;&#36133;&#21152;&#36733;{laid out},&#29616;&#22312;&#26159;&#24320;&#22987;&#20889;&#21709;&#24212;&#20195;&#30721;&#26469;&#36890;&#36807;&#27979;&#35797;&#30340;&#26102;&#20505;&#20102;&#12290;
    </p>
    <p>
      [net &#35793;]
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1370221669750" ID="ID_1735820570" MODIFIED="1370221670625" TEXT="Example 14.3. roman2.py">
<node CREATED="1370221689718" FOLDED="true" ID="ID_611872957" MODIFIED="1401183709152">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;&quot;&quot;Convert to and from Roman numerals&quot;&quot;&quot;
    </p>
    <p>
      #Define exceptions
    </p>
    <p>
      class RomanError(Exception): pass
    </p>
    <p>
      class OutOfRangeError(RomanError): pass
    </p>
    <p>
      class NotIntegerError(RomanError): pass
    </p>
    <p>
      class InvalidRomanNumeralError(RomanError): pass
    </p>
    <p>
      #Define digit mapping
    </p>
    <p>
      romanNumeralMap = (('M',&#160;&#160;1000), -----------------------------------------1
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('CM', 900),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('D',&#160;&#160;500),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('CD', 400),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('C',&#160;&#160;100),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('XC', 90),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('L',&#160;&#160;50),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('XL', 40),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('X',&#160;&#160;10),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('IX', 9),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('V',&#160;&#160;5),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('IV', 4),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;('I',&#160;&#160;1))
    </p>
    <p>
      def toRoman(n):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;&quot;&quot;convert integer to Roman numeral&quot;&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;result = &quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;for numeral, integer in romanNumeralMap:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while n &gt;= integer:&#160;&#160;&#160;&#160;&#160; -----------------------------------------2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;result += numeral
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;n &#8722;= integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;return result
    </p>
    <p>
      def fromRoman(s):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;&quot;&quot;convert Roman numeral to integer&quot;&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pass
    </p>
  </body>
</html></richcontent>
<node CREATED="1370221811343" ID="ID_214946236" MODIFIED="1370222451859">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.[&#21407;&#25991;]P202
    </p>
    <p>
      romanNumeralMap is a tuple of tuples which defines three things:
    </p>
    <p>
      1.The character representations of the most basic Roman numerals. Note that this is not just the single&#8722;character Roman numerals; you're also defining two&#8722;character pairs like CM (&quot;one hundred less than one thousand&quot;); this will make the toRoman code simpler later.
    </p>
    <p>
      2.The order of the Roman numerals. They are listed in descending value order, from M all the way down to I.
    </p>
    <p>
      3.The value of each Roman numeral. Each inner tuple is a pair of (numeral, value).
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      romanNumeralMap &#26159;&#19968;&#20010;&#23545;&#32452;{a tuple of tuples}&#23450;&#20041;&#20102;&#19977;&#20214;&#20107;&#65306;
    </p>
    <p>
      1.&#36825;&#20010;&#23383;&#31526;&#20195;&#34920;&#26368;&#22522;&#30784;&#30340;&#32599;&#39532;&#23383;&#31526;&#12290;&#26631;&#35760;&#36825;&#20123;&#30340;&#19981;&#21482;&#26159;&#31616;&#21333;&#30340;&#32599;&#39532;&#23383;&#31526;&#65292;&#20320;&#20063;&#21487;&#20197;&#23450;&#20041;&#20004;&#20010;&#23383;&#31526;&#23545;&#27604;&#22914;&#20687;CM&#65288;&#8220;900{one hundred less than one thousand}&#8221;&#65289;;&#36825;&#20010;&#23558;&#20351;&#20043;&#21518;&#30340;toRoman&#20195;&#30721;&#21464;&#24471;&#26356;&#21152;&#31616;&#21333;&#12290;
    </p>
    <p>
      2.&#36825;&#20010;&#32599;&#39532;&#23383;&#31526;&#24207;&#21015;&#65292;&#23427;&#20204;&#26159;&#25353;&#38477;&#24207;&#20540;&#32473;&#20986;&#30340;&#65292;&#20174;M&#21040;I
    </p>
    <p>
      3.&#27599;&#19968;&#20010;Roman&#23383;&#31526;&#30340;&#20540;&#12290;&#27599;&#19968;&#20010;&#20869;&#37096;&#23545;&#30340;&#32452;&#25104;&#20026;(numeral,value)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370222443562" ID="ID_986054688" MODIFIED="1370223821984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.[&#21407;&#25991;]P202
    </p>
    <p>
      Here's where your rich data structure pays off, because you don't need any special logic to handle the subtraction rule. To convert to Roman numerals, you simply iterate through romanNumeralMap looking for the largest integer value less than or equal to the input. Once found, you add the Roman numeral representation to the end of the output, subtract the corresponding integer value from the&#160;input, lather, rinse, repeat.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#37324;&#26377;&#20320;&#30340;&#22797;&#26434;&#30340;&#25968;&#30340;&#32467;&#26500;&#34987;&#36716;&#25442;&#20986;{rich data structure pays off},&#22240;&#20026;&#20320;&#19981;&#38656;&#35201;&#20160;&#20040;&#29305;&#27530;&#30340;&#36923;&#36753;&#21435;&#25511;&#21046;&#36825;&#20010;&#36882;&#20943;&#35268;&#21017;{subtraction rule}.&#20026;&#20102;&#36716;&#25442;&#20026;&#32599;&#39532;&#25968;&#23383;&#65292;&#20320;&#21482;&#38656;&#35201;&#31616;&#21333;&#36825;&#20010;romanNumeralMap&#20013;&#37325;&#22797;{iterate} &#26597;&#25214;&#21709;&#24212;&#30340;&#26368;&#22823;&#30340;&#25972;&#25968;&#20540;&#25110;&#31561;&#20110;&#30340;&#36755;&#20986;&#12290;&#19968;&#26086;&#25214;&#21040;&#65292;&#20320;&#23601;&#21487;&#20197;&#22686;&#21152;&#27492;&#32599;&#39532;&#23383;&#31526;&#20195;&#34920;{representation} &#30340;&#23383;&#31526;&#28155;&#21152;&#21040;&#36755;&#20986;&#30340;&#32467;&#23614;&#65292;&#24182;&#20174;&#36755;&#20986;&#20013;&#20943;&#21435;&#30456;&#23545;&#24212;&#30340;{corresponding}&#25972;&#25968;&#20540;&#65292;&#27873;&#27819;[? lather]&#65292;rinse[?&#20914;&#27927;]&#65292;&#26367;&#25442;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1370223302812" ID="ID_903126933" MODIFIED="1370223309750" TEXT="Example 14.4. How toRoman works">
<node CREATED="1370223335265" ID="ID_386797809" MODIFIED="1370223411109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P202
    </p>
    <p>
      If you're not clear how toRoman works, add a print statement to the end of the while loop:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while n &gt;= integer:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;result += numeral
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;n &#8722;= integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;print 'subtracting', integer, 'from input, adding', numeral, 'to output'
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#22914;&#26524;&#20320;&#36824;&#26159;&#19981;&#28165;&#26970;toRoman&#22914;&#20309;&#24037;&#20316;&#65292;&#22686;&#21152;&#25171;&#21360;&#21629;&#20196;&#21040;&#24490;&#29615;&#30340;&#32467;&#23614;&#30340;&#20301;&#32622;:
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370223468453" ID="ID_759378338" MODIFIED="1370223717968">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P202
    </p>
    <p>
      &gt;&gt;&gt; import roman2
    </p>
    <p>
      &gt;&gt;&gt; roman2.toRoman(1424)
    </p>
    <p>
      subtracting 1000 from input, adding M to output
    </p>
    <p>
      subtracting 400 from input, adding CD to output
    </p>
    <p>
      subtracting 10 from input, adding X to output
    </p>
    <p>
      subtracting 10 from input, adding X to output
    </p>
    <p>
      subtracting 4 from input, adding IV to output
    </p>
    <p>
      'MCDXXIV'
    </p>
    <p>
      So toRoman appears to work, at least in this manual spot check. But will it pass the unit testing? Well no, not entirely.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#26679;&#22312;toRoman&#20986;&#29616;&#20102;&#22914;&#20309;&#24037;&#20316;&#65292;&#22312;&#36825;&#20010;&#35828;&#26126;&#28857;&#20013;&#28155;&#21152;&#25163;&#21160;&#26816;&#26597;&#12290;&#37027;&#20040;&#23427;&#21487;&#20197;&#36890;&#36807;&#21333;&#20803;&#27979;&#35797;&#21527;&#65311;&#19981;&#26159;&#24456;&#22909;&#65292;&#24182;&#19981;&#26159;&#20840;&#37096;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1370223888875" ID="ID_1043253527" MODIFIED="1370481928097" TEXT="Example 14.5. Output of romantest2.py against roman2.py">
<node CREATED="1370223911828" ID="ID_1944988413" MODIFIED="1370224122187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P202
    </p>
    <p>
      Remember to run romantest2.py with the &#8722;v command&#8722;line flag to enable verbose mode.
    </p>
    <p>
      &#35760;&#24471;&#21543;&#65292;&#36816;&#34892;romantest2.py &#20351;&#29992; -v &#21629;&#20196; &#21629;&#20196;&#34892;&#26631;&#24535;&#21487;&#20197;&#25171;&#21360;&#35814;&#32454;&#25551;&#36848;&#27169;&#24335;{verbose mode}
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370224124109" ID="ID_574962972" MODIFIED="1370224387890">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [&#21407;&#25991;]P202
    </p>
    <p>
      fromRoman should only accept uppercase input ... FAIL
    </p>
    <p>
      toRoman should always return uppercase ... ok&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-------------------------------------------------------------1
    </p>
    <p>
      fromRoman should fail with malformed antecedents ... FAIL
    </p>
    <p>
      fromRoman should fail with repeated pairs of numerals ... FAIL
    </p>
    <p>
      fromRoman should fail with too many repeated numerals ... FAIL
    </p>
    <p>
      fromRoman should give known result with known input ... FAIL
    </p>
    <p>
      toRoman should give known result with known input ... ok&#160;&#160;&#160;&#160;&#160;&#160;------------------------------------------------------------2
    </p>
    <p>
      fromRoman(toRoman(n))==n for all n ... FAIL
    </p>
    <p>
      toRoman should fail with non&#8722;integer input ... FAIL&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-------------------------------------------------------------3&#160;&#160;&#160;
    </p>
    <p>
      toRoman should fail with negative input ... FAIL
    </p>
    <p>
      toRoman should fail with large input ... FAIL
    </p>
    <p>
      toRoman should fail with 0 input ... FAIL
    </p>
  </body>
</html></richcontent>
<node CREATED="1370224410109" ID="ID_1473289290" MODIFIED="1370224617125">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1[&#21407;&#25991;]P203
    </p>
    <p>
      toRoman does, in fact, always return uppercase, because romanNumeralMap defines the Roman numeral representations as uppercase. So this test passes already.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      toRoman&#23436;&#25104;&#30340;&#65292;&#23454;&#38469;&#19978;&#65292;&#24635;&#20250;&#36820;&#22238;&#22823;&#20889;&#23383;&#31526;&#30340;&#65292;&#22240;&#20026;romanNumeralMap &#23450;&#20041;&#30340;&#32599;&#39532;&#23383;&#31526;&#34920;&#31034;&#23601;&#26159;&#20351;&#29992;&#22823;&#20889;&#23383;&#31526;&#12290;&#25152;&#20197;&#36825;&#20010;&#27979;&#35797;&#29616;&#22312;&#36890;&#36807;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370224727875" ID="ID_919489921" MODIFIED="1375240315578">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2[&#21407;&#25991;]P203
    </p>
    <p>
      Here's the big news: this version of the toRoman function passes the known values test. Remember, it's not comprehensive, but&#160;it does put the function through its paces with a variety of good inputs, including inputs that produce every single&#8722;character Roman numeral, the largest possible input (3999), and the input that produces the longest possible Roman numeral (3888). At this point, you can be reasonably confident that the function works for any good input value you could throw at it.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#37324;&#26377;&#19968;&#20010;&#22823;&#26032;&#38395;:&#36825;&#20010;&#29256;&#26412;&#30340;toRoman&#20989;&#25968;&#36890;&#36807;&#20102;known values&#37096;&#20998;&#30340;&#27979;&#35797;&#12290;&#35760;&#20303;&#65292;&#23427;&#24182;&#19981;&#20840;&#38754;{comprehensive},&#20294;&#23427;&#36890;&#36807;&#33258;&#24049;&#30340;&#27493;&#39588;&#23454;&#29616;&#36825;&#20010;&#21151;&#33021;&#23558;&#21508;&#31181;&#21464;&#21270;&#30340;&#36755;&#20837;&#20540;&#65292;&#21253;&#21547;&#20135;&#29983;&#27599;&#20010;&#21333;&#29420;&#30340;&#32599;&#39532;&#23383;&#31526;&#65292;&#20854;&#20013;&#26368;&#22823;&#20026;3999&#65292;&#32780;&#36755;&#20837;&#26368;&#22823;&#24212;&#35813;&#26159;3888.&#22312;&#36825;&#28857;&#19978;&#65292;&#20320;&#21487;&#20197;&#26377;&#25226;&#25569;&#30456;&#20449;{reasonably confident}&#27492;&#20989;&#25968;&#21487;&#20197;&#23545;&#20219;&#20309;&#35774;&#32622;&#30340;&#20540; &#36827;&#34892;&#22788;&#29702;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1375240328562" ID="ID_1360562735" MODIFIED="1375325575765">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3[&#21407;&#25991;]P203
    </p>
    <p>
      However, the function does not &quot;work&quot; for bad values; it fails every single bad input test. That makes sense,because you didn't include any checks for bad input. Those test cases look for&#160;specific exceptions to be raised (via assertRaises), and you're never raising them. You'll do that in the next stage.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#26080;&#35770;&#22914;&#20309;&#65292;&#20989;&#25968;&#20063;&#19981;&#20250;&#8220;&#24037;&#20316;&#8221;&#22312;&#22351;&#30340;&#36755;&#20837;&#20540;&#20013;;&#23427;&#22312;&#36755;&#20837;&#20219;&#20309;&#31616;&#21333;&#30340;&#22351;&#20540;&#21518;&#37117;&#20250;&#22833;&#25928;&#30340;&#12290;&#36825;&#26159;&#26377;&#36947;&#29702;&#30340;{that makes sense}&#65292;&#22240;&#20026;&#20320;&#19981;&#26410;&#26816;&#27979;&#20219;&#20309;&#22351;&#30340;&#36755;&#20837;&#20869;&#23481;&#12290;&#36825;&#20010;&#27979;&#35797;&#29992;&#20363;&#22240;&#20026;&#29305;&#21035;&#20197;&#22806;&#34987;&#25552;&#20986;&#30340;{look for specifi exceptions to be raised} &#65288;&#30001;&#20110; assertRaise&#65289;,&#32780;&#20320;&#36824;&#20174;&#26410;&#36825;&#20010;&#12290;&#20320;&#23558;&#22312;&#19979;&#19968;&#33410;&#20102;&#35299;&#36825;&#20010;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1375325608343" ID="ID_1402782704" MODIFIED="1375325609671" TEXT="14.3. roman.py, stage 3"/>
</node>
<node CREATED="1370484084629" ID="ID_563408201" MODIFIED="1374721464921" POSITION="left" TEXT="[next &#x8bd1;]">
<arrowlink DESTINATION="ID_90798145" ENDARROW="Default" ENDINCLINATION="1348;0;" ID="Arrow_ID_681595534" STARTARROW="None" STARTINCLINATION="1348;0;"/>
</node>
</node>
</map>

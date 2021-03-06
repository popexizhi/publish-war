<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1401184725152" ID="ID_468641799" MODIFIED="1401184746183" TEXT="Chapter 15. Refactoring ">
<node CREATED="1401184900870" FOLDED="true" ID="ID_261376962" MODIFIED="1425605298053" POSITION="right" TEXT="15.1. Handling bugs ">
<node CREATED="1401184964323" ID="ID_1905489652" MODIFIED="1403602676184">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Despite your best efforts to write comprehensive unit tests, bugs happen. What do I mean by "bug"? A bug is a test case you&#xa0;haven't written yet.
    </p>
    <p>
      [pope &#x8bd1;]
    </p>
    <p>
      &#x5c3d;&#x7ba1;&#x4f60;&#x505a;&#x4e86;&#x6700;&#x5b8c;&#x6210;&#x7684;&#x5355;&#x5143;&#x6d4b;&#x8bd5;&#xff0c;&#x4f46;bugs&#x8fd8;&#x662f;&#x51fa;&#x73b0;&#x4e86;&#x3002;&#x90a3;bug&#x53c8;&#x610f;&#x5473;&#x7740;&#x4ec0;&#x4e48;&#x5462;&#xff1f;&#x4e00;&#x4e2a;bug&#x5c31;&#x662f;&#x4e00;&#x4e2a;&#x4f60;&#x8fd8;&#x6ca1;&#x6709;&#x5199;&#x7684;&#x6d4b;&#x8bd5;&#x7528;&#x4f8b;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1403602763200" FOLDED="true" ID="ID_1802641986" MODIFIED="1404806675171" TEXT="Example 15.1. The bug">
<node CREATED="1403603175653" ID="ID_1353120047" MODIFIED="1403603202293">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; import roman5
    </p>
    <p>
      &gt;&gt;&gt; roman5.fromRoman("") ------------------------------1
    </p>
    <p>
      0
    </p>
  </body>
</html></richcontent>
<node CREATED="1403603203950" ID="ID_72245657" MODIFIED="1404806360250">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.
    </p>
    <p>
      Remember in the previous section when you kept seeing that an empty string would match the regular expression you were using to check for valid Roman numerals? Well, it turns out that this is still true for the&#xa0;final version of the regular expression. And that's a bug; you want an empty string to raise an&#xa0;&#xa0;InvalidRomanNumeralError exception just like any other sequence of characters that don't represent a valid Roman numeral.
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x53ef;&#x8bb0;&#x7684;&#x524d;&#x7ae0;&#x66fe;&#x89c1;&#x7a7a;&#x4e32;&#x7b26;&#x5408;&#x7f57;&#x9a6c;&#x6570;&#x5b57;&#x7684;&#x68c0;&#x67e5;&#xff1f;&#x662f;&#xff0c;&#x6b64;&#x7248;&#x672c;&#x6b63;&#x5219;&#x68c0;&#x67e5;&#x51fa;&#x7684;&#x95ee;&#x9898;&#x663e;&#x793a;&#x4e3a;&#x771f;&#x3002;&#x662f;&#x4e2a;bug&#xff0c;&#x4f60;&#x672c;&#x610f;&#x7a7a;&#x4e32;&#x4e3a;&#x5047; &#x629b;&#x51fa; &#xa0;InvalidRomanNumeralError&#x5f02;&#x5e38; &#xff0c;&#x5c31;&#x50cf;&#x5176;&#x4ed6;&#x975e;&#x7f57;&#x9a6c;&#x6570;&#x5b57;&#x5217;&#x8868;&#x3002;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1404806366968" ID="ID_417512030" MODIFIED="1404806534750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      After reproducing&#xa0;the bug, and before fixing it, you should write a test case that fails, thus illustrating the bug
    </p>
    <p>
      [pope &#x8bd1;]
    </p>
    <p>
      &#x91cd;&#x73b0;&#x6b64;bug&#x540e;&#xff0c;&#x4fee;&#x590d;&#x524d;&#xff0c;&#x4f60;&#x5f53;&#x5199;&#x6b64;&#x5931;&#x6548;&#x7684;&#x6d4b;&#x8bd5;&#x7528;&#x4f8b;&#xff0c;&#x6765;&#x8bb0;&#x8ff0;{illustrating}&#x6b64;bug
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1404806605296" ID="ID_1594664854" MODIFIED="1404806606546" TEXT="Example 15.2. Testing for the bug (romantest61.py)">
<node CREATED="1404806616781" ID="ID_547024989" MODIFIED="1404806624296">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      class FromRomanBadInput(unittest.TestCase):&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0; &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;# previous test cases omitted for clarity (they haven't changed)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;def testBlank(self):
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;"""fromRoman should fail with blank string"""
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;self.assertRaises(roman.InvalidRomanNumeralError, roman.fromRoman, "")&#xa0;&#xa0;&#xa0;--------------------1
    </p>
  </body>
</html></richcontent>
<node CREATED="1404806669281" ID="ID_36402773" MODIFIED="1404806978250">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      Pretty simple stuff here. Call fromRoman with an empty string and make sure it raises an InvalidRomanNumeralError exception. The hard part was finding the bug; now that you know about it, testing for it is the easy part.
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x6b64;&#x5904;&#x9887;{pretty}&#x7b80;&#x5355;.&#x7528;&#x7a7a;&#x4e32;&#x8c03;fromRoman&#xff0c;&#x4e14;&#x786e;&#x5b9a;&#x6b64;&#x5f53;&#x629b;InvalidRomanNumeralError&#x5f02;&#x5e38;&#x3002;&#x96be;&#x51fa;&#x662f;&#x53d1;&#x73b0;&#x6b64;bug&#xff1b;&#x73b0;&#x5728;&#x541b;&#x5f53;&#x77e5;testing&#x624d;&#x662f;&#x7b80;&#x5355;&#x7684;&#x90e8;&#x5206;&#x800c;&#x5df2;&#x3002;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1404807012953" FOLDED="true" ID="ID_910147028" MODIFIED="1404807163453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Since your code has a bug, and you now have a test case that tests this bug, the test case will fail
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x56e0;code&#x6709;bug&#xff0c;&#x4e14;&#x73b0;&#x5728;&#x6709;&#x6b64;bug&#x7684;&#x6d4b;&#x8bd5;&#x7528;&#x4f8b;&#xff0c;&#x6b64;&#x7528;&#x4f8b;&#x6267;&#x884c;&#x5931;&#x8d25;&#x5982;&#x4e0b;:
    </p>
  </body>
</html></richcontent>
<node CREATED="1404807141078" ID="ID_1138041004" MODIFIED="1404807157171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.3. Output of romantest61.py against roman61.py
    </p>
    <p>
      fromRoman should only accept uppercase input ... ok
    </p>
    <p>
      toRoman should always return uppercase ... ok
    </p>
    <p>
      fromRoman should fail with blank string ... FAIL
    </p>
    <p>
      fromRoman should fail with malformed antecedents ... ok
    </p>
    <p>
      fromRoman should fail with repeated pairs of numerals ... ok
    </p>
    <p>
      fromRoman should fail with too many repeated numerals ... ok
    </p>
    <p>
      fromRoman should give known result with known input ... ok
    </p>
    <p>
      toRoman should give known result with known input ... ok
    </p>
    <p>
      fromRoman(toRoman(n))==n for all n ... ok
    </p>
    <p>
      toRoman should fail with non&#x2212;integer input ... ok
    </p>
    <p>
      toRoman should fail with negative input ... ok
    </p>
    <p>
      toRoman should fail with large input ... ok
    </p>
    <p>
      toRoman should fail with 0 input ... ok
    </p>
    <p>
      ======================================================================
    </p>
    <p>
      FAIL: fromRoman should fail with blank string
    </p>
    <p>
      &#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;
    </p>
    <p>
      Traceback (most recent call last):
    </p>
    <p>
      &#xa0;&#xa0;File "C:\docbook\dip\py\roman\stage6\romantest61.py", line 137, in testBlank
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;self.assertRaises(roman61.InvalidRomanNumeralError, roman61.fromRoman, "")
    </p>
    <p>
      &#xa0;&#xa0;File "c:\python21\lib\unittest.py", line 266, in failUnlessRaises
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;raise self.failureException, excName
    </p>
    <p>
      AssertionError: InvalidRomanNumeralError
    </p>
    <p>
      &#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;
    </p>
    <p>
      Ran 13 tests in 2.864s
    </p>
    <p>
      FAILED (failures=1)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1404807161421" ID="ID_1152307237" MODIFIED="1404807198328">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Now you can fix the bug.
    </p>
    <p>
      [pope &#x8bd1;]
    </p>
    <p>
      &#x73b0;&#x5728;&#x6765;&#x4fee;&#x590d;&#x6b64;bug
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1404807255953" FOLDED="true" ID="ID_1778868380" MODIFIED="1404808128265" TEXT="Example 15.4. Fixing the bug (roman62.py)">
<node CREATED="1404807270437" ID="ID_914062268" MODIFIED="1404807331343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This file is available in py/roman/stage6/ in the examples directory
    </p>
    <p>
      [pope &#x8bd1;]
    </p>
    <p>
      &#x6b64;&#x6587;py/roman/stage6/ &#x5b9e;&#x4f8b;&#x6587;&#x4ef6;&#x4e2d;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1404807355859" ID="ID_552048762" MODIFIED="1404807366546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def fromRoman(s):
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;"""convert Roman numeral to integer"""
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;if not s:&#xa0; ------------------------------------------------------------------------------1
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;raise InvalidRomanNumeralError, 'Input can not be blank'
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;if not re.search(romanNumeralPattern, s):
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;raise InvalidRomanNumeralError, 'Invalid Roman numeral: %s' % s
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;result = 0
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;index = 0
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;for numeral, integer in romanNumeralMap:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;while s[index:index+len(numeral)] == numeral:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;result += integer
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;index += len(numeral)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;return result
    </p>
  </body>
</html></richcontent>
<node CREATED="1404807368625" ID="ID_1156337751" MODIFIED="1404807863203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      Only two lines of code are required: an explicit check for an empty string, and a raise statement.
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x53ea;&#x9700;&#x4e24;&#x884c;&#x4ee3;&#x7801;:&#x660e;&#x786e;&#x67e5;&#x7a7a;&#x4e32;&#xff0c;&#x629b;&#x5f02;&#x5e38;&#x58f0;&#x660e;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1404807896968" FOLDED="true" ID="ID_175023558" MODIFIED="1404808127000" TEXT="Example 15.5. Output of romantest62.py against roman62.py">
<node CREATED="1404807899500" ID="ID_748425489" MODIFIED="1404807935062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fromRoman should only accept uppercase input ... ok
    </p>
    <p>
      toRoman should always return uppercase ... ok
    </p>
    <p>
      fromRoman should fail with blank string ... ok&#xa0; --------------------------------------------------------1
    </p>
    <p>
      fromRoman should fail with malformed antecedents ... ok
    </p>
    <p>
      fromRoman should fail with repeated pairs of numerals ... ok
    </p>
    <p>
      fromRoman should fail with too many repeated numerals ... ok
    </p>
    <p>
      fromRoman should give known result with known input ... ok
    </p>
    <p>
      toRoman should give known result with known input ... ok
    </p>
    <p>
      fromRoman(toRoman(n))==n for all n ... ok
    </p>
    <p>
      toRoman should fail with non&#x2212;integer input ... ok
    </p>
    <p>
      toRoman should fail with negative input ... ok
    </p>
    <p>
      toRoman should fail with large input ... ok
    </p>
    <p>
      toRoman should fail with 0 input ... ok
    </p>
    <p>
      &#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;&#x2212;
    </p>
    <p>
      Ran 13 tests in 2.834s
    </p>
    <p>
      OK&#xa0; --------------------------------------------------------2
    </p>
  </body>
</html></richcontent>
<node CREATED="1404807965296" ID="ID_339616174" MODIFIED="1404808011453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
    <p>
      The blank string test case now passes, so the bug is fixed
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x7a7a;&#x4e32;&#x6d4b;&#x8bd5;&#x7528;&#x4f8b;&#x901a;&#x8fc7;&#xff0c;&#x6b64;bug&#x4fee;&#x590d;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1404808029156" ID="ID_1432747169" MODIFIED="1404808105703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.
    </p>
    <p>
      All the other test cases still pass, which means that this bug fix didn't break anything else. Stop coding
    </p>
    <p>
      [pope&#x8bd1;]
    </p>
    <p>
      &#x5168;&#x90e8;&#x6d4b;&#x8bd5;&#x7528;&#x4f8b;&#x901a;&#x8fc7;&#xff0c;&#x8fd9;&#x610f;&#x5473;&#x4fee;&#x590d;bug&#x672a;&#x5f15;&#x5165;&#x5176;&#x4ed6;&#x3002;&#x505c;&#x6b62;&#x7f16;&#x7a0b;&#x4e86;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1404808131203" ID="ID_254861937" MODIFIED="1422407571542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Coding this way does not make fixing bugs any easier. Simple bugs (like this one) require simple test cases; complex bugs will require complex test cases.
    </p>
    <p>
      In a testing&#8722;centric environment, it may seem like it takes longer to fix a bug, since you need to articulate in code exactly what the bug is (to write the test case), then fix the bug itself.
    </p>
    <p>
      Then if the test case doesn't pass right away, you need to figure out whether the fix was wrong, or whether the test case itself has a bug in it.
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#31181;&#32534;&#30721;&#26041;&#24335;&#24182;&#19981;&#33021;&#26356;&#31616;&#21333;&#30340;&#20462;&#22797;bug&#12290;&#31616;&#21333;&#30340;bug&#65288;&#20687;&#36825;&#20010;&#65289;&#38656;&#35201;&#31616;&#21333;&#30340;&#27979;&#35797;&#29992;&#20363;&#65307;&#22797;&#26434;&#30340;bug&#20250;&#38656;&#35201;&#22797;&#26434;&#30340;&#27979;&#35797;&#29992;&#20363;&#12290;
    </p>
    <p>
      &#22312;&#27979;&#35797;&#20013;&#65292;&#30475;&#36215;&#26469;&#26356;&#20687;&#29992;&#36739;&#38271;&#26102;&#38388;&#20462;&#22797;bug&#65292;&#20320;&#38656;&#35201;&#26126;&#30830;{articulate}&#20195;&#30721;&#20013;&#36825;&#20010;bug&#30340;&#20160;&#20040;(&#24182;&#20889;&#21040;&#27979;&#35797;&#29992;&#20363;&#20013;)&#65292;&#28982;&#21518;&#20462;&#22797;&#36825;&#20010;bug&#12290;
    </p>
    <p>
      &#37027;&#20040;&#22914;&#26524;&#27979;&#35797;&#29992;&#20363;&#24182;&#27809;&#26377;&#20351;&#29992;&#27491;&#30830;&#30340;&#26041;&#24335;&#27979;&#35797;&#36890;&#36807;&#65292;&#20320;&#38656;&#35201;&#24819;&#24819;{}&#36825;&#20010;&#20462;&#22797;&#26159;&#21542;&#26159;&#38169;&#35823;&#30340;&#65292;&#25110;&#32773;&#36825;&#20010;&#27979;&#35797;&#29992;&#20363;&#26412;&#36523;&#26377;bug
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1421804421919" ID="ID_1860935668" MODIFIED="1422407465213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      However, in the long run, this back&#8722;and&#8722;forth between test code and code tested pays for itself, because it makes it more likely that bugs are fixed correctly the first time. Also, since you can easily re&#8722;run all the test cases along with your new one, you are much less likely to break old code when fixing new code. Today's unit test is tomorrow's regression test
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#26080;&#35770;&#22914;&#20309;,&#22312;&#38271;&#26102;&#38388;&#36807;&#21435;&#21518;&#65292;&#37325;&#25342;&#20043;&#21069;&#30340;&#27979;&#35797;&#20195;&#30721;&#21644;&#34987;&#27979;&#35797;&#30340;&#20195;&#30721;&#65292;&#36825;&#20010;&#36807;&#31243;&#20351;&#24471;&#23427;&#30475;&#36215;&#26469;&#26356;&#20687;&#26159;bug&#20204;&#22312;&#31532;&#19968;&#26102;&#38388;&#34987;&#20934;&#30830;&#30340;&#20462;&#22797;&#20102;&#12290;&#24182;&#19988;&#65292;&#22312;&#20320;&#30340;&#28155;&#21152;&#26032;&#20869;&#23481;&#21518;&#65292;&#20320;&#23601;&#21487;&#20197;&#31616;&#21333;&#30340;&#36816;&#34892;&#20840;&#37096;&#27979;&#35797;&#29992;&#20363;&#20102;&#65292;&#36825;&#26679;&#20320;&#21487;&#20197;&#22312;&#28155;&#21152;&#26032;&#20195;&#30721;&#26102;&#26356;&#23569;&#30340;&#25171;&#20081;&#26087;&#20195;&#30721;&#20102;&#12290;&#20170;&#22825;&#30340;&#21333;&#20803;&#27979;&#35797;&#23601;&#26159;&#26126;&#22825;&#30340;&#38450;&#27490;&#36864;&#21270;&#30340;&#27979;&#35797;{regression test}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1422407855423" ID="ID_1924784698" MODIFIED="1422407866858" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      15.2. Handling changing requirements
    </p>
  </body>
</html></richcontent>
<node CREATED="1422407934896" ID="ID_1313742305" MODIFIED="1423011698062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Despite your best efforts to pin your customers to the ground and extract exact requirements from them&#160;on pain of horrible nasty things involving scissors and hot wax, requirements will change.
    </p>
    <p>
      Most customers don't know what they want until they see it, and even if they do, they aren't that good at articulating what they want precisely enough to be useful. And even if they do, they'll want more in the next release anyway. So be prepared to update your test cases as requirements change.
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;] &#23613;&#31649;{despite}&#20320;&#23613;&#21147;{efforts}&#31449;&#22312;{pin}&#23458;&#25143;&#30340;&#35282;&#24230;&#65292;&#25552;&#21462;&#20986;{extract}&#20934;&#30830;&#30340;{exact}&#38656;&#27714;&#65292;&#26469;&#33258;&#20110;&#20182;&#20204;&#21487;&#24597;{horribe}&#27745;&#31229;{nasty}&#20043;&#29289;&#30340;&#30171;&#33510;{pain} &#21253;&#25324; &#21098;&#20992;{scissors}&#21644;&#24456;&#28907;&#30340;&#34593;&#27833;{hot wax},&#38656;&#27714;&#36824;&#26159;&#20250;&#21464;&#21160;&#12290;
    </p>
    <p>
      &#22810;&#25968;&#23458;&#25143;&#24182;&#19981;&#30693;&#36947;&#20182;&#20204;&#21040;&#24213;&#35201;&#20160;&#20040;&#30452;&#21040;&#20182;&#20204;&#30475;&#21040;&#25152;&#35201;&#30340;&#65307;&#24182;&#19988;&#21363;&#20351;&#20182;&#20204;&#30693;&#36947;&#33258;&#24049;&#24819;&#35201;&#20160;&#20040;&#65292;&#20182;&#20204;&#20063;&#19981;&#33021;&#28165;&#26224;&#30340;{articulating}&#25551;&#36848;&#20986;&#20160;&#20040;&#23545;&#20182;&#20204;&#26377;&#29992;;&#24182;&#19988;&#21363;&#20351;&#20182;&#20204;&#21487;&#20197;&#28165;&#26224;&#25551;&#36848;&#20182;&#20204;&#24819;&#35201;&#30340;&#65292;&#20182;&#20204;&#20063;&#23558;&#22312;&#19979;&#20010;&#29256;&#26412;&#35201;&#27714;&#30340;&#26356;&#22810;&#12290;&#25152;&#20197;&#20934;&#22791;{prepared}&#26356;&#26032;&#20320;&#30340;&#27979;&#35797;&#29992;&#20363;&#22312;&#38656;&#27714;&#25913;&#21464;&#26102;&#12290;
    </p>
    <p>
      [popexizhi]&quot;from them&#160;on pain of horrible nasty things involving scissors and hot wax&quot;&#36825;&#20010;&#30340;&#20934;&#30830;&#32763;&#35793;&#26159;&#20160;&#20040;&#27604;&#36739;&#22909;&#21602;&#65311;&#20174;&#27700;&#28145;&#28779;&#28909;&#20013;&#25250;&#25937;&#20986;?! :)&#22909;&#21543;&#21453;&#27491;&#26159;&#29712;&#30862;&#30171;&#33510;&#30340;&#20107;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1422493350012" ID="ID_1411570008" MODIFIED="1423011073136">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Suppose, for instance, that you wanted to expand the range of the Roman numeral conversion functions. Remember the rule that said that no character could be repeated more than three times? Well, the Romans were willing to make an exception to that rule by having 4 M characters in a row to represent 4000. If you make this change, you'll be able to expand the range of convertible numbers from 1..3999 to 1..4999. But first, you need to make some changes to the test cases.
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20551;&#35774;&#65292;&#36825;&#20010;&#20363;&#23376;&#20013;&#65292;&#20320;&#24819;&#35201;&#25193;&#23637;&#32599;&#39532;&#23383;&#31526;&#36716;&#25442;&#20989;&#25968;&#30340;&#34892;&#21015;&#20869;&#23481;&#12290;&#35760;&#24471;&#37027;&#20010;&#35268;&#21017;&#35828;&#30340;&#26159;&#19981;&#33021;&#26377;&#23383;&#31526;&#22810;&#20110;&#19977;&#27425;&#20986;&#29616;&#21527;&#65311;&#24456;&#22909;&#65292;&#32599;&#39532;&#23383;&#27597;&#23558;&#25193;&#23637;&#36825;&#20010;&#35268;&#21017;&#20026;&#21487;&#20197;&#26377;4&#20010;M&#26469;&#25551;&#36848;4000.&#22914;&#26524;&#20320;&#23454;&#29616;&#36825;&#20010;&#25913;&#21464;&#65292;&#20320;&#23558;&#25193;&#23637;&#36825;&#20010;&#23383;&#31526;&#20018;&#20174;1&#65374;3999&#20026;1&#65374;4999.&#20294;&#39318;&#20808;&#20320;&#38656;&#35201;&#22312;&#27979;&#35797;&#29992;&#20363;&#20013;&#20570;&#19968;&#20123;&#25913;&#21464;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1423011738133" FOLDED="true" ID="ID_1967764476" MODIFIED="1425605551492" TEXT="Example 15.6. Modifying test cases for new requirements (romantest71.py) ">
<node CREATED="1423012354004" FOLDED="true" ID="ID_510291935" MODIFIED="1423097186712" TEXT="code">
<node CREATED="1423012382430" ID="ID_1228557660" MODIFIED="1423012392343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import roman71
    </p>
    <p>
      import unittest
    </p>
    <p>
      class KnownValues(unittest.TestCase):
    </p>
    <p>
      knownValues = ( (1, 'I'),
    </p>
    <p>
      (2, 'II'),
    </p>
    <p>
      (3, 'III'),
    </p>
    <p>
      (4, 'IV'),
    </p>
    <p>
      (5, 'V'),
    </p>
    <p>
      (6, 'VI'),
    </p>
    <p>
      (7, 'VII'),
    </p>
    <p>
      (8, 'VIII'),
    </p>
    <p>
      (9, 'IX'),
    </p>
    <p>
      (10, 'X'),
    </p>
    <p>
      (50, 'L'),
    </p>
    <p>
      (100, 'C'),
    </p>
    <p>
      (500, 'D'),
    </p>
    <p>
      (1000, 'M'),
    </p>
    <p>
      (31, 'XXXI'),
    </p>
    <p>
      (148, 'CXLVIII'),
    </p>
    <p>
      (294, 'CCXCIV'),
    </p>
    <p>
      (312, 'CCCXII'),
    </p>
    <p>
      (421, 'CDXXI'),
    </p>
    <p>
      (528, 'DXXVIII'),
    </p>
    <p>
      (621, 'DCXXI'),
    </p>
    <p>
      (782, 'DCCLXXXII'),
    </p>
    <p>
      (870, 'DCCCLXX'),
    </p>
    <p>
      (941, 'CMXLI'),
    </p>
    <p>
      (1043, 'MXLIII'),
    </p>
    <p>
      (1110, 'MCX'),
    </p>
    <p>
      (1226, 'MCCXXVI'),
    </p>
    <p>
      (1301, 'MCCCI'),
    </p>
    <p>
      (1485, 'MCDLXXXV'),
    </p>
    <p>
      (1509, 'MDIX'),
    </p>
    <p>
      (1607, 'MDCVII'),
    </p>
    <p>
      (1754, 'MDCCLIV'),
    </p>
    <p>
      (1832, 'MDCCCXXXII'),
    </p>
    <p>
      (1993, 'MCMXCIII'),
    </p>
    <p>
      (2074, 'MMLXXIV'),
    </p>
    <p>
      (2152, 'MMCLII'),
    </p>
    <p>
      (2212, 'MMCCXII'),
    </p>
    <p>
      (2343, 'MMCCCXLIII'),
    </p>
    <p>
      (2499, 'MMCDXCIX'),
    </p>
    <p>
      (2574, 'MMDLXXIV'),
    </p>
    <p>
      (2646, 'MMDCXLVI'),
    </p>
    <p>
      (2723, 'MMDCCXXIII'),
    </p>
    <p>
      (2892, 'MMDCCCXCII'),
    </p>
    <p>
      (2975, 'MMCMLXXV'),
    </p>
    <p>
      (3051, 'MMMLI'),
    </p>
    <p>
      (3185, 'MMMCLXXXV'),
    </p>
    <p>
      (3250, 'MMMCCL'),
    </p>
    <p>
      (3313, 'MMMCCCXIII'),
    </p>
    <p>
      (3408, 'MMMCDVIII'),
    </p>
    <p>
      (3501, 'MMMDI'),
    </p>
    <p>
      (3610, 'MMMDCX'),
    </p>
    <p>
      (3743, 'MMMDCCXLIII'),
    </p>
    <p>
      (3844, 'MMMDCCCXLIV'),
    </p>
    <p>
      (3888, 'MMMDCCCLXXXVIII'),
    </p>
    <p>
      (3940, 'MMMCMXL'),
    </p>
    <p>
      (3999, 'MMMCMXCIX'),
    </p>
    <p>
      (4000, 'MMMM'),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ----------------------------------------------1
    </p>
    <p>
      (4500, 'MMMMD'),
    </p>
    <p>
      (4888, 'MMMMDCCCLXXXVIII'),
    </p>
    <p>
      (4999, 'MMMMCMXCIX'))
    </p>
    <p>
      def testToRomanKnownValues(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should give known result with known input&quot;&quot;&quot;
    </p>
    <p>
      for integer, numeral in self.knownValues:
    </p>
    <p>
      result = roman71.toRoman(integer)
    </p>
    <p>
      self.assertEqual(numeral, result)
    </p>
    <p>
      def testFromRomanKnownValues(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should give known result with known input&quot;&quot;&quot;
    </p>
    <p>
      for integer, numeral in self.knownValues:
    </p>
    <p>
      result = roman71.fromRoman(numeral)
    </p>
    <p>
      self.assertEqual(integer, result)
    </p>
    <p>
      class ToRomanBadInput(unittest.TestCase):
    </p>
    <p>
      def testTooLarge(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should fail with large input&quot;&quot;&quot;
    </p>
    <p>
      self.assertRaises(roman71.OutOfRangeError, roman71.toRoman, 5000)-----------2
    </p>
    <p>
      def testZero(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should fail with 0 input&quot;&quot;&quot;
    </p>
    <p>
      self.assertRaises(roman71.OutOfRangeError, roman71.toRoman, 0)
    </p>
    <p>
      def testNegative(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should fail with negative input&quot;&quot;&quot;
    </p>
    <p>
      self.assertRaises(roman71.OutOfRangeError, roman71.toRoman, ?1)
    </p>
    <p>
      def testNonInteger(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should fail with non?integer input&quot;&quot;&quot;
    </p>
    <p>
      self.assertRaises(roman71.NotIntegerError, roman71.toRoman, 0.5)
    </p>
    <p>
      class FromRomanBadInput(unittest.TestCase):
    </p>
    <p>
      def testTooManyRepeatedNumerals(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should fail with too many repeated numerals&quot;&quot;&quot;
    </p>
    <p>
      for s in ('MMMMM', 'DD', 'CCCC', 'LL', 'XXXX', 'VV', 'IIII'):&#160; --------------3
    </p>
    <p>
      self.assertRaises(roman71.InvalidRomanNumeralError, roman71.fromRoman, s)
    </p>
    <p>
      def testRepeatedPairs(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should fail with repeated pairs of numerals&quot;&quot;&quot;
    </p>
    <p>
      for s in ('CMCM', 'CDCD', 'XCXC', 'XLXL', 'IXIX', 'IVIV'):
    </p>
    <p>
      self.assertRaises(roman71.InvalidRomanNumeralError, roman71.fromRoman, s)
    </p>
    <p>
      def testMalformedAntecedent(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should fail with malformed antecedents&quot;&quot;&quot;
    </p>
    <p>
      for s in ('IIMXCC', 'VX', 'DCM', 'CMM', 'IXIV',
    </p>
    <p>
      'MCMC', 'XCX', 'IVI', 'LM', 'LD', 'LC'):
    </p>
    <p>
      self.assertRaises(roman71.InvalidRomanNumeralError, roman71.fromRoman, s)
    </p>
    <p>
      def testBlank(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should fail with blank string&quot;&quot;&quot;
    </p>
    <p>
      self.assertRaises(roman71.InvalidRomanNumeralError, roman71.fromRoman, &quot;&quot;)
    </p>
    <p>
      class SanityCheck(unittest.TestCase):
    </p>
    <p>
      def testSanity(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman(toRoman(n))==n for all n&quot;&quot;&quot;
    </p>
    <p>
      for integer in range(1, 5000):&#160;&#160;&#160; --------------------------------------------4
    </p>
    <p>
      numeral = roman71.toRoman(integer)
    </p>
    <p>
      result = roman71.fromRoman(numeral)
    </p>
    <p>
      self.assertEqual(integer, result)
    </p>
    <p>
      class CaseCheck(unittest.TestCase):
    </p>
    <p>
      def testToRomanCase(self):
    </p>
    <p>
      &quot;&quot;&quot;toRoman should always return uppercase&quot;&quot;&quot;
    </p>
    <p>
      for integer in range(1, 5000):
    </p>
    <p>
      numeral = roman71.toRoman(integer)
    </p>
    <p>
      self.assertEqual(numeral, numeral.upper())
    </p>
    <p>
      def testFromRomanCase(self):
    </p>
    <p>
      &quot;&quot;&quot;fromRoman should only accept uppercase input&quot;&quot;&quot;
    </p>
    <p>
      for integer in range(1, 5000):
    </p>
    <p>
      numeral = roman71.toRoman(integer)
    </p>
    <p>
      roman71.fromRoman(numeral.upper())
    </p>
    <p>
      self.assertRaises(roman71.InvalidRomanNumeralError,
    </p>
    <p>
      roman71.fromRoman, numeral.lower())
    </p>
    <p>
      if __name__ == &quot;__main__&quot;:
    </p>
    <p>
      unittest.main()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1423012397560" ID="ID_1758567318" MODIFIED="1423013363459">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.The existing known values don't change (they're all still reasonable values to test), but you need to add a few more in the 4000 range. Here I've included 4000 (the shortest), 4500 (the second shortest), 4888 (the longest), and 4999 (the largest).
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#24403;&#21069;&#30693;&#36947;&#20540;&#24182;&#27809;&#26377;&#25913;&#21464;(&#23427;&#20204;&#20173;&#28982;&#26159;&#21512;&#29702;&#30340;&#27979;&#35797;&#20540;)&#65292;&#20294;&#20320;&#38656;&#35201;&#22312;4000&#30340;&#34892;&#21518;&#28155;&#21152;&#26356;&#22810;&#30340;&#27979;&#35797;&#25968;&#25454;&#12290;&#36825;&#37324;&#25105;&#21152;&#20837;&#20102;4000(&#26368;&#23567;&#20540;)&#65292;4500(&#31532;&#20108;&#23567;&#30340;&#20540;)&#65292;4888&#65288;&#36739;&#22823;&#20540;&#65289;&#65292;4999(&#26368;&#22823;&#20540;)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1423097588655" ID="ID_1899091307" MODIFIED="1423097989069">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.The definition of &quot;large input&quot; has changed. This test used to call toRoman with 4000 and expect an error; now that 4000-4999 are good values, you need to bump this up to 5000
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23450;&#20041;&quot;&#26368;&#22823;&#36755;&#20837;&quot;&#30340;&#25913;&#21464;.&#36825;&#20010;&#27979;&#35797;&#20351;&#29992;&#30340;4000&#35843;&#29992;toRoman&#24182;&#19988;&#39044;&#26399;&#19968;&#20010;&#38169;&#35823;&#25243;&#20986;&#65292;&#29616;&#22312;4000&#65374;4999&#37117;&#26159;&#27491;&#24120;&#20540;&#65292;&#20320;&#38656;&#35201;&#20462;&#25913;&#20026;5000
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1423099401449" ID="ID_757067352" MODIFIED="1423100654926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.The definition of &quot;too many repeated numerals&quot; has also changed. This test used to call fromRoman with 'MMMM' and expect an error; now that MMMM is considered a valid Roman numeral, you need to bump this up to 'MMMMM'.
    </p>
    <p>
      [pope&#35793;] &quot;&#36807;&#22810;&#37325;&#22797;&#23383;&#31526;&quot;&#30340;&#23450;&#20041;&#20063;&#38656;&#35201;&#25913;&#21464;&#12290;&#36825;&#20010;&#27979;&#35797;&#20351;&#29992;&quot;MMMM&quot;&#35843;&#29992;fromRoman &#24182;&#19988; &#39044;&#26399;&#19968;&#20010;&#38169;&#35823;&#25243;&#20986;&#65292;&#29616;&#22312;MMMM&#34987;&#35748;&#20026;&#26159;&#19968;&#20010;&#26377;&#25928;&#20010;&#32599;&#39532;&#23383;&#31526;&#65292;&#20320;&#38656;&#35201;&#36319;&#26032;&#23427;&#20026;'MMMMM'.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1425518573147" ID="ID_1289160471" MODIFIED="1425604327947">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4.The sanity check and case checks loop through every number in the range, from 1 to 3999. Since the range has now expanded, these for loops need to be updated as well to go up to 4999.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23436;&#25972;&#24615;&#27979;&#35797;{santiy check}&#29992;&#20363;&#36890;&#36807;&#26816;&#26597;&#33539;&#22260;&#20013;&#30340;1&#65374;3999&#30340;&#27599;&#20010;&#25968;&#23383;&#12290;&#30001;&#20110;&#36825;&#20010;&#33539;&#22260;&#38480;&#21046;&#25193;&#23637;&#20102;&#65292;&#24490;&#29615;&#19978;&#38480;&#35201;&#36319;&#26032;&#21040;4999.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1425604374659" ID="ID_831780113" MODIFIED="1425604671750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Now your test cases are up to date with the new requirements, but your code is not, so you expect several of the test cases to fail.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#29616;&#22312;&#20320;&#30340;&#27979;&#35797;&#29992;&#20363;&#36319;&#26032;&#38656;&#27714;&#30340;&#26032;&#25968;&#25454;&#65292;&#20294;&#20320;&#30340;&#20195;&#30721;&#27809;&#26377;&#26356;&#26032;&#65292;&#25152;&#20197;&#25191;&#34892;&#27979;&#35797;&#27979;&#35797;&#29992;&#20363;&#26377;&#22833;&#36133;&#30340;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1425604786403" FOLDED="true" ID="ID_723925042" MODIFIED="1426121719986">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.7. Output of romantest71.py against roman71.py
    </p>
  </body>
</html></richcontent>
<node CREATED="1425604827552" ID="ID_117376435" MODIFIED="1425604829799" TEXT="code">
<node CREATED="1425604830729" ID="ID_199060079" MODIFIED="1425604893000">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fromRoman should only accept uppercase input ... ERROR ----------------1
    </p>
    <p>
      toRoman should always return uppercase ... ERROR
    </p>
    <p>
      fromRoman should fail with blank string ... ok
    </p>
    <p>
      fromRoman should fail with malformed antecedents ... ok
    </p>
    <p>
      fromRoman should fail with repeated pairs of numerals ... ok
    </p>
    <p>
      fromRoman should fail with too many repeated numerals ... ok
    </p>
    <p>
      fromRoman should give known result with known input ... ERROR-----------2
    </p>
    <p>
      toRoman should give known result with known input ... ERROR-------------3
    </p>
    <p>
      fromRoman(toRoman(n))==n for all n ... ERROR----------------------------4
    </p>
    <p>
      toRoman should fail with non?integer input ... ok
    </p>
    <p>
      toRoman should fail with negative input ... ok
    </p>
    <p>
      toRoman should fail with large input ... ok
    </p>
    <p>
      toRoman should fail with 0 input ... ok
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1425604933063" ID="ID_235842916" MODIFIED="1426036155821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.Our case checks now fail because they loop from 1 to 4999, but toRoman only accepts numbers from 1 to 3999, so it will fail as soon the test case hits 4000.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#25105;&#20204;&#30340;&#29992;&#20363;&#26816;&#26597;&#22833;&#36133;&#20102;&#22240;&#20026;&#20182;&#20204;&#26159;&#20174;1&#21040;4999&#30340;&#24490;&#29615;&#65292;&#20294;&#26159;toRoman&#20165;&#20165;&#25903;&#25345;&#20174;1&#21040;3999&#30340;&#24490;&#29615;&#65292;&#25152;&#20197;&#22312;&#23427;&#36935;&#21040;4000&#30340;&#27979;&#35797;&#29992;&#20363;&#26102;&#22833;&#36133;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426036181198" ID="ID_1867848705" MODIFIED="1426036293961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.The fromRoman known values test will fail as soon as it hits 'MMMM', because fromRoman still thinks this is an invalid Roman numeral
    </p>
    <p>
      [pope&#35793;]fromRoman&#22312;&#36935;&#21040;'MMMM'&#26102;&#27979;&#35797;&#22833;&#36133;&#20102;&#65292;&#22240;&#20026;fromRoman&#20173;&#28982;&#35748;&#20026;&#36825;&#26159;&#19968;&#20010;&#26377;&#38382;&#39064;&#30340;&#32599;&#39532;&#25968;&#23383;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426036331086" ID="ID_1519108014" MODIFIED="1426036611694">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.The toRoman known values test will fail as soon as it hits 4000, because toRoman still thinks this is out of range
    </p>
    <p>
      [pope&#35793;] toRoman&#30693;&#36947;&#23427;&#36935;&#21040;4000&#30340;&#20540;&#26102;&#27979;&#35797;&#22833;&#36133;&#65292;&#22240;&#20026;toRoman&#20173;&#28982;&#35748;&#20026;&#36825;&#20010;&#36229;&#20986;&#33539;&#22260;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426036624122" ID="ID_976586200" MODIFIED="1426036735998">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4.The sanity check will also fail as soon as it hits 4000, because toRoman still thinks this is out of range.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;&#23436;&#25972;&#24615;{sanity}&#27979;&#35797;&#22312;&#25758;&#21040;4000&#26102;&#20173;&#28982;&#22833;&#36133;&#65292;&#20197;&#20026;toRoman&#35748;&#20026;&#36825;&#20010;&#36229;&#20986;&#33539;&#22260;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426036808617" ID="ID_1244033538" MODIFIED="1426037669327">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Now that you have test cases that fail due to the new requirements, you can think about fixing the code to&#160;bring it in line with the test cases. (One thing that takes some getting used to when you first start coding unit tests is that the code being tested is never &quot;ahead&quot; of the test cases. While it's behind, you still have some work to do, and as soon as it catches up to the test cases, you stop coding.)
    </p>
    <p>
      
    </p>
    <p>
      [pope&#35793;]&#29616;&#22312;&#27979;&#35797;&#29992;&#20363;&#30001;&#20110;&#26032;&#30340;&#38656;&#27714;&#32780;&#22833;&#36133;&#65292;&#20320;&#21487;&#20197;&#24819;&#24819;&#22914;&#20309;&#20462;&#25913;&#36825;&#20123;&#20195;&#30721;&#21521;&#36825;&#20123;&#27979;&#35797;&#29992;&#20363;&#30475;&#40784;{to bring it in line}(&#26377;&#20214;&#20107;&#35201;&#33457;&#20123;&#26102;&#38388;&#36866;&#24212;{one thing that takes some getting used to}&#65292;&#24403;&#20320;&#39318;&#27425;&#24320;&#22987;&#21333;&#20803;&#27979;&#35797;&#65292;&#37027;&#20123;&#34987;&#27979;&#20195;&#30721;&#20174;&#26410;&quot;&#39046;&#20808;&quot;{ahead}&#20110;&#27979;&#35797;&#29992;&#20363;&#12290;&#24403;&#23427;&#20204;&#22312;&#21518;&#38754;&#26102;{behind}&#65292;&#20320;&#20173;&#26377;&#20123;&#24037;&#20316;&#35201;&#20570;&#65292;&#22312;&#23427;&#20204;&#36214;&#19978;&#27979;&#35797;&#29992;&#20363;&#21518;&#65292;&#20320;&#25165;&#21487;&#20197;&#20572;&#27490;&#32534;&#30721;)
    </p>
    <p>
      [popexizhi]&#36825;&#20010;&#23601;&#26159;TDD&#30340;&#35201;&#27714;&#21543;&#65292;&#33258;&#24049;&#19968;&#30452;&#22312;&#36716;&#21464;&#33258;&#24049;&#30340;coding&#26041;&#24335;&#65292;&#36825;&#20010;&#24212;&#35813;&#22810;&#24605;&#32771;&#21644;&#23454;&#36341;&#65292;&#25105;&#29616;&#22312;&#36935;&#21040;&#30340;&#26032;&#38382;&#39064;&#26159;&#65292;&#27979;&#35797;&#20195;&#30721;&#22914;&#20309;&#27979;&#35797;&#65311;:)&#25105;&#35828;&#30340;&#33267;&#23569;&#21253;&#25324;testcase&#21644;&#33258;&#21160;&#21270;&#30340;&#27979;&#35797;&#20195;&#30721;&#37096;&#20998;&#20004;&#31181;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1426121720782" FOLDED="true" ID="ID_127030832" MODIFIED="1426640442716">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.8. Coding the new requirements
    </p>
  </body>
</html></richcontent>
<node CREATED="1426121761133" ID="ID_1435909288" MODIFIED="1426122637494">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.toRoman only needs one small change, in the range check. Where you used to check 0 &lt; n &lt; 4000, you now check 0 &lt; n &lt; 5000. And you change the error message that you raise to reflect the new acceptable range (1..4999 instead of 1..3999). You don't need to make any changes to the rest of the function; it handles the new cases already. (It merrily adds 'M' for each thousand that it finds; given 4000,&#160;it will spit out 'MMMM'. The only reason it didn't do this before is that you explicitly stopped it with the range check.)
    </p>
    <p>
      [pope&#35793;]toRoman &#20165;&#38656;&#35201;&#22312;&#33539;&#22260;&#26816;&#26597;&#20013;&#20570;&#19968;&#20010;&#23567;&#30340;&#25913;&#21464;&#12290;&#22312;&#20320;&#20351;&#29992;0&lt;n&lt;4000&#26816;&#26597;&#30340;&#22320;&#26041;&#65292;&#20320;&#29616;&#22312;&#26816;&#26597;0&lt;n&lt;5000.&#24182;&#19988;&#25913;&#21464;&#38169;&#35823;&#20449;&#24687;&#38656;&#35201;&#25552;&#39640;{raise to} &#26032;&#30340;&#21487;&#25509;&#21463;&#33539;&#22260;&#30340;(1..4999 &#20195;&#26367;1..3999).&#20320;&#24182;&#19981;&#38656;&#35201;&#23545;&#20854;&#20313;&#37096;&#20998;{the rest of}&#20570;&#25913;&#21464;;&#23427;&#21487;&#20197;&#24212;&#23545;&#26032;&#30340;&#29992;&#20363;.(&#23427;&#20048;&#20110;&#20026;{merrily}&#20026;&#26597;&#25214;&#21040;&#30340;&#27599;&#20010;&#21315;&#21152;M&#65292;&#32473;4000&#23558;&#36716;&#25442;&#20986;{spit out}'MMMM'.&#21807;&#19968;&#20043;&#21069;&#19981;&#20570;&#30340;&#21407;&#22240;&#23601;&#26159;&#20320;&#22312;&#33539;&#22260;&#26816;&#26597;&#26102;&#26126;&#30830;&#30340;{explicity}&#20572;&#27490;&#20102;&#36716;&#25442;).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426639616678" ID="ID_1684002897" MODIFIED="1426640213429">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.You don't need to make any changes to fromRoman at all. The only change is to romanNumeralPattern; if you look closely, you'll notice that you added another optional M in the first section of the regular expression. This will allow up to 4 M characters instead of 3, meaning you will allow the Roman numeral equivalents of 4999 instead of 3999. The actual fromRoman function is completely general; it just looks for repeated Roman numeral characters and adds them up, without caring how many times they repeat. The only reason it didn't handle 'MMMM' before is that you explicitly stopped it with the regular expression pattern match
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#19981;&#38656;&#35201;&#20026;fromRoman&#20570;&#20219;&#20309;&#25913;&#21464;&#12290;&#21807;&#19968;&#35201;&#21464;&#30340;&#26159;romanNumeralPattern;&#22914;&#26524;&#20320;&#20180;&#32454;&#30475;{look closely}&#20320;&#20250;&#20027;&#35201;&#21040;&#22312;&#27491;&#21017;&#34920;&#36798;&#24335;&#30340;&#31532;&#19968;&#22359;{section}&#21152;&#20837;&#19968;&#20010;M.&#36825;&#26679;&#20801;&#35768;4&#20010;M&#20195;&#26367;3&#20010;M,&#36825;&#24847;&#21619;&#30528;&#20320;&#23558;&#20801;&#35768;&#32599;&#39532;&#23383;&#31526;4999&#26469;&#26367;&#20195;3999.&#36825;&#20010;&#23454;&#38469;&#19978;{actual}fromRoman&#20989;&#25968;&#26159;&#23436;&#20840;&#21487;&#20197;&#30340;{completely general};&#23427;&#20165;&#23547;&#25214;&#26367;&#20195;&#30340;&#32599;&#39532;&#23383;&#31526;&#24182;&#23558;&#20854;&#25340;&#35013;&#36215;&#26469;&#65292;&#19981;&#20851;&#24515;{caring}&#26367;&#25442;&#20102;&#22810;&#23569;&#27425;.&#20043;&#21069;&#21807;&#19968;&#27809;&#26377;&#25171;&#20986;'MMMM'&#30340;&#21407;&#22240;&#26159;&#20320;&#22312;&#27491;&#21017;&#34920;&#36798;&#25191;&#34892;&#21305;&#37197;&#24335;&#20572;&#27490;&#20102;&#23427;.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426123765865" ID="ID_1573045812" MODIFIED="1426640374326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      You may be skeptical that these two small changes are all that you need. Hey, don't take my word for it; see for yourself:
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20320;&#21487;&#33021;&#24576;&#30097;{skeptical} &#20320;&#21482;&#35201;&#20570;&#20004;&#20010;&#23567;&#30340;&#25913;&#21464;&#12290;&#21992;&#65292;&#21035;&#30475;&#36825;&#20010;&#65292;&#27880;&#24847;&#20320;&#33258;&#24049;&#30340;
    </p>
    <p>
      [popexizhi]&#36825;&#20010; don't take your word for it,see for yourself.&#21487;&#20197;&#36825;&#26679;&#32763;&#35793;&#21527;&#65311;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1426640409555" FOLDED="true" ID="ID_313830309" MODIFIED="1426640670671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.9. Output of romantest72.py against roman72.py
    </p>
  </body>
</html></richcontent>
<node CREATED="1426640523596" ID="ID_1607888224" MODIFIED="1426640645170">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      All the test cases pass. Stop coding.
    </p>
    <p>
      Comprehensive unit testing means never having to rely on a programmer who says &quot;Trust me.&quot;
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#25152;&#26377;&#30340;&#27979;&#35797;&#29992;&#20363;&#36890;&#36807;&#20102;&#65292;&#20572;&#27490;&#32534;&#30721;&#12290;
    </p>
    <p>
      &#23436;&#25972;&#30340;&#21333;&#20803;&#27979;&#35797;&#24847;&#21619;&#30528;&#20174;&#27809;&#26377;&#20381;&#36182;{rely on}&#32534;&#31243;&#32773;&#35828;&quot;&#30456;&#20449;{trust}&#25105;&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1426640718531" ID="ID_102580393" MODIFIED="1426640731604" POSITION="right" TEXT="15.3. Refactoring">
<node CREATED="1426640840764" ID="ID_1022170047" MODIFIED="1426641288562">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The best thing about comprehensive unit testing is not the feeling you get when all your test cases finally pass, or even the feeling you get when someone else blames you for breaking their code and you can actually prove that you didn't. The best thing about unit testing is that it gives you the freedom to refactor mercilessly.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#23436;&#25972;&#30340;&#21333;&#20803;&#27979;&#35797;&#30340;&#26368;&#22823;&#22909;&#22788;&#65292;&#19981;&#26159;&#24403;&#20320;&#27979;&#35797;&#29992;&#20363;&#20840;&#37096;&#36890;&#36807;&#27979;&#35797;&#30340;&#24863;&#35273;&#65307;&#29978;&#33267;&#20063;&#19981;&#26159;&#26377;&#20154;&#25351;&#36131;{blames}&#20320;&#24341;&#36215;&#20182;&#30340;&#20195;&#30721;&#38382;&#39064;{breaking their code}&#26102;&#160;&#65292;&#20320;&#21487;&#20197;&#35777;&#26126;&#20320;&#27809;&#26377;&#65307;&#21333;&#20803;&#27979;&#35797;&#24102;&#32473;&#20320;&#26368;&#22909;&#30340;&#20107;&#24773;&#26159;&#20320;&#21487;&#20197;&#33258;&#30001;&#30340;&#29408;&#29408;&#30340;{mercilessly}&#37325;&#26500;&#20320;&#30340;&#20195;&#30721;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426641357791" ID="ID_1139438060" MODIFIED="1426641756312">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Refactoring is the process of taking working code and making it work better. Usually, &quot;better&quot; means &quot;faster&quot;, although it can also mean &quot;using less memory&quot;, or &quot;using less disk space&quot;, or simply &quot;more elegantly&quot;. Whatever it means to you, to your project, in your environment, refactoring is important to the long-term health of any program.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#37325;&#26500;&#22312;&#20351;&#29992;&#20013;&#20195;&#30721;&#30340;&#36807;&#31243;&#26159;&#20351;&#20854;&#24037;&#20316;&#24471;&#26356;&#22909;&#65292;&#19968;&#33324;&#26469;&#35828;,&quot;&#26356;&#22909;&quot;&#24847;&#21619;&#30528;&quot;&#26356;&#24555;&quot;,&#23613;&#31649;{although}&#23427;&#21487;&#33021;&#20063;&#24847;&#21619;&#36825;&#30528;&quot;&#20351;&#29992;&#26356;&#23569;&#30340;&#20869;&#23384;&quot;,&#25110;&#32773;&#8220;&#20351;&#29992;&#26356;&#23569;&#30340;&#30913;&#30424;&#31354;&#38388;&#8221;&#65292;&#25110;&#32773;&#26356;&#31616;&#21333;&#8220;&#26356;&#21152;&#20248;&#38597;{elegantly}&#8221;.&#26080;&#35770;&#22312;&#20320;&#30340;&#29615;&#22659;&#20013;&#23427;&#23545;&#20320;&#21644;&#20320;&#30340;&#39033;&#30446;&#24847;&#21619;&#30528;&#20160;&#20040;&#65292;&#37325;&#26500;&#23545;&#20219;&#20309;&#31243;&#24207;&#30340;&#38271;&#26399;&#20581;&#24247;{long-term health}&#37117;&#24456;&#37325;&#35201;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426641828775" ID="ID_1269487271" MODIFIED="1426726892592">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Here, &quot;better&quot; means &quot;faster&quot;. Specifically, the fromRoman function is slower than it needs to be, because of that big nasty regular expression that you use to validate Roman numerals. It's probably not worth trying to do away with the regular expression altogether (it would be difficult, and it might not end up any faster), but you can speed up the function by precompiling the regular expression.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#37324;,&quot;&#26356;&#22909;&quot;&#24847;&#21619;&#30528;&quot;&#26356;&#24555;&quot;&#12290;&#29305;&#21035;&#26159;{specifically},&#36825;&#20010;fromRoman&#20989;&#25968;&#27604;&#38656;&#35201;&#30340;&#24930;,&#30001;&#20110;&#36825;&#20010;&#22823;&#32780;&#19981;&#22909;&#30340;&#26159;&#29992;&#26469;&#30830;&#23450;{validate}&#32599;&#39532;&#23383;&#31526;&#30340;&#27491;&#21017;&#34920;&#36798;&#24335;.&#23427;&#21487;&#33021;&#24182;&#19981;&#20540;&#24471;&#23581;&#35797;&#21435;&#38500;&#22312;&#19968;&#36215;&#30340;&#27491;&#21017;&#34920;&#36798;&#65288;&#36825;&#20010;&#21487;&#33021;&#26377;&#28857;&#20799;&#38590;&#65292;&#24182;&#19988;&#23427;&#21487;&#33021;&#36824;&#27809;&#26356;&#24555;&#28857;&#20799;&#65289;,&#20294;&#20320;&#21487;&#20197;&#36890;&#36807;&#39044;&#32534;&#35793;{precompiling}&#36825;&#20010;&#27491;&#21017;&#34920;&#36798;&#24335;&#26469;&#36798;&#21040;&#25552;&#36895;&#36825;&#20010;&#20989;&#25968;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426726990326" FOLDED="true" ID="ID_1474447415" MODIFIED="1428542951669" TEXT="Example 15.10. Compiling regular expressions">
<node CREATED="1426727145440" ID="ID_895128003" MODIFIED="1426727152736">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &gt;&gt;&gt; import re
    </p>
    <p>
      &gt;&gt;&gt; pattern = '^M?M?M?$'
    </p>
    <p>
      &gt;&gt;&gt; re.search(pattern, 'M') ------------------------------------------------1
    </p>
    <p>
      &lt;SRE_Match object at 01090490&gt;
    </p>
    <p>
      &gt;&gt;&gt; compiledPattern = re.compile(pattern)-----------------------------------2
    </p>
    <p>
      &gt;&gt;&gt; compiledPattern
    </p>
    <p>
      &lt;SRE_Pattern object at 00F06E28&gt;
    </p>
    <p>
      &gt;&gt;&gt; dir(compiledPattern)----------------------------------------------------3
    </p>
    <p>
      ['findall', 'match', 'scanner', 'search', 'split', 'sub', 'subn']
    </p>
    <p>
      &gt;&gt;&gt; compiledPattern.search('M') --------------------------------------------4
    </p>
    <p>
      &lt;SRE_Match object at 01104928&gt;
    </p>
  </body>
</html></richcontent>
<node CREATED="1426727289411" ID="ID_277068651" MODIFIED="1426728026943">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.
    </p>
    <p>
      This is the syntax you've seen before: re.search takes a regular expression as a string (pattern) and a string to match against it ('M'). If the pattern matches, the function returns a match object which can be queried to find out exactly what matched and how
    </p>
    <p>
      [pope&#35793;]&#36825;&#20010;&#35821;&#27861;&#20043;&#21069;&#20320;&#35265;&#36807;: re.search&#20256;&#20837;&#23383;&#31526;&#20018;&#26684;&#24335;(pattern)&#30340;&#27491;&#21017;&#34920;&#36798;&#24335;&#21644;&#35201;&#34987;&#21305;&#37197;&#30340;&#23383;&#31526;&#20018;('M').&#22914;&#26524;&#26684;&#24335;&#31526;&#21305;&#37197;,&#36825;&#20010;&#20989;&#25968;&#36820;&#22238;&#19968;&#20010;&#21305;&#37197;&#23545;&#35937;&#23427;&#21487;&#20197;&#34987;&#26597;&#25214;&#21040;&#20160;&#20040;&#21305;&#37197;&#21644;&#22914;&#20309;&#21305;&#37197;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426728060302" ID="ID_1266160824" MODIFIED="1426728403468">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.This is the new syntax: re.compile takes a regular expression as a string and returns a pattern object. Note there is no string to match here. Compiling a regular expression has nothing to do with matching it against any specific strings (like 'M'); it only involves the regular expression itself.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#26159;&#19968;&#20010;&#26032;&#30340;&#35821;&#27861;:re.compile &#36755;&#20837;&#19968;&#20010;&#27491;&#21017;&#34920;&#36798;&#24335;&#26368;&#20026;&#23383;&#31526;&#20018; &#24182;&#36820;&#22238;&#19968;&#20010;&#26679;&#24335;&#23545;&#35937;{pattern object}.&#35760;&#20303;&#36825;&#37324;&#27809;&#26377;&#23383;&#31526;&#20018;&#21305;&#37197;&#36807;&#31243;.&#32534;&#35793;{compiling}&#19968;&#20010;&#27491;&#21017;&#34920;&#36798;&#24335;&#32780;&#22312;&#21305;&#37197;&#29305;&#27530;&#23383;&#31526;&#20018;(&#20687;'M')&#19978;&#20160;&#20040;&#20063;&#19981;&#20570;.&#23427;&#20165;&#21253;&#21547;&#27491;&#21017;&#34920;&#36798;&#24335;&#26412;&#36523;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1426728422852" ID="ID_1824992257" MODIFIED="1428456335064">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.
    </p>
    <p>
      The compiled pattern object returned from re.compile has several useful-looking functions, including several (like search and sub) that are available directly in the re module.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#36825;&#20010;compiledpattern &#23545;&#35937;&#36820;&#22238;&#26469;&#33258;&#20110;re.complie &#30340;&#20960;&#20010; &#30475;&#26469;&#26377;&#29992;&#30340;&#26041;&#27861;, &#27604;&#22914;&#160; &#22312;re&#27169;&#22359;&#20013; &#20960;&#20010;(&#20687; search &#21644; sub)&#30452;&#25509;&#30340;&#26377;&#29992;&#30340;&#26041;&#27861;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1428456376820" ID="ID_276633939" MODIFIED="1428542587184">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4.
    </p>
    <p>
      Calling the compiled pattern object's search function with the string 'M' accomplishes the same thing as calling re.search with both the regular expression and the string 'M'. Only much, much faster. (In fact, the re.search function simply compiles the regular expression and calls the resulting pattern object's search method for you.)
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#35843;&#29992;&#36825;&#20010;compiledPattern &#23545;&#35937;&#30340;search &#26041;&#27861;&#26597;&#25214;&#23383;&#31526;'M' &#160;&#36798;&#21040;{accomplishe} &#21644;&#35843;&#29992;re.search &#21516;&#26679;&#30340;&#25928;&#26524; ,&#37117;&#26159;&#27491;&#21017;&#34920;&#36798;&#26597;&#25214;'M'.&#20165;&#20165;&#26159;&#26356;&#24555;&#20102;&#12290;(&#23454;&#38469;&#19978;,&#36825;&#20010;re.search &#26041;&#27861;&#31616;&#21333;&#22320;&#32534;&#35793;&#20102;&#27491;&#21017;&#34920;&#36798;&#24335;&#24182;&#19988; &#20026;&#20320;&#35843;&#29992;&#20102;&#21305;&#37197;&#26679;&#26412;&#23545;&#35937;&#30340;search&#26041;&#27861;&#30340;&#32467;&#26524;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1428542603715" ID="ID_43754463" MODIFIED="1428542798754">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Whenever you are going to use a regular expression more than once, you should compile it to get a pattern object, then call the methods on the pattern object directly.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#26080;&#35770;&#20309;&#26102;&#20320;&#25171;&#31639;&#20351;&#29992;&#27491;&#21017;&#34920;&#36798;&#24335;&#22810;&#20313;&#19968;&#27425;,&#20320;&#24212;&#35813;&#32534;&#35793;&#23427;&#33719;&#24471;&#19968;&#20010;&#24453;&#21305;&#37197;{pattern}&#23545;&#35937;&#65292;&#22312;&#38656;&#35201;&#21305;&#37197;&#30340;&#20301;&#32622;&#30452;&#25509;&#35843;&#29992;&#23427;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1428543020172" ID="ID_793315971" MODIFIED="1428543023436">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.11. Compiled regular expressions in roman81.py
    </p>
  </body>
</html></richcontent>
<node CREATED="1428543071197" ID="ID_1332036753" MODIFIED="1428543465033">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This file is available in py/roman/stage8/ in the examples directory.
    </p>
    <p>
      If you have not already done so, you can download this and other examples (http://diveintopython.org/download/diveintopython?examples?5.4.zip) used in this book.
    </p>
    <p>
      [pope&#35793;]
    </p>
    <p>
      &#20351;&#29992;&#30340;&#25991;&#20214;&#23384;&#22312;&#20110;&#20363;&#23376;&#25991;&#20214;&#22841;py/roman/stage8/&#20013;&#65292;&#22914;&#26524;&#20320;&#27809;&#26377;&#19979;&#36733;&#36825;&#20010;&#65292;&#20320;&#21487;&#20197;&#19979;&#36733;&#26412;&#20070;&#30340;&#20363;&#23376;&#20351;&#29992;(http://diveintopython.org/download/diveintopython?examples?5.4.zip)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1428543585081" ID="ID_1799446256" MODIFIED="1428543588719">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # toRoman and rest of module omitted for clarity
    </p>
    <p>
      romanNumeralPattern = \
    </p>
    <p>
      &#160;&#160;&#160; re.compile('^M?M?M?M?(CM|CD|D?C?C?C?)(XC|XL|L?X?X?X?)(IX|IV|V?I?I?I?)$')---------1
    </p>
    <p>
      def fromRoman(s):
    </p>
    <p>
      &quot;&quot;&quot;convert Roman numeral to integer&quot;&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if not s:
    </p>
    <p>
      &#160;&#160;&#160;&#160; raise InvalidRomanNumeralError, 'Input can not be blank'
    </p>
    <p>
      &#160;&#160;&#160;&#160;if not romanNumeralPattern.search(s):--------------------------------------------2
    </p>
    <p>
      &#160;&#160;&#160;&#160; raise InvalidRomanNumeralError, 'Invalid Roman numeral: %s' % s
    </p>
    <p>
      &#160;&#160;&#160;&#160;result = 0
    </p>
    <p>
      &#160;&#160;&#160;&#160;index = 0
    </p>
    <p>
      &#160;&#160;&#160;&#160;for numeral, integer in romanNumeralMap:
    </p>
    <p>
      &#160;&#160;&#160;&#160; while s[index:index+len(numeral)] == numeral:
    </p>
    <p>
      &#160;&#160;&#160;&#160; result += integer
    </p>
    <p>
      &#160;&#160;&#160;&#160; index += len(numeral)
    </p>
    <p>
      &#160;&#160;&#160;&#160;return result
    </p>
  </body>
</html></richcontent>
<node CREATED="1428543611701" ID="ID_8669587" MODIFIED="1429060343467">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.This looks very similar, but in fact a lot has changed. romanNumeralPattern is no longer a string; it is a pattern object which was returned from re.compile
    </p>
    <p>
      [pope]
    </p>
    <p>
      &#36825;&#20010;&#30475;&#36215;&#26469;&#24456;&#30456;&#20284;&#65292;&#20294;&#26159;&#23454;&#38469;&#19978;&#26159;&#26377;&#25913;&#21464;&#30340;&#12290; romanNumeralPattern&#26159;&#19968;&#20010;&#19981;&#38271;&#30340;&#23383;&#31526;&#20018;&#160;,&#23427;&#26159;re.compile&#36820;&#22238;&#30340;&#19968;&#20010;&#21305;&#37197;&#23545;&#35937;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1429059876830" ID="ID_1640698657" MODIFIED="1429061361525">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.That means that you can call methods on romanNumeralPattern directly. This will be much, much faster than calling re.search every time. The regular expression is compiled once and stored in romanNumeralPattern when the module is first imported; then, every time you call fromRoman, you can immediately match the input string against the regular expression, without any intermediate steps occurring under the covers.
    </p>
    <p>
      [pope]
    </p>
    <p>
      &#36825;&#20010;&#24847;&#21619;&#30528;&#20320;&#21487;&#20197;&#30452;&#25509;&#35843;&#29992;romanNumeralPattern&#26041;&#27861;.&#36825;&#20010;&#27599;&#27425;&#35843;&#29992;re.search&#36820;&#22238;&#30340;&#26356;&#24555;&#20102;.&#36825;&#20010;&#21482;&#22312;&#39318;&#27425;&#23548;&#20837;&#26102;&#65292;&#32534;&#35793;&#27491;&#21017;&#34920;&#36798;&#24335;&#19968;&#27425;&#23384;&#20648;&#22312;romanNumeralPattern;&#37027;&#20040;,&#27599;&#27425;&#20320;&#35843;&#29992;fromRoman,&#20320;&#21487;&#20197;&#30452;&#25509;&#23545;&#27491;&#21017;&#36827;&#34892;&#36755;&#20837;&#23383;&#31526;&#20018;&#21305;&#37197;,&#27809;&#26377;&#20219;&#20309;&#20013;&#38388;&#27493;&#39588;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1429060386467" ID="ID_1497893406" MODIFIED="1429060386467" TEXT=""/>
</node>
<node CREATED="1429060772054" ID="ID_1382665796" MODIFIED="1429663917908">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      So how much faster is it to compile regular expressions?&#160;See for yourself
    </p>
    <p>
      [pope]
    </p>
    <p>
      &#27491;&#21017;&#34920;&#36798;&#32534;&#35793;&#22914;&#20309;&#26356;&#24555;&#21602;?&#33258;&#24049;&#30475;&#21543;{see for yourserlf}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1429060843828" ID="ID_1974546464" MODIFIED="1429060850244">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example 15.12. Output of romantest81.py against roman81.py
    </p>
  </body>
</html></richcontent>
<node CREATED="1429060926815" ID="ID_1549206371" MODIFIED="1429060981390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .............&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------1
    </p>
    <p>
      ----------------------------------------------------------------------
    </p>
    <p>
      Ran 13 tests in 3.385s&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------2
    </p>
    <p>
      OK&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --------------------------------------------3
    </p>
  </body>
</html></richcontent>
<node CREATED="1429060982814" ID="ID_350166049" MODIFIED="1429664522140">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.Just a note in passing here: this time, I ran the unit test without the -v option, so instead of the full doc string for each test, you only get a dot for each test that passes. (If a test failed, you'd get an F, and if it had an error, you'd get an E. You'd still get complete tracebacks for each failure and error, so you could track down any problems.)
    </p>
    <p>
      [pope]
    </p>
    <p>
      &#24403;&#25105;&#36816;&#34892;&#27809;&#26377;-v&#21442;&#25968;&#30340;&#21333;&#20803;&#27979;&#35797;&#26102;&#65292;&#36825;&#37324;&#20165;&#26631;&#35760;&#19968;&#20010;&#27979;&#35797;&#36890;&#36807;,&#29992;&#26469;&#26367;&#20195;&#27599;&#19968;&#20010;&#27979;&#35797;&#30340;&#35828;&#26126;&#25991;&#26723;&#23383;&#31526;,&#27599;&#20010;&#36890;&#36807;&#30340;&#27979;&#35797;&#20320;&#20165;&#24471;&#21040;&#19968;&#20010;&#28857;{a dot}&#12290;(&#22914;&#26524;&#27979;&#35797;&#22833;&#36133;,&#20320;&#24471;&#21040;&#19968;&#20010;F,&#24182;&#19988;&#22914;&#26524;&#20320;&#26377;&#19968;&#20010;&#38169;&#35823;&#65292;&#20250;&#24471;&#21040;&#19968;&#20010;E.&#20320;&#20173;&#28982;&#26377;&#27599;&#20010;&#22833;&#36133;&#21644;&#38169;&#35823;&#30340;&#23436;&#25972;&#22534;&#26632;&#65292;&#36825;&#26679;&#20320;&#21487;&#20197;&#36319;&#36394;&#27599;&#20010;&#38382;&#39064;.)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1429061072837" ID="ID_1753045638" MODIFIED="1429752814587">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.You ran 13 tests in 3.385 seconds, compared to 3.685 seconds without precompiling the regular expressions. That's an 8% improvement overall, and remember that most of the time spent during the unit test is spent doing other things. (Separately, I time?tested the regular expressions by themselves, apart from the rest of the unit tests, and found that compiling this regular expression speeds up the search by an average of 54%.) Not bad for such a simple fix.
    </p>
    <p>
      [pope]
    </p>
    <p>
      &#20320;&#36816;&#34892;13&#20010;&#27979;&#35797;3.385&#31186;,&#27604;&#36739;3.685&#31186;&#27809;&#26377;&#32534;&#35793;&#30340;&#27491;&#21017;&#34920;&#36798;.&#37027;&#26159;&#19968;&#20010;8%&#30340;&#25913;&#36827;,&#24182;&#19988;&#35760;&#20303;&#22823;&#37096;&#20998;&#26102;&#38388;&#22312;&#21333;&#20803;&#27979;&#35797;&#20013;&#37117;&#26159;&#20570;&#20854;&#20182;&#30340;&#20107;.&#65288;&#20998;&#21035;&#35760;&#24405;&#26102;&#38388;{separately , I time}? &#27979;&#35797;&#27491;&#21017;&#34920;&#36798;&#36890;&#36807;&#20182;&#20204;&#33258;&#36523;,&#25286;&#20998;&#21333;&#20803;&#27979;&#35797;&#37096;&#20998;,&#32534;&#35793;&#27491;&#21017;&#22312;&#25628;&#32034;&#20013;&#20351;&#29992;&#20102;54%&#30340;&#26102;&#38388;&#65289;&#36825;&#20010;&#31616;&#21333;&#30340;&#20462;&#25913;&#24182;&#19981;&#22351;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1429061124855" ID="ID_1915599945" MODIFIED="1429752895689">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.Oh, and in case you were wondering, precompiling the regular expression didn't break anything, and you just proved it.
    </p>
    <p>
      [pope]
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>

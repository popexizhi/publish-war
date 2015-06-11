<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1363327718612" ID="ID_1163368649" LINK="&#x6570;&#x636e;&#x5e93;.mm" MODIFIED="1365671820328" TEXT="OSA&#x7cfb;&#x7edf;&#x5b89;&#x88c5;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://bbs.osapub.com/forum.php?mod=viewthread&amp;tid=4124&amp;reltid=3992&amp;pre_pos=3&amp;ext=
    </p>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" cellpadding="0" cellspacing="0" id="pid7916">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellpadding="0" cellspacing="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              &#38024;&#23545; OSA &#30340;&#23433;&#35013;&#37197;&#32622;<br />&#160; &#160;&#160;&#30001;&#20110;&#35770;&#22363;&#37324;&#30475;&#21040;&#24456;&#22810;&#20804;&#24351;&#20351;&#29992; OSA &#22810;&#23569;&#20250;&#20986;&#29616;&#28857;&#38382;&#39064;&#65292;&#36824;&#26159;&#20915;&#23450;&#33457;&#28857;&#26102;&#38388;&#65292;&#25226;&#25972;&#20010;&#30340;&#36807;&#31243;<br />&#36807;&#19968;&#36941;&#12290;<br />&#160; &#160;&#160;&#39318;&#20808;&#26159;nginx mysql&#160;&#160;php &#30340;&#29615;&#22659;&#65292;nginx &#21487;&#20197;&#29992;&#20854;&#23427;&#30340;web &#26381;&#21153;&#22120;&#20195;&#26367;&#65292;&#22914; apache&#65292;lighttpd &#31561;&#12290;<br />&#19968;&#27493;&#19968;&#27493;&#26469;&#21543;&#65292;&#27605;&#31455;&#27599;&#20010;&#20154;&#25026;&#30340;&#19996;&#35199;&#19981;&#23613;&#28982;&#30456;&#21516;&#12290;(gcc make &#30340;&#29615;&#22659;&#21487;&#20197;&#33258;&#34892;yum &#25110;&#32773;apt-get)<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
</richcontent>
<node CREATED="1363327730275" MODIFIED="1363327815742" POSITION="left" TEXT="1. &#x521b;&#x5efa; osa &#x76ee;&#x5f55; #mkdir /usr/local/osa "/>
<node CREATED="1363327804362" FOLDED="true" MODIFIED="1363861154931" POSITION="left" TEXT="2. &#x4e0b;&#x8f7d;pcre &#xff08;nginx &#x4e2d;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#x6b63;&#x5219;&#x8868;&#x8fbe;&#x5f0f;&#x9700;&#x8981;&#x7528;&#x5230;&#xff09;&#x5e76;&#x89e3;&#x538b; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" id="pid7916" cellspacing="0" cellpadding="0">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #cd ~<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#wget&#160;&#160; ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.30.tar.gz<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#tar -zxvf pcre-8.30.tar.gz &#160;&#160;&#160;&#160;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cd&#160;&#160;~/pcre-8.30 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;./configure &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;make &amp;&amp; make install
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
<node CREATED="1363348698242" MODIFIED="1363851731663" TEXT="&#x9700;&#x8981;&#x5b89;&#x88c5;gcc configure: error: no acceptable C compiler found in $PATH">
<node CREATED="1363348754719" MODIFIED="1363348755547" TEXT="yum install -y gcc*"/>
</node>
</node>
<node CREATED="1363328180910" FOLDED="true" MODIFIED="1363861140853" POSITION="left" TEXT="3. &#x4e0b;&#x8f7d;&#x5b89;&#x88c5;nginx ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" id="pid7916" cellspacing="0" cellpadding="0">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #cd ~<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#wget <a target="_blank" href="http://www.nginx.org/download/nginx-1.2.2.tar.gz">http://www.nginx.org/download/nginx-1.2.2.tar.gz</a><br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#tar -zxvf nginx-1.2.2.tar.gz<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd nginx-1.2.2<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --prefix=/usr/local/osa/nginx --without-http_auth_basic_module \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --without-http_empty_gif_module --without-http_browser_module \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; --with-http_stub_status_module --with-pcre=/root/pcre-8.30<br />&#160;&#160;&#160;&#160;&#160;&#160;#make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;***&#35831;&#30830;&#20445;&#20197;&#19978;&#36807;&#31243;&#26080;&#38169;***<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
<node CREATED="1363331408501" MODIFIED="1363331417984" TEXT="--without&#x9009;&#x9879;&#x4e0d;&#x80fd;&#x7528;"/>
<node CREATED="1363331418465" MODIFIED="1363332535828" TEXT="gcc&#x7f16;&#x8bd1;&#x73af;&#x5883;&#x6ca1;&#x6709;&#xff0c;&#x5b89;&#x88c5;gcc">
<node CREATED="1363331432074" MODIFIED="1363331439087" TEXT="yum install -y gcc*"/>
</node>
<node CREATED="1363332537211" MODIFIED="1363332691001" TEXT="make&#x540e;&#x62a5;&#x9519;">
<node CREATED="1363332609481" MODIFIED="1363332610443" TEXT="make -f objs/Makefile make[1]: Entering directory `/root/nginx-1.2.2&apos; cd /root/pcre-8.3 \ &#x9;&amp;&amp; if [ -f Makefile ]; then make distclean; fi \ &#x9;&amp;&amp; CC=&quot;gcc&quot; CFLAGS=&quot;&quot; \ &#x9;./configure --disable-shared  /bin/sh: line 0: cd: /root/pcre-8.3: &#x6ca1;&#x6709;&#x90a3;&#x4e2a;&#x6587;&#x4ef6;&#x6216;&#x76ee;&#x5f55; make[1]: *** [/root/pcre-8.3/Makefile] &#x9519;&#x8bef; 1 make[1]: Leaving directory `/root/nginx-1.2.2&apos; make: *** [build] &#x9519;&#x8bef; 2">
<node CREATED="1363332618494" MODIFIED="1363332638302" TEXT="&#x5148;&#x6267;&#x884c;&#x524d;&#x8fb9;&#x7684;./configure --prefix=/usr/local/osa/nginx --without-http_auth_basic_module --without-http_empty_gif_module --without-http_browser_module --with-http_stub_status_module"/>
</node>
</node>
<node CREATED="1363332691890" MODIFIED="1363332693058" TEXT="./configure --prefix=/usr/local/osa/nginx --without-http_auth_basic_module --without-http_empty_gif_module --without-http_browser_module --with-http_stub_status_module --with-pcre=/root/pcre-8.3"/>
<node CREATED="1363335328837" MODIFIED="1363335573917" TEXT="make&#x540e;&#x62a5;&#x9519;">
<node CREATED="1363335336185" MODIFIED="1363335346688" TEXT="&#x9700;&#x8981;&#x5b89;&#x88c5;per">
<node CREATED="1363335396101" MODIFIED="1363335411685" TEXT="cd /root/pcre-8.30"/>
<node CREATED="1363335426954" MODIFIED="1363335525175" TEXT="./configure&#x5b89;&#x88c5;perl&#x7136;&#x540e;make"/>
<node CREATED="1363335477195" MODIFIED="1363335552838" TEXT="&#x8fdb;&#x5165;nginx&#x4e0b;&#x5220;&#x9664;rm -fr Makefile&#xff0c;&#x8fd0;&#x884c;&#x914d;&#x7f6e;&#x547d;&#x4ee4;&#xff0c;&#x7136;&#x540e;make &amp;&amp; make install"/>
</node>
</node>
<node CREATED="1363335575214" MODIFIED="1363856967740" TEXT="&#x8bbf;&#x95ee;Nginx&#x540e;&#x4e0d;&#x663e;&#x793a;">
<node CREATED="1363335602147" MODIFIED="1363335603621" TEXT="iptables -F"/>
<node CREATED="1363335605364" MODIFIED="1363335616940" TEXT="/etc/init.d/iptables save"/>
</node>
<node CREATED="1363337114424" MODIFIED="1363337121982" TEXT="&#x542f;&#x52a8;/usr/local/osa/nginx/sbin/nginx"/>
<node CREATED="1363337122821" MODIFIED="1363337134408" TEXT="&#x505c;&#x6b62;/usr/local/osa/nginx/sbin/nginx -s stop"/>
</node>
<node CREATED="1363332780917" ID="ID_1928092912" MODIFIED="1365671821859" POSITION="left" TEXT="4. &#x4e0b;&#x8f7d;&#x5b89;&#x88c5;mysql&#xff0c;&#x53e6;&#x5916;&#x7531;&#x4e8e;mysql &#x5b89;&#x88c5;&#x8def;&#x5f84;&#x95ee;&#x9898;&#xff0c;&#x9700;&#x8981;&#x6307;&#x5b9a;mysql &#x5e93;&#x6587;&#x4ef6;&#x3002; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" cellpadding="0" cellspacing="0" id="pid7916">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellpadding="0" cellspacing="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #cd ~<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#wget http://download.softagency.net/MySQL/Downloads/MySQL-5.0/mysql-5.0.95.tar.gz<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#tar -zxvf mysql-5.0.95.tar.gz<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd mysql-5.0.95<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --prefix=/usr/local/osa/mysql --enable-assembler --with-extra-charsets=complex \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;--enable-thread-safe-client&#160;&#160;--with-readline --with-charset=utf8 \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;--with-collation=utf8_general_ci --with-client-ldflags=-all-static \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;--with-mysqld-ldflags=-all-static<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#make &amp;&amp; make install<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#echo &quot;/usr/local/osa/mysql/lib/mysql&quot; &gt;&gt; /etc/ld.so.conf<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#ldconfig -f /etc/ld.so.conf<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;***&#35831;&#30830;&#20445;&#20197;&#19978;&#36807;&#31243;&#26080;&#38169;***<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
</richcontent>
<node CREATED="1363333250487" MODIFIED="1363333252019" TEXT="./configure --prefix=/usr/local/osa --enable-assembler --with-extra-charsets=complex --enable-thread-safe-client  --with-readline --with-charset=utf8 --with-collation=utf8_general_ci --with-client-ldflags=-all-static--with-mysqld-ldflags=-all-static"/>
<node CREATED="1363336515730" MODIFIED="1363853117618" TEXT="yum install -y ncurses*">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://blog.csdn.net/zccst/article/details/4493074
    </p>
  </body>
</html></richcontent>
<node CREATED="1363854666893" MODIFIED="1363854895360" TEXT="Ncurses&#x662f;&#x4e00;&#x4e2a;&#x80fd;&#x63d0;&#x4f9b;&#x529f;&#x80fd;&#x952e;&#x5b9a;&#x4e49;(&#x5feb;&#x6377;&#x952e;),&#x5c4f;&#x5e55;&#x7ed8;&#x5236;&#x4ee5;&#x53ca;&#x57fa;&#x4e8e;&#x6587;&#x672c;&#x7ec8;&#x7aef;&#x7684;&#x56fe;&#x5f62;&#x4e92;&#x52a8;&#x529f;&#x80fd;&#x7684;&#x52a8;&#x6001;&#x5e93;   "/>
</node>
<node CREATED="1363341296340" FOLDED="true" ID="ID_1746385017" MODIFIED="1363854885245" TEXT="collect2: ld returned 1 exit status make[4]: *** [mysqld] &#x9519;&#x8bef; 1 make[4]: Leaving directory `/root/mysql-5.0.95/sql&apos; make[3]: *** [all-recursive] &#x9519;&#x8bef; 1 make[3]: Leaving directory `/root/mysql-5.0.95/sql&apos; make[2]: *** [all] &#x9519;&#x8bef; 2 make[2]: Leaving directory `/root/mysql-5.0.95/sql&apos; make[1]: *** [all-recursive] &#x9519;&#x8bef; 1 make[1]: Leaving directory `/root/mysql-5.0.95&apos; make: *** [all] &#x9519;&#x8bef; 2">
<node CREATED="1363341299458" MODIFIED="1363341299458" TEXT=""/>
</node>
<node CREATED="1363854322007" MODIFIED="1363854388608" TEXT="ldconfig">
<richcontent TYPE="NOTE">&lt;html&gt;
  &lt;head&gt;
    
    
  &lt;/head&gt;
  &lt;body&gt;
    &lt;div class=&quot;mod-page-main wordwrap clearfix&quot;&gt;
      &lt;div class=&quot;x-page-container&quot;&gt;
        &lt;div class=&quot;mod-blogpage-wraper&quot;&gt;
          &lt;div class=&quot;grid-80 mod-blogpage&quot;&gt;
            &lt;div class=&quot;mod-text-content mod-post-content mod-cs-contentblock&quot;&gt;
              &lt;div id=&quot;content&quot; class=&quot;content mod-cs-content text-content clearfix&quot;&gt;
                ldconfig&amp;#26159;&amp;#19968;&amp;#20010;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#31649;&amp;#29702;&amp;#21629;&amp;#20196;&lt;br&gt;&lt;br&gt;&amp;#20026;&amp;#20102;&amp;#35753;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#20026;&amp;#31995;&amp;#32479;&amp;#25152;&amp;#20849;&amp;#20139;,&amp;#36824;&amp;#38656;&amp;#36816;&amp;#34892;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#30340;&amp;#31649;&amp;#29702;&amp;#21629;&amp;#20196;--ldconfig&lt;br&gt;ldconfig 
                &amp;#21629;&amp;#20196;&amp;#30340;&amp;#29992;&amp;#36884;,&amp;#20027;&amp;#35201;&amp;#26159;&amp;#22312;&amp;#40664;&amp;#35748;&amp;#25628;&amp;#23547;&amp;#30446;&amp;#24405;(/lib&amp;#21644;/usr/lib)&amp;#20197;&amp;#21450;&amp;#21160;&amp;#24577;&amp;#24211;&amp;#37197;&amp;#32622;&amp;#25991;&amp;#20214;/etc/ld.so.conf&amp;#20869;&amp;#25152;&amp;#21015;&amp;#30340;&amp;#30446;&amp;#24405;&amp;#19979;,&amp;#25628;&amp;#32034;&amp;#20986;&amp;#21487;&amp;#20849;&amp;#20139;&amp;#30340;&amp;#21160;&amp;#24577; 
                &amp;#38142;&amp;#25509;&amp;#24211;(&amp;#26684;&amp;#24335;&amp;#22914;&amp;#21069;&amp;#20171;&amp;#32461;,lib*.so*),&amp;#36827;&amp;#32780;&amp;#21019;&amp;#24314;&amp;#20986;&amp;#21160;&amp;#24577;&amp;#35013;&amp;#20837;&amp;#31243;&amp;#24207;(ld.so)&amp;#25152;&amp;#38656;&amp;#30340;&amp;#36830;&amp;#25509;&amp;#21644;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;.&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;&amp;#40664;&amp;#35748;&amp;#20026; 
                /etc/ld.so.cache,&amp;#27492;&amp;#25991;&amp;#20214;&amp;#20445;&amp;#23384;&amp;#24050;&amp;#25490;&amp;#22909;&amp;#24207;&amp;#30340;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#21517;&amp;#23383;&amp;#21015;&amp;#34920;.&lt;br&gt;&lt;br&gt;
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
    &lt;/section&gt;
    

    &lt;p&gt;
      
    &lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</richcontent>
<node CREATED="1363854350936" ID="ID_1845836975" MODIFIED="1364464013109" TEXT="ldconfig&#x901a;&#x5e38;&#x5728;&#x7cfb;&#x7edf;&#x542f;&#x52a8;&#x65f6;&#x8fd0;&#x884c;,&#x800c;&#x5f53;&#x7528;&#x6237;&#x5b89;&#x88c5;&#x4e86;&#x4e00;&#x4e2a;&#x65b0;&#x7684;&#x52a8;&#x6001;&#x94fe;&#x63a5;&#x5e93;&#x65f6;,&#x5c31;&#x9700;&#x8981;&#x624b;&#x5de5;&#x8fd0;&#x884c;&#x8fd9;&#x4e2a;&#x547d;&#x4ee4;.  ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    &lt;html&gt; &lt;head&gt; &lt;/head&gt; &lt;body&gt; &lt;div class=&quot;mod-page-main wordwrap clearfix&quot;&gt; &lt;div class=&quot;x-page-container&quot;&gt; &lt;div class=&quot;mod-blogpage-wraper&quot;&gt; &lt;div class=&quot;grid-80 mod-blogpage&quot;&gt; &lt;div class=&quot;mod-text-content mod-post-content mod-cs-contentblock&quot;&gt; &lt;div id=&quot;content&quot; class=&quot;content mod-cs-content text-content clearfix&quot;&gt; ldconfig&amp;#21629;&amp;#20196;&amp;#34892;&amp;#29992;&amp;#27861;&amp;#22914;&amp;#19979;:&lt;br&gt;ldconfig [-v|--verbose] [-n] [-N] [-X] [-f CONF] [-C CACHE] [-r ROOT] [-l] [-p|--print-cache] [-c FORMAT] [--format=FORMAT] [-V] [- |--help|--usage] path...&lt;br&gt;ldconfig&amp;#21487;&amp;#29992;&amp;#30340;&amp;#36873;&amp;#39033;&amp;#35828;&amp;#26126;&amp;#22914;&amp;#19979;:&lt;br&gt;(1) -v&amp;#25110;--verbose : &amp;#29992;&amp;#27492;&amp;#36873;&amp;#39033;&amp;#26102;,ldconfig&amp;#23558;&amp;#26174;&amp;#31034;&amp;#27491;&amp;#22312;&amp;#25195;&amp;#25551;&amp;#30340;&amp;#30446;&amp;#24405;&amp;#21450;&amp;#25628;&amp;#32034;&amp;#21040;&amp;#30340;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;,&amp;#36824;&amp;#26377;&amp;#23427;&amp;#25152;&amp;#21019;&amp;#24314;&amp;#30340;&amp;#36830;&amp;#25509;&amp;#30340;&amp;#21517;&amp;#23383;.&lt;br&gt;(2) -n : &amp;#29992;&amp;#27492;&amp;#36873;&amp;#39033;&amp;#26102;,ldconfig&amp;#20165;&amp;#25195;&amp;#25551;&amp;#21629;&amp;#20196;&amp;#34892;&amp;#25351;&amp;#23450;&amp;#30340;&amp;#30446;&amp;#24405;,&amp;#19981;&amp;#25195;&amp;#25551;&amp;#40664;&amp;#35748;&amp;#30446;&amp;#24405;(/lib,/usr/lib),&amp;#20063;&amp;#19981;&amp;#25195;&amp;#25551;&amp;#37197;&amp;#32622;&amp;#25991;&amp;#20214;/etc/ld.so.conf&amp;#25152;&amp;#21015;&amp;#30340;&amp;#30446;&amp;#24405;.&lt;br&gt;(3) -N : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25351;&amp;#31034;ldconfig&amp;#19981;&amp;#37325;&amp;#24314;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;(/etc/ld.so.cache).&amp;#33509;&amp;#26410;&amp;#29992;-X&amp;#36873;&amp;#39033;,ldconfig&amp;#29031;&amp;#24120;&amp;#26356;&amp;#26032;&amp;#25991;&amp;#20214;&amp;#30340;&amp;#36830;&amp;#25509;.&lt;br&gt;(4) -X : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25351;&amp;#31034;ldconfig&amp;#19981;&amp;#26356;&amp;#26032;&amp;#25991;&amp;#20214;&amp;#30340;&amp;#36830;&amp;#25509;.&amp;#33509;&amp;#26410;&amp;#29992;-N&amp;#36873;&amp;#39033;,&amp;#21017;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;&amp;#27491;&amp;#24120;&amp;#26356;&amp;#26032;.&lt;br&gt;(5) -f CONF : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25351;&amp;#23450;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#30340;&amp;#37197;&amp;#32622;&amp;#25991;&amp;#20214;&amp;#20026;CONF,&amp;#31995;&amp;#32479;&amp;#40664;&amp;#35748;&amp;#20026;/etc/ld.so.conf.&lt;br&gt;(6) -C CACHE : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25351;&amp;#23450;&amp;#29983;&amp;#25104;&amp;#30340;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;&amp;#20026;CACHE,&amp;#31995;&amp;#32479;&amp;#40664;&amp;#35748;&amp;#30340;&amp;#26159;/etc/ld.so.cache,&amp;#27492;&amp;#25991;&amp;#20214;&amp;#23384;&amp;#25918;&amp;#24050;&amp;#25490;&amp;#22909;&amp;#24207;&amp;#30340;&amp;#21487;&amp;#20849;&amp;#20139;&amp;#30340;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#30340;&amp;#21015;&amp;#34920;.&lt;br&gt;(7) -r ROOT : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25913;&amp;#21464;&amp;#24212;&amp;#29992;&amp;#31243;&amp;#24207;&amp;#30340;&amp;#26681;&amp;#30446;&amp;#24405;&amp;#20026;ROOT(&amp;#26159;&amp;#35843;&amp;#29992;chroot&amp;#20989;&amp;#25968;&amp;#23454;&amp;#29616;&amp;#30340;).&amp;#36873;&amp;#25321;&amp;#27492;&amp;#39033;&amp;#26102;,&amp;#31995;&amp;#32479;&amp;#40664;&amp;#35748;&amp;#30340;&amp;#37197;&amp;#32622;&amp;#25991;&amp;#20214;/etc/ld.so.conf,&amp;#23454;&amp;#38469;&amp;#23545;&amp;#24212;&amp;#30340;&amp;#20026; ROOT/etc/ld.so.conf.&amp;#22914;&amp;#29992;-r /usr/zzz&amp;#26102;,&amp;#25171;&amp;#24320;&amp;#37197;&amp;#32622;&amp;#25991;&amp;#20214;/etc/ld.so.conf&amp;#26102;,&amp;#23454;&amp;#38469;&amp;#25171;&amp;#24320;&amp;#30340;&amp;#26159;/usr/zzz/etc/ld.so.conf&amp;#25991;&amp;#20214;.&amp;#29992;&amp;#27492;&amp;#36873;&amp;#39033;,&amp;#21487;&amp;#20197; &amp;#22823;&amp;#22823;&amp;#22686;&amp;#21152;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#31649;&amp;#29702;&amp;#30340;&amp;#28789;&amp;#27963;&amp;#24615;.&lt;br&gt;(8) -l : &amp;#36890;&amp;#24120;&amp;#24773;&amp;#20917;&amp;#19979;,ldconfig&amp;#25628;&amp;#32034;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#26102;&amp;#23558;&amp;#33258;&amp;#21160;&amp;#24314;&amp;#31435;&amp;#21160;&amp;#24577;&amp;#38142;&amp;#25509;&amp;#24211;&amp;#30340;&amp;#36830;&amp;#25509;.&amp;#36873;&amp;#25321;&amp;#27492;&amp;#39033;&amp;#26102;,&amp;#23558;&amp;#36827;&amp;#20837;&amp;#19987;&amp;#23478;&amp;#27169;&amp;#24335;,&amp;#38656;&amp;#35201;&amp;#25163;&amp;#24037;&amp;#35774;&amp;#32622;&amp;#36830;&amp;#25509;.&amp;#19968;&amp;#33324;&amp;#29992;&amp;#25143;&amp;#19981;&amp;#29992;&amp;#27492;&amp;#39033;.&lt;br&gt;(9) -p&amp;#25110;--print-cache : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25351;&amp;#31034;ldconfig&amp;#25171;&amp;#21360;&amp;#20986;&amp;#24403;&amp;#21069;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;&amp;#25152;&amp;#20445;&amp;#23384;&amp;#30340;&amp;#25152;&amp;#26377;&amp;#20849;&amp;#20139;&amp;#24211;&amp;#30340;&amp;#21517;&amp;#23383;.&lt;br&gt;(10) -c FORMAT &amp;#25110; --format=FORMAT : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#29992;&amp;#20110;&amp;#25351;&amp;#23450;&amp;#32531;&amp;#23384;&amp;#25991;&amp;#20214;&amp;#25152;&amp;#20351;&amp;#29992;&amp;#30340;&amp;#26684;&amp;#24335;,&amp;#20849;&amp;#26377;&amp;#19977;&amp;#31181;: ld(&amp;#32769;&amp;#26684;&amp;#24335;),new(&amp;#26032;&amp;#26684;&amp;#24335;)&amp;#21644;compat(&amp;#20860;&amp;#23481;&amp;#26684;&amp;#24335;,&amp;#27492;&amp;#20026;&amp;#40664;&amp;#35748;&amp;#26684;&amp;#24335;).&lt;br&gt;(11) -V : &amp;#27492;&amp;#36873;&amp;#39033;&amp;#25171;&amp;#21360;&amp;#20986;ldconfig&amp;#30340;&amp;#29256;&amp;#26412;&amp;#20449;&amp;#24687;,&amp;#32780;&amp;#21518;&amp;#36864;&amp;#20986;.&lt;br&gt;(12) - &amp;#25110; --help &amp;#25110; --usage : &amp;#36825;&amp;#19977;&amp;#20010;&amp;#36873;&amp;#39033;&amp;#20316;&amp;#29992;&amp;#30456;&amp;#21516;,&amp;#37117;&amp;#26159;&amp;#35753;ldconfig&amp;#25171;&amp;#21360;&amp;#20986;&amp;#20854;&amp;#24110;&amp;#21161;&amp;#20449;&amp;#24687;,&amp;#32780;&amp;#21518;&amp;#36864;&amp;#20986;. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/section&gt; &lt;p&gt; &lt;/p&gt; &lt;/body&gt; &lt;/html&gt;
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1363337280988" ID="ID_1568651299" MODIFIED="1365672708593" POSITION="left" TEXT="5. &#x4e0b;&#x8f7d;&#x5b89;&#x88c5;php&#xff0c;&#x5b89;&#x88c5;osa &#x6240;&#x7528;&#x5230;&#x7684;&#x6269;&#x5c55;(json,mbstring,session,pdo,pdo_mysql) ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" cellpadding="0" cellspacing="0" id="pid7916">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellpadding="0" cellspacing="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              <p>
                                #cd ~<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#wget<code><a href="http://br.php.net/get/php-5.3.15.tar.gz/from/this/mirror" rel="nofollow" target="_blank">&#160;</a></code>
                              </p>
                              <div id="layout_2">
                                <div id="content" class="manual/zh">
                                  <div id="usernotes">
                                    <div id="allnotes">
                                      <div class="note">
                                        <div id="Hcom109622" class="text">
                                          <div class="phpcode">
                                            <code><a href="http://br.php.net/get/php-5.3.15.tar.gz/from/this/mirror" rel="nofollow" target="_blank">http://br.php.net/get/php-5.3.15.tar.gz/from/this/mirror</a>&#160; </code>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <p>
                                &#36825;&#20010;&#19981;&#33021;&#29992;&#20102;&#29992;&#19978;&#36793;&#37027;&#20010;&#160;<a target="_blank" href="http://cn.php.net/get/php-5.3.15.tar.gz/from/cn2.php.net/mirror">http://cn.php.net/get/php-5.3.15.tar.gz/from/cn2.php.net/mirror</a><br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#tar -zxvf php-5.3.15.tar.gz<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd php-5.3.15<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --prefix=/usr/local/osa/php --enable-fpm --enable-cgi --disable-all<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd ext/json<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#/usr/local/osa/php/bin/phpize<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --with-php-config=/usr/local/osa/php/bin/php-config &amp;&amp; make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd ../mbstring<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#/usr/local/osa/php/bin/phpize&#160;&#160;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --with-php-config=/usr/local/osa/php/bin/php-config &amp;&amp; make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd ../session<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#/usr/local/osa/php/bin/phpize&#160;&#160;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --with-php-config=/usr/local/osa/php/bin/php-config &amp;&amp; make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd ../pdo<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#/usr/local/osa/php/bin/phpize&#160;&#160;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --with-php-config=/usr/local/osa/php/bin/php-config &amp;&amp; make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd ../pdo_mysql/<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#/usr/local/osa/php/bin/phpize&#160;&#160;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#./configure --with-php-config=/usr/local/osa/php/bin/php-config \<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;--with-pdo-mysql=/usr/local/osa/mysql<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#make &amp;&amp; make install<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;***&#35831;&#30830;&#20445;&#20197;&#19978;&#36807;&#31243;&#26080;&#38169;***<br />
                              </p>
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
</richcontent>
<node CREATED="1363339452486" MODIFIED="1363851075138" TEXT="&#x8fd0;&#x884c;/usr/local/webserver/php/bin/phpize&#x65f6;&#x51fa;&#x73b0;&#xff1a; Configuring for: PHP Api Version:         20041225 Zend Module Api No:      20060613 Zend Extension Api No:   220060519 Cannot find autoconf. Please check your autoconf installation and the $PHP_AUTOCONF environment variable. Then, rerun this script. ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wrap">
      <div id="leftcol">
        <div id="content">
          <div id="content-main">
            <div class="content-main-body">
              <div id="post-106" class="single-post">
                <div class="entry">
                  <pre>http://tech.fblife.com/?p=106
&#36816;&#34892;/usr/local/webserver/php/bin/phpize&#26102;&#20986;&#29616;&#65306;
Configuring for:
PHP Api Version:         20041225
Zend Module Api No:      20060613
Zend Extension Api No:   220060519
Cannot find autoconf. Please check your autoconf installation and the
$PHP_AUTOCONF environment variable. Then, rerun this script.
&#26681;&#25454;&#32593;&#19978;&#30340;&#35299;&#20915;&#21150;&#27861;&#26159;&#65306;

# cd /usr/src
# wget http://ftp.gnu.org/gnu/m4/m4-1.4.9.tar.gz
# tar -zvxf m4-1.4.9.tar.gz
# cd m4-1.4.9/
# ./configure &amp;&amp; make &amp;&amp; make install
# cd ../
# wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.62.tar.gz
# tar -zvxf autoconf-2.62.tar.gz
# cd autoconf-2.62/
# ./configure &amp;&amp; make &amp;&amp; make install
&#21487;&#29233;&#30340;yum&#35753;&#25105;&#26356;&#23481;&#26131;&#25226;&#27809;&#23433;&#35013;&#30340;&#21253;&#23433;&#35013;&#22909;
 yum install m4
 yum install autoconf</pre>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1363340487517" FOLDED="true" MODIFIED="1363861143859" POSITION="left" TEXT="  6. strip &#x4ee5;&#x4e0a;&#x4e09;&#x4e2a;&#x8f6f;&#x4ef6;&#x7684;&#x53ef;&#x6267;&#x884c;&#x6587;&#x4ef6; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" id="pid7916" cellspacing="0" cellpadding="0">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #strip /usr/local/osa/nginx/sbin/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/mysql/bin/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/mysql/libexec/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/mysql/lib/mysql/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/php/bin/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/php/sbin/*<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#strip /usr/local/osa/php/lib/php/extensions/no-debug-non-zts-20090626/*<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;***&#20197;&#19978;&#37096;&#20998;&#25552;&#31034;&#38169;&#35823;&#21487;&#24573;&#30053;*** &#25105;&#36935;&#21040;&#30340;&#38169;&#35823;&#26159;&#65306; &#160;[root@bogon pdo_mysql]# strip /usr/local/osa/nginx/sbin/* [root@bogon pdo_mysql]# strip /usr/local/osa/mysql/bin/* strip: /usr/local/osa/mysql/bin/msql2mysql: File format not recognized strip: /usr/local/osa/mysql/bin/mysqlaccess: File format not recognized strip: /usr/local/osa/mysql/bin/mysqlbug: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_config: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_convert_table_format: File format not recognized strip: /usr/local/osa/mysql/bin/mysqld_multi: File format not recognized strip: /usr/local/osa/mysql/bin/mysqld_safe: File format not recognized strip: /usr/local/osa/mysql/bin/mysqldumpslow: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_explain_log: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_find_rows: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_fix_extensions: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_fix_privilege_tables: File format not recognized strip: /usr/local/osa/mysql/bin/mysqlhotcopy: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_install_db: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_secure_installation: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_setpermission: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_tableinfo: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_upgrade_shell: File format not recognized strip: /usr/local/osa/mysql/bin/mysql_zap: File format not recognized [root@bogon pdo_mysql]# strip /usr/local/osa/mysql/libexec/* [root@bogon pdo_mysql]# strip /usr/local/osa/mysql/mysql/* strip: '/usr/local/osa/mysql/mysql/*': No such file [root@bogon pdo_mysql]# strip /usr/local/osa/mysql/lib/mysql/* strip: /usr/local/osa/mysql/lib/mysql/libmysqlclient.la: File format not recognized strip: /usr/local/osa/mysql/lib/mysql/libmysqlclient_r.la: File format not recognized [root@bogon pdo_mysql]# strip /usr/local/osa/php/bin/* strip: /usr/local/osa/php/bin/php-config: File format not recognized strip: /usr/local/osa/php/bin/phpize: File format not recognized [root@bogon pdo_mysql]# strip /usr/local/osa/php/sbin/* [root@bogon pdo_mysql]# strip /usr/local/osa/php/lib/php/extensions/no-debug-non-zts-20090626/*
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
<node CREATED="1363340627360" MODIFIED="1363340635767" TEXT="#strip /usr/local/mysql/bin/* &#x63d0;&#x793a;&#x6ca1;&#x6709;&#x76ee;&#x5f55;"/>
</node>
<node CREATED="1363344486838" MODIFIED="1363846937763" POSITION="left" TEXT="7. &#x4e0b;&#x8f7d;osa &#x7684;&#x5305;&#xff0c;&#x89e3;&#x538b;&#x540e;mv&#x5230; /usr/local/osa &#x76ee;&#x5f55; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" id="pid7916" cellspacing="0" cellpadding="0">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #cd /usr/local/osa<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#wget <a target="_blank" href="http://www.osapub.com/download/OSA_BETA_V1.0.2.tar.gz">http://www.osapub.com/download/OSA_BETA_V1.0.2.tar.gz</a><br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#tar -zxvf OSA_BETA_V1.0.2.tar.gz<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#cd osa<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#mv * .. &amp;&amp; cd ..<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#rm -rf osa&#160;&#160;&#160;#&#21024;&#38500;&#31354;&#30446;&#24405;(/usr/local/osa/osa)<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363344990740" ID="ID_1298376256" MODIFIED="1363866618412" POSITION="left" TEXT="8. &#x76f8;&#x5173;&#x7684;&#x542f;&#x52a8;&#x811a;&#x672c;&#x89c1;&#x4e0b;&#x9762;&#x7684;&#x9644;&#x4ef6;nginx php mysql &#x7684;&#x542f;&#x52a8;&#x811a;&#x672c;&#x5206;&#x522b;&#x4e3a;&#xff1a; nginx php-fpm mysqld  ">
<node CREATED="1363850973588" MODIFIED="1363850996008" TEXT="&#x4e0d;&#x652f;&#x6301;curl">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://blog.gsywx.com/read.php/78.htm
    </p>
  </body>
</html></richcontent>
<node CREATED="1363850984099" MODIFIED="1363851037754" TEXT="&#x65b9;&#x6cd5;&#x4e00;&#xff1a;&#x8fd8;&#x672a;&#x5b89;&#x88c5;php&#x7a0b;&#x5e8f;&#x65f6;  ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wrapper">
      <div id="innerWrapper">
        <div id="mainWrapper">
          <div id="content" class="content">
            <div id="innerContent">
              <div class="textbox">
                <div id="zoomtext" class="textbox-content">
                  wget http://curl.haxx.se/download/curl-7.21.0.tar.gz<br />tar zxvf curl-7.21.0.tar.gz<br />cd curl-7.21.0<br />./configure<br />make<br />make install<br /><br />&#23433;&#35013;php&#26102;&#65292;&#21482;&#35201;&#25171;&#24320;./configure --with-curl<br />&#23601;&#21487;&#20197;&#20102;&#12290;<br /><br /><br />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363851040159" MODIFIED="1363851057047" TEXT="&#x65b9;&#x6cd5;&#x4e8c;&#xff1a;&#x5df2;&#x5b89;&#x88c5;&#x597d;php&#x7a0b;&#x5e8f;&#xff0c;&#x60f3;&#x8981;&#x6dfb;&#x52a0;php&#x7684;curl&#x6269;&#x5c55;  ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wrapper">
      <div id="innerWrapper">
        <div id="mainWrapper">
          <div id="content" class="content">
            <div id="innerContent">
              <div class="textbox">
                <div id="zoomtext" class="textbox-content">
                  &#20808;&#22312;&#32447;&#23433;&#35013;<br />yum install curl curl-devel<br /><br />&#36827;&#20837;php&#30340;&#28304;&#30721;&#30446;&#24405;&#65292;&#22914;&#25105;&#29992;&#30340;&#26159;php-5.2.13.tar.gz<br />&#32780;&#25105;&#35013;&#22909;&#30340;php&#31243;&#24207;&#22312;/web/php&#30446;&#24405;&#65292;&#25805;&#20316;&#22914;&#19979;&#65306;<br /><br />tar zxvf php-5.2.13.tar.gz<br />cd php-5.2.13<br />cd ext/curl<br />/web/php/bin/phpize<br />./configure --with-curl=DIR --with-php-config=/web/php/bin/php-config<br />make<br /><br />&#32534;&#35793;&#32467;&#26463;&#20250;&#26377;&#36825;&#26679;&#19968;&#21477;&#65306;<br />Libraries have been installed in:<br />&#160;&#160;&#160;/soft/php-5.2.13/ext/curl/modules<br /><br />&#32780;&#27491;&#24120;&#22312;&#35013;&#36807;&#20854;&#20182;php&#25193;&#23637;&#21518;&#20250;&#26377;&#36825;&#26679;&#30340;&#30446;&#24405;<br />/web/php/lib/php/extensions/no-de-zts-20060613<br /><br />&#22914;&#27809;&#26377;/web/php/lib/php/extensions/&#30446;&#24405;&#21487;&#20197;&#33258;&#24049;&#21019;&#24314;<br />mkdir -p /web/php/lib/php/extensions/no-de-zts-20060613<br /><br />cp modules/curl.so /web/php/lib/php/extensions/no-de-zts-20060613<br />vi /etc/php.ini<br />&#25214;&#21040;<br /><br />extension_dir =<br />&#30830;&#20445;&#23427;&#20026;<br />extension_dir = &quot;/web/php/lib/php/extensions/no-debug-non-zts-20060613/&quot;<br />&#28982;&#21518;&#22312;&#19979;&#38754;&#19968;&#34892;&#28155;&#21152;&#65306;<br />extension = &quot;curl.so&quot;<br /><br />&#37325;&#21551;&#19979;httpd&#25110;nginx&#21363;&#21487;<br />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1363851078905" MODIFIED="1363858305186" TEXT="Linux&#x4e0b;PHP&#x6dfb;&#x52a0;curl&#x6a21;&#x5757; . ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">&#20551;&#22914;&#21407;&#20808;&#32534;&#35793;&#30340;php&#30446;&#24405;&#22312;/usr/local/php5&#30446;&#24405;&#19979;&#65307;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />apache&#22312;/usr/local/apache2&#30446;&#24405;&#19979;&#65307;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />php&#28304;&#20195;&#30721;&#22312;/home/kevin125/src&#30446;&#24405;&#19979;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#22914;&#26524;&#23454;&#38469;&#30446;&#24405;&#19982;&#20551;&#23450;&#30340;&#30446;&#24405;&#19981;&#19968;&#33268;&#65292;&#21017;&#22312;&#19979;&#38754;&#30340;&#21629;&#20196;&#20013;&#20570;&#35843;&#25972;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
<node CREATED="1363851082592" MODIFIED="1363858698257" TEXT="1. &#x627e;&#x5230;&#x5f53;&#x524d;&#x8fd0;&#x884c;&#x7684;php&#x7248;&#x672c;&#x7684;&#x6e90;&#x4ee3;&#x7801;&#x76ee;&#x5f55;&#xff0c;&#x5982; php-5.2.10&#x3002;  ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">&#36827;&#20837;curl&#25193;&#23637;&#24211;&#30446;&#24405;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />$cd /home/kevin125/src/php-5.2.10/ext/curl<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363851192354" MODIFIED="1363851218574" TEXT="2. &#x8c03;&#x7528;phpize&#x7a0b;&#x5e8f;&#x751f;&#x6210;&#x7f16;&#x8bd1;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#x3002; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">$/usr/local/php5/bin/phpize<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363851218566" MODIFIED="1363858645635" TEXT="3. &#x7f16;&#x8bd1;&#x6269;&#x5c55;&#x5e93;&#xff0c;&#x5206;&#x522b;&#x6267;&#x884c;&#x4e0b;&#x9762;&#x7684;configure&#x548c;make&#x547d;&#x4ee4;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">$./configure &#8211;with-php-config=/usr/local/php5/bin/php-config<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />configure&#36825;&#19968;&#27493;&#25191;&#34892;&#36890;&#36807;&#21518;&#65292;&#20877;&#25191;&#34892;make&#21629;&#20196;&#65292;&#22914;&#26524;configure&#25191;&#34892;&#19981;&#36890;&#36807;&#65292;&#21017;&#26597;&#25214;&#38169;&#35823;&#21407;&#22240;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />$make<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />make&#25104;&#21151;&#25191;&#34892;&#21518;&#65292;&#29983;&#25104;&#30340;&#25193;&#23637;&#24211;&#25991;&#20214;&#22312;&#24403;&#21069;&#30446;&#24405;&#30340; modules &#23376;&#30446;&#24405;&#19979;&#65292;&#22914; /home/kevin125/src/php-5.2.10/ext/curl/modules/curl.so<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363851245917" MODIFIED="1363856945626" TEXT="4. &#x914d;&#x7f6e;php.ini&#x6587;&#x4ef6; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">&#23558;&#32534;&#35793;&#22909;&#30340;&#25193;&#23637;&#24211;&#25991;&#20214;&#22797;&#21046;&#21040;apache2 modules&#30446;&#24405;&#19979;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />$cp /home/kevin125/src/php-5.2.10/ext/curl/modules/curl.so /usr/local/apache2/modules/<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#25214;&#21040;php.ini&#25991;&#20214;&#25152;&#22312;&#30446;&#24405;&#20301;&#32622;&#65292;&#28982;&#21518;&#32534;&#36753;&#12290;&#21487;&#20197;&#36890;&#36807;&#26597;&#30475;phpinfo&#20449;&#24687;&#26469;&#30830;&#23450;php.ini&#25991;&#20214;&#20301;&#32622;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#22312;php.ini&#25991;&#20214;&#20013;&#25214;&#21040;&#35774;&#32622;&#25193;&#23637;&#30446;&#24405;&#30340;&#20301;&#32622;&#65292;&#28982;&#21518;&#23558;&#25193;&#23637;&#36335;&#24452;&#35774;&#32622;&#21040;apache2 modules&#30446;&#24405;&#19979;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />extension_dir = &#8220;/usr/local/apache2/modules/&#8221;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#22312;php.ini&#30340;&#35774;&#32622;&#25193;&#23637;&#24211;&#20301;&#32622;&#65292;&#35774;&#32622;&#35201;&#28155;&#21152;&#30340;&#25193;&#23637;&#24211;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />extension=curl.so<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#20197;&#21518;&#22914;&#26524;&#36824;&#35201;&#28155;&#21152;&#21035;&#30340;&#25193;&#23637;&#24211;&#30340;&#35805;&#65292;&#21017;&#21482;&#38656;&#20808;&#23558;php&#25193;&#23637;&#24211;&#32534;&#35793;&#22909;&#65292;&#28982;&#21518;copy&#21040;apache2 modules&#30446;&#24405;&#19979;&#65292;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" />&#28982;&#21518;&#20877;&#22312;&#36825;&#20010;&#20301;&#32622;&#65292;&#21478;&#21462;&#19968;&#34892;&#23558;&#32534;&#35793;&#21518;&#30340;&#25193;&#23637;&#24211;&#25991;&#20214;&#21517;&#21152;&#19978;&#21363;&#21487;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363851280856" MODIFIED="1363858697908" TEXT="5. &#x91cd;&#x542f;apache&#xff0c;&#x67e5;&#x770b;phpinfo&#x4fe1;&#x606f;&#xff0c;&#x5373;&#x53ef;&#x770b;&#x5230;&#x521a;&#x624d;&#x6dfb;&#x52a0;&#x8fdb;&#x53bb;&#x7684;curl&#x6269;&#x5c55;&#x5e93;&#x3002;  ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="container">
      <div id="body">
        <div id="main">
          <div class="main">
            <div id="article_details" class="details">
              <div id="article_content" class="article_content">
                <p>
                  <font face="courier new, courier" color="#444444">&#28155;&#21152;&#20854;&#20182;&#27169;&#22359;&#31867;&#20284;&#12290;<br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /><br align="left" style="letter-spacing: normal; line-height: 22px; text-transform: none; word-spacing: 0px; text-indent: 0px; white-space: normal; font-variant: normal" /></font>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1363856857910" ID="ID_1415578440" MODIFIED="1364375459500" POSITION="left" TEXT="9. &#x76f8;&#x5173;&#x7684;&#x914d;&#x7f6e;&#x89c1;&#x4e0b;&#x9762;&#x4e3a;&#xff1a; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div class="wp" id="wp">
      <div class="wp cl" id="ct">
        <div class="pl bm" id="postlist">
          <div id="post_7916">
            <table summary="pid7916" cellspacing="0" cellpadding="0" id="pid7916">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td class="t_f" id="postmessage_7916">
                              &#160;nginx.conf&#160;&#160;&#25918;&#22312; /usr/local/osa/nginx/conf &#19979;<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;php-fpm.conf php.ini &#20998;&#21035;&#25918;&#22312; /usr/local/osa/php/etc &#21644; /usr/local/osa/php/lib &#19979;<br />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;my.cnf &#25918;&#22312; /usr/local/osa/mysql/etc &#19979;&#65288;etc &#30446;&#24405;&#38656;&#35201;&#21019;&#24314;&#65289;<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363856874549" MODIFIED="1363856881762" POSITION="left" TEXT="10. &#x521b;&#x5efa;&#x76f8;&#x5173;&#x76ee;&#x5f55;&#xff1a; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" id="pid7916" cellspacing="0" cellpadding="0">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellspacing="0" cellpadding="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #mkdir /usr/local/osa/php/logs<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#mkdir /usr/local/osa/mysql/data<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1363856887812" ID="ID_1205196811" MODIFIED="1365672713421" POSITION="left" TEXT="11. &#x542f;&#x52a8;&#x811a;&#x672c; ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <div id="wp" class="wp">
      <div id="ct" class="wp cl">
        <div id="postlist" class="pl bm">
          <div id="post_7916">
            <table summary="pid7916" cellpadding="0" cellspacing="0" id="pid7916">
              <tr>
                <td class="plc">
                  <div class="pct">
                    <div class="pcb">
                      <div class="t_fsz">
                        <table cellpadding="0" cellspacing="0">
                          <tr>
                            <td id="postmessage_7916" class="t_f">
                              #/etc/init.d/nginx start<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; #/etc/init.d/php-fpm start<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; #/etc/init.d/mysqld start<br />
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
</richcontent>
<node CREATED="1363857625721" FOLDED="true" MODIFIED="1363861146974" TEXT="&#x542f;&#x52a8;ngiux&#x7684;&#x65f6;&#x5019;&#x62a5;&#x7a7a;&#x767d;&#x7684;&#x8bdd;&#x6267;&#x884c;">
<node CREATED="1363857676706" MODIFIED="1363857677577" TEXT="iptables -F"/>
<node CREATED="1363857690142" MODIFIED="1363857733941" TEXT="&#x5982;&#x679c;&#x62a5;&#x7f51;&#x5173;&#x9519;&#x8bef;">
<node CREATED="1363857699100" MODIFIED="1363857717871" TEXT="&#x91cd;&#x65b0;&#x542f;&#x52a8;&#x4e0b;php&#x548c;nginx&#x5c31;&#x884c;&#x4e86;"/>
</node>
<node CREATED="1363857684651" MODIFIED="1363857685395" TEXT="/etc/init.d/iptables save"/>
</node>
<node CREATED="1363857873454" FOLDED="true" MODIFIED="1363861147684" TEXT="curl &#x6a21;&#x5757;&#x6dfb;&#x52a0;&#x652f;&#x6301;">
<node CREATED="1363857902426" MODIFIED="1363857903284" TEXT="yum install curl curl-devel"/>
<node CREATED="1363858188561" MODIFIED="1363858196894" TEXT="cd /root/php-5.3.15/ext/curl"/>
<node CREATED="1363858238323" MODIFIED="1363858290381" TEXT="/usr/local/osa/php/bin/phpize "/>
<node CREATED="1363858395067" MODIFIED="1363858396343" TEXT="./configure --with-curl=DIR --with-php-config=/usr/local/osa/php/bin/php-config"/>
<node CREATED="1363858420277" MODIFIED="1363858422385" TEXT="make"/>
<node CREATED="1363858631114" MODIFIED="1363858633086" TEXT="cp /root/php-5.3.15/ext/curl/modules/curl.so  /usr/local/osa/php/lib/php/extensions/no-debug-non-zts-20090626/"/>
</node>
<node CREATED="1363858202729" MODIFIED="1363858227537" TEXT="&#x9700;&#x8981;&#x542f;&#x52a8;bash -x /usr/local/osa/ctrlphp/install/auto_prepare.sh "/>
<node CREATED="1363859721513" ID="ID_1134197623" MODIFIED="1364464048296" TEXT="&#x542f;&#x52a8;mysql&#x6587;&#x4ef6;">
<node CREATED="1363859733188" MODIFIED="1363859755851" TEXT="make install&#x540e;&#x9700;&#x8981;&#x521d;&#x59cb;&#x5316;mysql&#x5e93;">
<node CREATED="1363859769399" MODIFIED="1363859772929" TEXT="cd /usr/local/osa/mysql/bin"/>
<node CREATED="1363859773310" MODIFIED="1363859782323" TEXT="./mysql_install_db"/>
</node>
<node CREATED="1363859756536" MODIFIED="1363859811336" TEXT="&#x542f;&#x52a8;mysql">
<node CREATED="1363859813161" ID="ID_1498587899" MODIFIED="1363859814078" TEXT="./bin/mysqld_safe --user=root &amp;"/>
</node>
</node>
<node CREATED="1363859847388" MODIFIED="1363860014407" TEXT="&#x521b;&#x5efa;osa&#x76f8;&#x5173;&#x7684;&#x6570;&#x636e;&#x5e93;&#x5e76;&#x4e14;&#x6388;&#x6743;">
<node CREATED="1363859871467" MODIFIED="1363859895905" TEXT="./bin/mysql"/>
<node CREATED="1363859896348" MODIFIED="1363859912674" TEXT="create database osa;"/>
<node CREATED="1363859913146" MODIFIED="1363859925376" TEXT="grant all on *.* to osa@&apos;%&apos; identified by &apos;osa123&apos;;"/>
</node>
<node CREATED="1363860015294" MODIFIED="1363860016255" TEXT="&#x5f00;&#x542f;&#x6240;&#x6709;PYTHON&#x670d;&#x52a1;!">
<node CREATED="1363860017671" MODIFIED="1363866509123" TEXT="osaadmin start">
<node CREATED="1363860027908" MODIFIED="1363866509801" TEXT="ImportError: No module named MySQLdb">
<richcontent TYPE="NOTE">&lt;html&gt;
  &lt;head&gt;
    
    
  &lt;/head&gt;
  &lt;body&gt;
    &lt;div class=&quot;mod-page-main wordwrap clearfix&quot;&gt;
      &lt;div class=&quot;x-page-container&quot;&gt;
        &lt;div class=&quot;mod-blogpage-wraper&quot;&gt;
          &lt;div class=&quot;grid-80 mod-blogpage&quot;&gt;
            &lt;div class=&quot;mod-text-content mod-post-content mod-cs-contentblock&quot;&gt;
              &lt;div class=&quot;content-head clearfix&quot;&gt;
                &lt;h2 class=&quot;title content-title&quot;&gt;
                  ImportError: No module named MySQLdb
                &lt;/h2&gt;
              &lt;/div&gt;
              &lt;div id=&quot;content&quot; class=&quot;content mod-cs-content text-content clearfix&quot;&gt;
                &lt;p&gt;
                  Traceback&amp;#160;(most&amp;#160;recent&amp;#160;call&amp;#160;last):
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;br&gt;
                  
                &lt;/p&gt;
                &lt;p&gt;
                  &amp;#160;&amp;#160;&amp;#160;&amp;#160;import&amp;#160;MySQLdb
                &lt;/p&gt;
                &lt;p&gt;
                  ImportError:&amp;#160;No&amp;#160;module&amp;#160;named&amp;#160;MySQLdb
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;br&gt;
                  
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;br&gt;
                  
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;br&gt;
                  
                &lt;/p&gt;
                &lt;p&gt;
                  ubuntu&amp;#160;&amp;#31995;&amp;#32479;
                &lt;/p&gt;
                &lt;p&gt;
                  &amp;#30452;&amp;#25509;
                &lt;/p&gt;
                &lt;p&gt;
                  sudo&amp;#160;apt-get&amp;#160;install&amp;#160;python-mysqldb&lt;br&gt;
                &lt;/p&gt;
                &lt;p&gt;
                  &amp;#22914;&amp;#26524;&amp;#32534;&amp;#35793;
                &lt;/p&gt;
                &lt;p&gt;
                  &amp;#38656;&amp;#35201;&amp;#160;sudo&amp;#160;apt-get&amp;#160;install&amp;#160;libmysqlclient-dev
                &lt;/p&gt;
              &lt;/div&gt;
              &lt;div class=&quot;mod-tagbox clearfix&quot;&gt;
                
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
    &lt;/section&gt;
    

    &lt;p&gt;
      http://hi.baidu.com/tsuibin/item/018c2563276172106895e6ef
    &lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</richcontent>
<node CREATED="1363860125059" MODIFIED="1363860127010" TEXT="apt-get: command not found"/>
</node>
</node>
</node>
</node>
</node>
</map>

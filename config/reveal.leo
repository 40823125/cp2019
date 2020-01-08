<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20180902120538.1"><vh>@settings</vh>
<v t="leo.20180902120538.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20180902120538.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20180902120523.1"><vh>編輯 reveal</vh>
<v t="leo.20180902120523.2"><vh>@path ./../reveal</vh>
<v t="leo.20180902120523.3"><vh>@clean index.html</vh>
<v t="leo.20180902120523.4"><vh>html</vh>
<v t="leo.20180902120523.5"><vh>head</vh></v>
<v t="leo.20180902120523.6"><vh>body</vh>
<v t="leo.20180902120523.7"><vh>reveal div</vh>
<v t="leo.20180902120523.8"><vh>slides div</vh>
<v t="leo.20180902120523.9"><vh>封面投影片</vh>
<v t="leo.20180902120523.10"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20180902120523.11"><vh>快捷鍵</vh>
<v t="leo.20180902120523.12"><vh>投影片快捷鍵</vh></v>
</v>
<v t="leo.20180902120523.13"><vh>各式內容引用範例</vh>
<v t="leo.20180902120523.14"><vh>導入數學符號與方程式</vh>
<v t="leo.20180902120523.15"><vh>LaTeX 格式方程式</vh></v>
</v>
<v t="leo.20180902120523.16"><vh>導入縮排程式碼</vh>
<v t="leo.20180902120523.17"><vh>引用程式碼</vh></v>
</v>
<v t="leo.20180902120523.18"><vh>導入影片</vh>
<v t="leo.20180902120523.19"><vh>iframe 導入影片</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20180902120523.1"></t>
<t tx="leo.20180902120523.10">##  Computer Programming 40823125

&lt;small&gt;
Created by [40823125](http://lab.kmol.info/)
&lt;/small&gt;

[計算機程式的簡報](./../blog/index.html)


</t>
<t tx="leo.20180902120523.11">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120523.12"># 投影片快捷鍵

* 利用箭頭上下前後換頁
* 按 f 鍵進入全螢幕模式 (full screen)
* 按 s 鍵可以顯示投影片筆記 (show)
* 按 o 鍵可以切換單張或全域檢視 (overview)
* 按 b 或 . 鍵可以切換螢幕黑屏 (black)
* 按 Esc 可以退出全螢幕或全域檢視 (Escape)

</t>
<t tx="leo.20180902120523.13">&lt;section&gt;
@others
&lt;/section&gt;

</t>
<t tx="leo.20180902120523.14">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180902120523.15"># 數學符號與方程式

Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$
</t>
<t tx="leo.20180902120523.16">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180902120523.17">## 利用 Markdown 寫投影片
以下利用 Markdown 格式展示 Python 程式碼:
```
@language python
# use threading and subprocess to threading the make process
import os
import subprocess
import threading

def domake():
    
    path = "../exposed/api/exposed"
    ubuntu = "../Ubuntu"
    
    # create obj path
    
    if not os.path.exists(path+"/../obj"):
        os.makedirs(path+"/../obj")
    
    subprocess.call(["make", "clean"], cwd=path)
    subprocess.call("make", cwd=path)
    subprocess.call(["cp", "{libslvs.so, _slvs.so, slvs.py}", ubuntu], cwd=path)
    subprocess.call(["python3", "circle_ex.py"], cwd=path+"/"+ubuntu)
    
make = threading.Thread(target=domake)
make.start()
```
</t>
<t tx="leo.20180902120523.18">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120523.19">## 使用 iframe 導入影片

### 導入影片 template

&lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
</t>
<t tx="leo.20180902120523.2"></t>
<t tx="leo.20180902120523.3">@language xml
@tabwidth -4
@others

</t>
<t tx="leo.20180902120523.4">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="leo.20180902120523.5">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;
40823125的簡報
&lt;/title&gt;
    &lt;meta name="description" content="A framework for easily creating beautiful presentations using HTML"&gt;
    &lt;meta name="author" content="Hakim El Hattab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="lib/css/zenburn.css"&gt;

    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'css/print/pdf.css' : 'css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
&lt;/head&gt;

</t>
<t tx="leo.20180902120523.6">&lt;body&gt;
&lt;div class="reveal"&gt;
&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
## Computer Programming 40823125


&lt;small&gt;
Created by [40823125](http://lab.kmol.info/)
&lt;/small&gt;

[cp2019](./../blog/index.html)


    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第一周
* 介紹可攜系統，並且介紹dart程式
* 講解學習這門課的主要目的與將來的去向與使用
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第二週
* 學習到瞭如何建立github網站，並且建立一個倉儲 
* 學會瞭如何使用近端和遠端系統
* 學習一些dart的基礎程式指令
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第三週
* 用gist建立dartpad指令
* 學習如何使用paoxy進行網路連接
&lt;iframe src="https://dartpad.dev/embed-html.html?id=9caaacaa5e7df4990fce8540997f7276&amp;split=80&amp;theme=dark&gt;&lt;/iframe&gt;
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第四周
* 開始使用遠端系統編輯網頁，並進行可攜系統推送
* 在遠端系統添加圖片



    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第五週
* 上課觀看老師影碟，並學習相關知識
* 進行網頁自主更新與推送新東西




    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第六週
* 將dartpad程式推送到github，用gist 並利用iframe將dartpad嵌入個人網站上
&lt;iframe width="400" height="300" src="https://dartpad.dartlang.org/embed-dart.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/hello&amp;amp;theme=dark"&gt;&lt;/iframe&gt;
* 使用並學會何為for和main的主函式
&lt;iframe src="https://dartpad.github.io" width="400" height="500"&gt;&lt;/iframe&gt;
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第七週
* 學會常微分方程式的dart指令，並且用excel在個人網站遷入圖表
&lt;img alt="" height="240" src="https://40823125.github.io/cp2019/images/EXCEL_TrEMBcSKX9.png" width="400"&gt;
&lt;img alt="" height="240" src="https://40823125.github.io/cp2019/images/EXCEL_ZbwcHpT4h6.png" width="400"&gt;
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第八周
* 使用可攜系統內的pelican內的程式的方式建立Blog 
* 在blog放入disqus進行可供他人留言
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十週
* 將原來推送方法改編為gitextensions推送
* 耤由建立ssh的鑰匙進行達成不需要輸入密碼就可以推送
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十一周
* 用git sparse checkout功能取下github的特定目錄
* 建立dartpad程式的按鈕
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十二週
* 建立溫度字串轉化攝氏轉變華氏dart程式
&lt;iframe width="800" height="550" src="https://dartpad.dartlang.org/embed-dart.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/list string&amp;amp;theme=dark"&gt;&lt;/iframe&gt;



    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十三週
* 將dart字串轉變為html
&lt;iframe width="400" height="500" src="https://dartpad.github.io/embed-html.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/list&amp;amp;theme=dark" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"&gt;&lt;/iframe&gt;
* 並且錄製溫度轉換的dart程式和html程式
&lt;iframe width="560" height="314" allowfullscreen="allowfullscreen" src="//www.youtube.com/embed/yMqc_f37ZDY"&gt;&lt;/iframe&gt;



    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十四周
* 將溫度轉換的html程式轉變為js程式並遷入到個人網站中
輸入所要轉換的溫度 &lt;input id="F" max="125" min="-40" type="string" value="25F"&gt; &lt;input id="submit" type="button" value="轉換"&gt; 轉換結果: &lt;label id="output"&gt;&lt;/label&gt;
&lt;script src="/downloads/dart_ex/list/list.js"&gt;&lt;/script&gt;



    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十五週
* 嘗試將五芒星以html程式呈現


    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十六週
* 嘗試畫出美國國旗並將前幾個程式錄製成影片並發送到老師的issues上面
&lt;iframe width="400" height="500" src="https://dartpad.github.io/embed-html.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/USA&amp;amp;theme=dark" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"&gt;&lt;/iframe&gt;


    &lt;/script&gt;
&lt;/section&gt;

&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 第十七週
*寫出重量轉換的dart和html程式
&lt;iframe width="400" height="500" src="https://dartpad.github.io/embed-html.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/kg.ib&amp;amp;theme=dark" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"&gt;&lt;/iframe&gt;
* 嘗試畫出各國國旗
&lt;iframe width="400" height="500" src="https://dartpad.github.io/embed-html.html?gh_owner=40823125&amp;amp;gh_repo=cp2019&amp;amp;gh_path=downloads/dart_ex/flag&amp;amp;theme=dark" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"&gt;&lt;/iframe&gt;
*將上述程式轉為js程式並遷入到個人網站中
*將程式錄製成影片並發送到老師的issues上面


    &lt;/script&gt;
&lt;/section&gt;
						
&lt;/div&gt;

&lt;/div&gt;

&lt;script src="lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="js/reveal.js"&gt;&lt;/script&gt;
&lt;script&gt;
        // More info https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,
            transition: 'slide', // none/fade/slide/convex/concave/zoom
            // More info https://github.com/hakimel/reveal.js#dependencies
            dependencies: [
                { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'plugin/zoom-js/zoom.js', async: true },
                { src: 'plugin/notes/notes.js', async: true },
                { src: 'plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;</t>
<t tx="leo.20180902120523.7">&lt;div class="reveal"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180902120523.8">&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180902120523.9">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120538.1"></t>
<t tx="leo.20180902120538.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20180902120538.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
</tnodes>
</leo_file>

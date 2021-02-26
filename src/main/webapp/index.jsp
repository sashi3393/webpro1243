<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>模拟select控件</title>
        <style>
            html, body {
                height: 100%;
                overflow: hidden;
            }
            body, div, form, h2, ul, li {
                margin: 0;
                padding: 0;
            }
            ul {
                list-style-type: none;
            }
            body {
                background: #23384e;
                font-size: 12px/1.5 Microsoft YaHei;
            }
            #search, #search form, #search .box, #search .select, #search a {
                background: url(img/search.jpg) no-repeat;
            }
            #search, #search.box, #search form {
                height: 34px;
            }
            #search {
                position: relative;
                width: 350px;
                margin: 10px auto;
            }
            #search .box {
                background-position: right 0;
            }
            #search form {
                background-repeat: repeat-x;
                background-position: 0 -34px;
                margin: 0 20px 0 40px;
            }
            #search .select {
                float: left;
                color: #fff;
                width: 190px;
                height: 22px;
                cursor: pointer;
                margin-top:4px;
                line-height: 22px;
                padding-left: 10px;
                background-position: 0 -68px;
            }
            #search a {
                float: left;
                width: 80px;
                height: 24px;
                color: #333;
                letter-spacing: 4px;
                line-height: 22px;
                text-align: center;
                text-decoration: none;
                background-position: 0 -90px;
                margin: 4px 0 0 10px;
            }
            #search a:hover {
                color: #f60;
                background-position: -80px -90px;
            }
            #search .sub {
                position: absolute;
                top: 26px;
                left: 40px;
                color: #fff;
                width: 198px;
                background: #2b2b2b;
                border: 1px solid #fff;
                display: none;
            }
            #search .sub li{
                height: 25px;
                line-height: 24px;
                cursor: pointer;
                padding-left: 10px;
                margin-bottom: -1px;
                border-bottom: 1px dotted #fff;
            }
            #search .sub li.hover {
                background: #8b8b8b;
            }
        </style>
    </head>
    <body>
        <div id="search">
            <div class="box">
                <form>
                    <span class="select">请选择游戏名称</span>
                    <a href="javascript:;">搜索</a>
                </form>
            </div>
            <ul class="sub">
                <li>地下城与勇士</li>
                <li>魔兽世界</li>
                <li>DOTA2</li>
                <li>大话西游II</li>
                <li>QQ幻想世界</li>
                <li>热血江湖</li>
                <li>炉石传说</li>
            </ul>
        </div>
    </body>
    <script>
        var oSelect = document.getElementsByTagName("span")[0];
        var oSub = document.getElementsByTagName("ul")[0];
        var aLi = oSub.getElementsByTagName("li");
        var i = 0;

        oSelect.onclick = function(event) {
            var style = oSub.style;
            style.display = style.dispaly == "block" ? "none" : "block";
            //阻止事件冒泡
            (event || window.event).cancelBubble = true;
        };

        for(i = 0; i < aLi.length; i++) {
            aLi[i].onmouseover = function() {
                this.className = "hover";
            };
            aLi[i].onmouseout = function() {
                this.className = "";
            };
            aLi[i].onclick = function() {
                oSelect.innerHTML = this.innerHTML;
            }
        }

        document.onclick = function() {
            oSub.style.display = "none";
        }
    </script>
</html>

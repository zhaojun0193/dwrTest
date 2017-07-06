<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>xx</title>
    <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/dwr/engine.js"></script>
    <script src="<%=request.getContextPath()%>/dwr/interface/DwrPush.js"></script>
</head>
<script type="text/javascript">
    $(document).ready(function(){
       // alert('can get here!');
        // 页面加载的时候进行反转的激活
        /* dwr.engine.setActiveReverseAjax(true); */
        dwr.engine.setActiveReverseAjax(true);

        // 点击页面按钮的时候触发的方法
        $("#button").click(function(){
            // 此类即为根据java文件生成的js文件
            var data = document.getElementById("data").value;

        });
        DwrPush.send();
    });

    function callback(msg){
        alert(msg);
        $("#ul").html($("#ul").html()+"<br />"+msg);
    }
</script>

<body>
<ul id="ul">

</ul>

<br/>
<hr>
<input type="text" id="data" name='data' />&nbsp;&nbsp;&nbsp;&nbsp;
<input type='button' id="button" value="publish">
</body>
</html>

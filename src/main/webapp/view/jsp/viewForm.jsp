<!DOCTYPE html>
<html>
   <head>
      <meta charset = "ISO-8859-1">
      <title>Generated Form</title>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
      <link rel="stylesheet" href="/css/main.css">
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   </head>
   <body>
        <h1 style="color:#ff6600;"><i>Generated HTML layout</i></h1>
        <c:if test = "${textButton != null}">
             <input class="generatedInput" type="text" placeholder="Text Input"></input><br><br>
        </c:if>
        <c:if test = "${radioButton != null}">
             Radio Button<input class="generatedInput" type="radio"></input><br><br>
        </c:if>
        <c:if test = "${checkbox != null}">
             Checkbox<input class="generatedInput" type="checkbox"></input><br><br>
        </c:if>
        <c:if test = "${fileInput != null}">
             <input class="generatedInput" type="file" placeholder="File Input"></input><br><br>
        </c:if>
        <c:if test = "${submit != null}">
             <input class="generatedInput" type="submit" value="Submit"></input><br><br>
        </c:if>
        <br>
        <input action="action" value="Go Back" onclick="history.go(-1);"/>
   </body>
</html>
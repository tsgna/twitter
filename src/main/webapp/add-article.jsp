<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="include/meta.jsp"/>
    <title>Twitter - dodawanie artykułu</title>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<main role="main">
    <form style="padding-top: 100px; width: 560px; margin: auto" class="form-add-article" action="add-article"
          method="post">
        <label for="inputContent" class="sr-only">Treść</label>
        <textarea rows="10" id="inputContent" name="content" class="form-control" placeholder="Treść" required
                  autofocus></textarea>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
    </form>

</main>
<jsp:include page="include/footer.jsp"/>
</body>
</html>

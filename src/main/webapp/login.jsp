<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="include/meta.jsp"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/login.css"/>

    <title>Log in</title>
</head>
<body>
<jsp:include page="include/header.jsp"/>

<main role="main">
    <form class="form-signin" action="login" method="post">
        <img class="mb-4" src="https://i.pinimg.com/originals/17/a3/4e/17a34ea1c77687f10e7ca5dca6634996.jpg" alt="" width="100"
             height="100">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputLogin" class="sr-only">Login</label>
        <input type="text" id="inputLogin" name="login" class="form-control" placeholder="Login" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>


</main>

<jsp:include page="include/footer.jsp"/>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abramov_av.sit
  Date: 08.10.2019
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Account</title>
</head>
<body>
<c:set var="baseUrl" scope="session" value="${pageContext.servletContext.contextPath}"/>
<div class="container">
    <div class="row">
        <div class="col-4 offset-3">
            <h2 class="form-signin-heading">Account</h2>

            <c:set var="user" value="${user}"/>

            <form class="form-signup" method="post"
                    <c:choose>
                        <c:when test="${user == null}">
                            action="<c:out value="${baseUrl}"/>/signup">
                        </c:when>
                        <c:otherwise>
                            action="<c:out value="${baseUrl}"/>/account">
                        </c:otherwise>
                    </c:choose>

            <div class="form-group">
                <label for="inputName" class="sr-only">Name</label>
                <input type="text" id="inputName" name="name" class="form-control ${nameIncorrect ? "is-invalid" : ""}"
                       placeholder="Name" required value="${user.name}">
                <div class="invalid-feedback">
                    name incorrect
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhone" class="sr-only">Phone</label>
                <input type="text" id="inputPhone" name="phone" class="form-control" placeholder="Phone" required
                       value="${user.phone}">
            </div>
            <div class="form-group">
                <label for="inputLogin" class="sr-only">Login</label>
                <input type="text" id="inputLogin" name="login"
                       class="form-control ${loginIncorrect ? "is-invalid" : ""}" placeholder="Login" required
                       value="${user.login}">
                <div class="invalid-feedback">
                    login incorrect
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="sr-only">Email</label>
                <input type="email" id="inputEmail" name="email"
                       class="form-control ${emailIncorrect ? "is-invalid" : ""}" placeholder="Email" required
                       value="${user.email}">
                <div class="invalid-feedback">
                    email incorrect
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" name="password"
                       class="form-control ${passwordIncorrect ? "is-invalid" : ""}" placeholder="Password" required
                       value="${user.password}">
                <div class="invalid-feedback">
                    password incorrect
                </div>
            </div>

            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    <c:out value="${user == null ? 'Sign up': 'Save'}"/>
                </button>
            </div>
            </form>

        </div>
        <div class="col-4">
            <h4>User ads</h4>
            <c:forEach var="ad" items="${user.ads}" varStatus="loopbrand">
                <a class="nav-link"
                   href="${baseUrl}/edit?id=${ad.id}">${ad.car.model.brand.name} ${ad.car.model.name}, ${ad.car.year}</a>
            </c:forEach>
        </div>
    </div>
</div> <!-- /container -->


</body>
</html>

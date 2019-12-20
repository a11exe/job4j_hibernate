<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <script>
        $(document).ready(function(){
            $('.slider').bxSlider();
        });
    </script>
    <style>
        .navbar-nav > li {
            padding-left: 30px;
            padding-right: 30px;
        }
        .table-condensed>thead>tr>th, .table-condensed>tbody>tr>th, .table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td, .table-condensed>tbody>tr>td, .table-condensed>tfoot>tr>td{
            padding: 2px;

        }
    </style>

    <title>ADs</title>
</head>
<body>
<c:set var="baseUrl" scope="session" value="${pageContext.servletContext.contextPath}"/>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="nav-link" href="${baseUrl}"><img src="${baseUrl}/img/sellcar.png" /></a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">

            </li>
        </ul>

        <c:choose>
            <c:when test="${user == null}">
                <form class="form-inline ml-2" method="post" action="<c:out value="${baseUrl}" />/login">
                    <label for="inputLogin" class="sr-only">Login</label>
                    <input type="text" id="inputLogin" name="login" class="form-control  ml-2 ${msg.containsKey('login') ? "is-invalid" : ""}" placeholder="Login" required>
                    <div class="invalid-feedback">
                            ${msg['login']}
                    </div>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" name="password" class="form-control ml-2 ${msg.containsKey('password') ? "is-invalid" : ""}" placeholder="Password" required>
                    <div class="invalid-feedback">
                            ${msg['password']}
                    </div>
                    <button class="btn btn-outline-success ml-2 my-sm-0" type="submit">Login</button>
                    <a class="nav-link" href="${baseUrl}/signup">Registration<span class="sr-only">(current)</span></a>
                </form>
            </c:when>
            <c:otherwise>
                <ul class="navbar-nav ml-2">
                    <li class="nav-item">
                        Hello <a href=${baseUrl}"/account" class="btn btn-link active" role="button" aria-pressed="true">${user.login}</a>
                    </li>
                    <li class="nav-item">
                        <a href=${baseUrl}"/logout" class="btn btn-light active" role="button" aria-pressed="true">logout</a>
                    </li>
                    <li class="nav-item">
                        <a href=${baseUrl}"/new" class="btn btn-warning" role="button" aria-pressed="true">Add new ad</a>
                    </li>
                </ul>
            </c:otherwise>
        </c:choose>


    </div>
</nav>
<div class="container">

    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-8">
            <div class="row">
                <table class="table table-condensed small">
                    <tbody>
                    <tr>
                    <c:forEach var="brand" items="${brands}" varStatus="loopbrand">
                        <td>
                            <a href=${baseUrl}"/brand/<c:out value="${brand.key.name}"/>"><c:out
                                    value="${brand.key.name}"/></a> <span class="text-secondary">${brand.value}</span>
                        </td>
                        <c:if test="${loopbrand.index > 0 && (loopbrand.index+1)%6 == 0}">
                            </tr><tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <c:forEach var="ad" items="${ads}">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="slider">

                            <c:choose>
                                <c:when test="${ad.status == 'SOLD'}">
                                    <div>
                                        <img style="height: 200px !important;" src=${baseUrl}"/img/sold.png">
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="photo" items="${ad.photos}" varStatus="loop">
                                        <div>
                                            <img style="height: 200px !important;" src=${baseUrl}"/images/<c:out value="${photo.name}"/>">
                                        </div>
                                    </c:forEach>
                                    <c:if test="${ad.photos.size() == 0}">
                                        <div>
                                            <img style="height: 200px !important;" src=${baseUrl}"/img/auto.png">
                                        </div>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>

                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="row">
                            <h6>${ad.car.model.brand.name} ${ad.car.model.name}, ${ad.car.year}</h6>
                        </div>
                        <div class="row text-primary">
                            <b>$${ad.price}</b>
                        </div>
                        <div class="row text-secondary small">
                            ${ad.car.condition}, ${ad.car.bodyType}, ${ad.car.engineType}, ${ad.car.transmission}
                        </div>
                        <div class="row text-info small">
                                ${ad.user.phone}
                        </div>
                        <div class="row text-secondary small">
                            <fmt:parseDate value="${ ad.date }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" parseLocale="en_GB" />
                            <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }" />
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>


</body>
</html>

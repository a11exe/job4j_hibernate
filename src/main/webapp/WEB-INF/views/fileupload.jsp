<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.3.1/js/fileinput.js"></script>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.3.1/css/fileinput.css">
    <title>File upload</title>
</head>
<body>
<c:set var="baseUrl" scope="session" value="${pageContext.servletContext.contextPath}"/>

<div class="container">
    <div class="row">
        <div class="col-sm-10">

            <form method="post" action="<c:out value="${baseUrl}" />/upload/<c:out value="${id}"/>"
                  enctype="multipart/form-data">
                <div class="form-group">
                    <div class="row">
                        <label class="control-label">
                            Attachment(s)
                            (Attach multiple files. Max 5)
                        </label>
                    </div>
                    <div class="row">
                        <div class="col-sm-9">
                            <span class="btn btn-default btn-file">
                                <input id="input" name="input[]" type="file" class="file" multiple
                                       accept=".jpg,.png,.jpeg" data-show-upload="true" data-show-caption="true">
                            </span>
                        </div>
                    </div>
                    <div class="row">
                        <c:if test="${photos != null}">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Photo</th>
                                    <th scope="col">Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="photo" items="${photos}" varStatus="loopbrand">
                                <tr>
                                    <th scope="row">${photo.id}</th>
                                    <td><img height="200px" src=${baseUrl}/images/${photo.name}></td>
                                    <td><a href=${baseUrl}/deletephoto?id=${photo.id}> delete </a> </td>
                                </tr>
                                </tbody>
                                </c:forEach>
                            </table>
                        </c:if>
                    </div>
                </div>

            </form>
            <a href=${baseUrl}"/" class="btn btn-primary" role="button" aria-pressed="true">Next</a>
        </div>
    </div>
</div>
</body>

</html>
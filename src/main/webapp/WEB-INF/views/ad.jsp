<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script language=javascript>
        var models = [
            <c:forEach items="${models}" var="model" varStatus="loop">
            [${model.brand.id}, ${model.id}, '${model.name}']
            ${not loop.last ? ',' : ''}
            </c:forEach>
        ];
    </script>
    <script type="text/javascript">
        window.onload = function () {
            var brandSelect = document.getElementById('inputGroupSelectBrand');
            var modelSelect = document.getElementById('inputGroupSelectModel');
            brandSelect.onchange = function () {
                while (modelSelect.firstChild) {
                    modelSelect.removeChild(modelSelect.firstChild);
                }

                for (var model of models) {

                    if (model[0].toString() === brandSelect.value) {
                        var option = document.createElement("option");
                        option.value = model[1];
                        option.text = model[2];
                        modelSelect.appendChild(option);
                    }
                }
            }
        }

        $("#inputYear").datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years"
        });
    </script>
    <title>${ad == null ? 'Add' : 'Edit'} ad</title>
</head>
<body>


<c:set var="baseUrl" scope="session" value="${pageContext.servletContext.contextPath}"/>
<div class="container">
    <div class="col-4 offset-3">
        <h2 class="form-signin-heading">${ad.id == 0 ? 'New ad' : 'Edit ad'}</h2>

        <c:set var="msg" value="${msg}"/>

        <form class="form-ad" method="post" action="<c:out value="${baseUrl}" />/${ad.id == 0 ? 'new' : 'edit'}">

            <div class="input-group mb-3">
                <input hidden type="number" name = "id" value=${ad.id}>
            </div>

            <div class="input-group mb-3">
                <input hidden type="number" name = "carId" value=${ad.car.id}>
            </div>


            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelectBrand">Brand</label>
                </div>
                <select class="custom-select" id="inputGroupSelectBrand" name="brand">
                    <c:if test = "${ad.car.model == null}">
                        <option selected>Choose brand...</option>
                    </c:if>
                    <c:forEach var="brand" items="${brands}">
                        <option value="${brand.id}" ${brand.id eq ad.car.model.brand.id ? 'selected' : ''}>${brand.name}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    ${msg['brand']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelectModel">Model</label>
                </div>
                <select class="custom-select ${msg.containsKey('model') ? "is-invalid" : ""}" id="inputGroupSelectModel"
                        name="model">
                    <c:if test = "${ad.car.model == null}">
                        <option selected>Choose model...</option>
                    </c:if>
                    <c:if test="${ad != null}">
                        <c:forEach var="model" items="${models}">
                            <c:if test = "${model.brand == ad.car.model.brand}">
                                <option value="${model.id}" ${model.id eq ad.car.model.id ? 'selected' : ''}>${model.name}</option>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </select>
                <div class="invalid-feedback">
                    ${msg['model']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputYear">Year</label>
                </div>
                <input type="number" id="inputYear" name="year" min="1800" step="1" data-bind="value:inputYear" value=${ad.car.year}
                       class="form-control ${msg.containsKey('year') ? "is-invalid" : ""}" placeholder="Year" required>
                <div class="invalid-feedback">
                    ${msg['year']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputPrice">Price</label>
                </div>
                <input type="number" id="inputPrice" name="price" min="1" step="1" data-bind="value:inputPrice" value="${ad.price}"
                       class="form-control ${msg.containsKey('price') ? "is-invalid" : ""}" placeholder="Price"
                       required>
                <div class="invalid-feedback">
                    ${msg['price']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputBodyType">BodyType</label>
                </div>
                <select class="custom-select ${msg.containsKey('bodytype') ? "is-invalid" : ""}" id="inputBodyType"
                        name="bodytype">
                    <c:if test = "${ad.car.bodyType == null}">
                        <option selected>Choose body type...</option>
                    </c:if>
                    <c:forEach var="bodytype" items="${bodytypes}">
                        <option value="${bodytype}" ${bodytype eq ad.car.bodyType ? 'selected' : ''}>${bodytype}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    ${msg['bodytype']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputCondition">Condition</label>
                </div>
                <select class="custom-select ${msg.containsKey('condition') ? "is-invalid" : ""}" id="inputCondition"
                        name="condition">
                    <c:if test = "${ad.car.condition == null}">
                        <option selected>Choose condition...</option>
                    </c:if>
                    <c:forEach var="condition" items="${conditions}">
                        <option value="${condition}" ${condition eq ad.car.condition ? 'selected' : ''}>${condition}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    ${msg['condition']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputEngineType">Engine type</label>
                </div>
                <select class="custom-select ${msg.containsKey('enginetype') ? "is-invalid" : ""}" id="inputEngineType"
                        name="enginetype">
                    <c:if test = "${ad.car.engineType == null}">
                        <option selected>Choose engine type...</option>
                    </c:if>

                    <c:forEach var="enginetype" items="${engineTypes}">
                        <option value="${enginetype}" ${enginetype eq ad.car.engineType ? 'selected' : ''}>${enginetype}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    ${msg['enginetype']}
                </div>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputTransmission">Transmission</label>
                </div>
                <select class="custom-select ${msg.containsKey('transmission') ? "is-invalid" : ""}"
                        id="inputTransmission" name="transmission">
                    <c:if test = "${ad.car.transmission == null}">
                        <option selected>Choose transmission....</option>
                    </c:if>

                    <c:forEach var="transmission" items="${transmissions}">
                        <option value="${transmission}" ${transmission eq ad.car.transmission ? 'selected' : ''}>${transmission}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    ${msg['transmission']}
                </div>
            </div>

            <c:if test="${ad.id != 0}">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputStatus">Status</label>
                    </div>
                    <select class="custom-select ${msg.containsKey('status') ? "is-invalid" : ""}"
                            id="inputStatus"
                            name="status">
                        <c:forEach var="status" items="${statuses}">
                            <option value="${status}" ${status eq ad.status ? 'selected' : ''}>${status}</option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                            ${msg['status']}
                    </div>
                </div>
            </c:if>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text">${ad.id == 0 ? 'Add' : 'Edit'} photo after saving</label>
                </div>
            </div>


            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Save</button>
            </div>
        </form>
    </div>
</div> <!-- /container -->


</body>
</html>

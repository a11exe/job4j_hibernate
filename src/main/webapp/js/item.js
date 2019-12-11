var items;
var active;

$(document).ready(function () {
  active = true;
  loadItems(active);
});

function addZeroBefore(number) {
  number = "" + number;
  return number.length === 1 ? "0" + number : number;
}

function addZeroAfter(number) {
  number = "" + number;
  return number.length == 1 ? number + "0" : number;
}

function getFormatDate(created) {
  return created === null ? " " : "" +
      addZeroBefore(created.dayOfMonth) + "/" +
      addZeroBefore(created.monthValue) + "/" +
      created.year + " " +
      addZeroAfter(created.hour) + ":" +
      addZeroAfter(created.minute);
}

function showRows() {
  var result = "";
  for (var i = 0; i !== items.length; ++i) {
    var row = items[i];
    if (row.done) {
      result += "<tr class=\"done\">"
          + "<td>" + row.id + "</td>"
          + "<td>" + row.description + "</td>"
          + "<td>" + getFormatDate(row.created) + "</td>"
          + "<td></td>"
          + "<td>"
          + "<button type=\"button\" class=\"btn btn-light\" onclick=\"deleteItem("
          + row.id + ")\">Delete</button>"
          + "</td>"
          + "</tr>"
    } else {
      result += "<tr>"
          + "<td>" + row.id + "</td>"
          + "<td>" + row.description + "</td>"
          + "<td>" + getFormatDate(row.created) + "</td>"
          + "<td>"
          + "<button type=\"button\" class=\"btn btn-success\" onclick=\"doneItem("
          + row.id + ")\">Done</button>"
          + "</td>"
          + "<td> "
          + "<button type=\"button\" class=\"btn btn-danger\" onclick=\"deleteItem("
          + row.id + ")\">Delete</button>"
          + "</td>"
          + "</tr>"
    }

  }

  var rows = document.getElementById("items");
  rows.innerHTML = result;
}

function deleteItem(id) {
  $.ajax({
    url: "/items/delete",
    type: 'POST',
    cache: false,
    datatype: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: JSON.stringify(id),
    success: function () {
      loadItems();
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.log("Error... " + textStatus + "        " + errorThrown);
    }
  });
}

function doneItem(id) {
  $.ajax({
    url: "/items/done",
    type: 'POST',
    cache: false,
    datatype: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: JSON.stringify(id),
    success: function () {
      loadItems();
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.log("Error... " + textStatus + "        " + errorThrown);
    }
  });
}

function loadItems() {
  $.ajax({
    url: "/items",
    type: 'GET',
    cache: false,
    data: {
      "active": active
    },
    success: function (data) {
      items = data;
      showRows();
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.log("Error... " + textStatus + "        " + errorThrown);
    }
  });
}

function addItem() {
  var description = $("#task").val();
  console.log(JSON.stringify(description));
  $.ajax({
    url: "/items/add",
    type: 'GET',
    cache: false,
    datatype: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: {
      "item": JSON.stringify(description)
    },
    success: function () {
      loadItems();
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.log("Error... " + textStatus + "        " + errorThrown);
      loadItems();
    }
  })
}

function showCompleted() {
  active = !active;
  loadItems();
  var btnActive = document.getElementById("showactive");
  btnActive.innerHTML = active ? "show completed" : "show only active";
}

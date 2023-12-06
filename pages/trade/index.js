function pagination(data) {
  $.ajax({
    url: "../php/trade_pager.php",
    type: "GET",
    data: { page: data },
    success: function (data) {
      $(".pagination").html(data);
    },
  });
}
function trade(data) {
  var page = data;
  $.ajax({
    url: "../php/trade.php",
    type: "GET",
    dataType: "json",
    success: (data) => {
      var reqs;
      var offs;

      data.names.forEach((name) => {
        // parse data from returned object
        reqs = data.users[name].requests;
        offs = data.users[name].offers;

        var reqsSpan = 6 / reqs.length;
        var offsSpan = 6 / offs.length;

        // add rows to table
        var offers = $(`<tr class="${name} offers"></tr>`).appendTo("tbody");
        var requests = $(`<tr class="${name} requests"></tr>`).appendTo(
          "tbody"
        );
        $(`<td scope="row" class="align-middle user" rowspan="2">
            <a data-bs-toggle="modal" data-bs-target="#selectUser" id=${name} href="#">${name}</a>
          </td>`).appendTo(offers);

        // fix colspans for ones that dont divide easily
        function fixCols4(selector) {
          selector
            .children(".pokemon")
            .first()
            .prop("colspan", "2")
            .next()
            .prop("colspan", "1")
            .next()
            .prop("colspan", "1")
            .next()
            .prop("colspan", "2");
        }
        function fixCols5(selector) {
          selector
            .children(".pokemon")
            .first()
            .prop("colspan", "2")
            .next()
            .prop("colspan", "1")
            .next()
            .prop("colspan", "1")
            .next()
            .prop("colspan", "1")
            .next()
            .prop("colspan", "1");
        }

        // fill the offer table rows
        $("<td>Offer</td>").appendTo(offers);
        offs.forEach((mon) => {
          $(`<td colspan=${offsSpan} class="pokemon">
              ${mon}
            </td>`).appendTo(offers);
        });
        if (offs.length == 4) {
          fixCols4($("." + name + ".offers"));
        }
        if (offs.length == 5) {
          fixCols5($("." + name + ".offers"));
        }

        // fill the request table rows
        $("<td>Request</td>").appendTo(requests);
        reqs.forEach((mon) => {
          $(`<td colspan=${reqsSpan} class="pokemon">
            ${mon}
          </td>`).appendTo(requests);
        });
        if (reqs.length == 4) {
          fixCols4($("." + name + ".requests"));
        }
        if (reqs.length == 5) {
          fixCols5($("." + name + ".requests"));
        }

        // fill first modal & set button behavior
        $("#" + name).click(function () {
          $("#usersList").empty();
          offs.forEach((mon) => {
            $(`<option value="${mon}">${mon}</option>`).appendTo("#usersList");
          });
          $.ajax({
            url: "../php/hasOffer.php",
            type: "GET",
            data: { id: $("#usersList option:selected").val() },
            success: (data) => {
              $("#userHas")
                .attr("data-bs-target", data)
                .attr("data-bs-toggle", "modal");
            },
            error: (xhr, ajaxOptions, thrownError) => {
              console.log(thrownError);
            },
          });
        });
        $("#usersList").blur(function () {
          $.ajax({
            url: "../php/hasOffer.php",
            type: "GET",
            data: { id: $("#usersList option:selected").val() },
            success: (data) => {
              $("#userHas").attr("data-bs-target", data);
            },
            error: (xhr, ajaxOptions, thrownError) => {
              console.log(thrownError);
            },
          });
        });

        // set text content for next modal
        $("#userHas").click(function () {
          $("#user").text(`${name}`);
          $("#usermon").text($("#usersList option:selected").text());
        });

        // set text content for last modal
        $("#fillTrade").click(function () {
          $("#yourmon").text($("#offersList option:selected").text());
          $("#theirmon").text($("#usermon").text());
        });

        // enter the trade into the database
        $("#confirm").click(function () {
          $.ajax({
            url: "../php/confirmTrade.php",
            type: "GET",
            data: {
              user2: name,
              user1_offer: $("#yourmon").text(),
              user2_offer: $("#theirmon").text(),
            },
            success: (data) => {
              location.href = data;
            },
            error: (xhr, ajaxOptions, thrownError) => {
              console.log(thrownError);
            },
          });
        });
      });
      pagination(page);
    },
    error: (xhr, ajaxOptions, thrownError) => {
      console.log(thrownError);
    },
  });

  // fill the different modals with required content when able
  $.ajax({
    url: "../php/fillModals.php",
    type: "GET",
    dataType: "json",
    success: (data) => {
      var offers = data.offers;

      offers.forEach((mon) => {
        $(mon).appendTo("#offersList");
      });
    },
    error: (xhr, ajaxOptions, thrownError) => {
      console.log(thrownError);
    },
  });
}
$().ready(() => {
  trade();
});

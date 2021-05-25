$(function () {
    $('.datetimepicker').datetimepicker({
        format: 'L'
    });
});

$(document).ready(function () {
    $('#NgaySinh').datepicker({
        dateFormat: "dd/mm/yy",
        showStatus: true,
        showWeeks: true,
        currentText: 'Now',
        autoSize: true,
        gotoCurrent: true,
        showAnim: 'blind',
        highlightWeek: true
    });
});


$("input").on("change", function () {
    this.setAttribute(
        "data-date",
        moment(this.value, "yyyy-MM-dd")
            .format(this.getAttribute("data-date-format"))
    )
}).trigger("change")
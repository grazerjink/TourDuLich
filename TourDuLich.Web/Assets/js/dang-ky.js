$(function () {
    $('#tableKhachHang').DataTable({
        bLengthChange: false,
        searching: true,
        responsive: true,
        language: {
            searchPlaceholder: 'Search...',
            sSearch: ''
        }
    });
    $("select option:first-child").attr("disabled", "disabled");
    // Datepicker
    $('.fc-datepicker').datepicker({
        dateFormat: "dd / mm / yy",
        yearRange: "1930:2030",
        changeMonth: true,
        changeYear: true,
        showOtherMonths: true,
        selectOtherMonths: true
    });
    $("#MaTour").change(function () {
        $.ajax({
            url: "/api/lay-thoi-gian-tour",
            dataType: "json",
            data: {
                MaTour: $(this).val()
            },
            success: function (data) {
                if (jQuery.isEmptyObject(data)) {
                    var optionHTML = "<option selected disabled>Chưa có thời gian hoạt động</option>";
                    $("#ThoiGianTour_MaThoiGianTour").html(optionHTML);
                }
                else {
                    var optionHTML = "<option selected disabled>Chọn thời gian</option>";
                    $.each(data, function (i, item) {
                        optionHTML += "<option value='" + item.MaThoiGian + "'>" + item.ThoiGian + "</option>";
                    });
                    $("#ThoiGianTour_MaThoiGianTour").html(optionHTML);
                }

            }
        });
    });
    $(".kh-remove").on("click", function () {
        var makh = $(this).attr("data-ma-kh");
        $.ajax({
            url: "/xoa-khach-hang",
            data: {
                id: makh
            },
            success: function (res) {
            }
        });
        $(this).parents("tr").hide(300, function () {
            $(this).remove();
        });
    });

});
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
                    $("#MaThoiGianTour").html(optionHTML);
                }
                else {
                    var optionHTML = "<option selected disabled>Chọn thời gian</option>";
                    $.each(data, function (i, item) {
                        optionHTML += "<option value='" + item.MaThoiGian + "'>" + item.ThoiGian + "</option>";
                    });
                    $("#MaThoiGianTour").html(optionHTML);
                }

            }
        });
    });

    $("#check-all").change(function () {
        if ($(this).is(":checked"))
            $(".item-check").prop("checked", true);
        else
            $(".item-check").prop("checked", false);
    });

    $("#tao-doan").click(function () {
        var listId = "";
        $(".item-check:checked").each(function() {
            listId = listId + $(this).attr("data-dk-id") + ";";
        });
        if (listId === "") {
            alert("Chưa có chọn danh sách cần tạo đoàn.");
            return false;
        }
        else {
            var time = $("#MaThoiGianTour").val();
            $.ajax({
                url: "/luu-danh-sach-da-chon/",
                data: {
                    listId: listId,
                    time: time
                },
                success: function (res) {
                    var link = $("#tao-doan").attr("href");
                    setTimeout(function () {
                        window.location.href = link;
                    }, 500);
                }
            });            
            return false;
        }
    });
});
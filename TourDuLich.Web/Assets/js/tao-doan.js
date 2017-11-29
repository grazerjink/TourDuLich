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
    
    $('.employer-name').autoComplete({
        minChars: 1,
        delay: 100,
        source: function (term, response) {
            $.getJSON('/api/lay-danh-sach-nhan-vien/', { q: term }, function (data) {
                response(data);
            });
        }
    });   
});
$('.fc-datepicker').datepicker({
    dateFormat: "dd / mm / yy",
    yearRange: "1980:",
    changeMonth: true,
    changeYear: true,
    showOtherMonths: true,
    selectOtherMonths: true
});

var ctx = document.getElementById("revenueChart");
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: [],
        datasets: []
    },
    options: {
        responsive: true
    }
});

$("#btnThongKe").off().click(function () {
    var from = $("#ngayBatDau").val().trim();
    var to = $("#ngayKetThuc").val().trim();
    var MaTour = $("#MaTour").val().trim();
    if (from !== undefined && to !== undefined)
    {
        $.ajax({
            url: "/thong-ke/",
            type: "POST",
            data: {
                from: from,
                to: to,
                MaTour: MaTour
            },
            dataType: "json",
            success: function (res) {          
                    var data = {
                        labels: res.DanhSachThoiGianTour,
                        datasets: [
                            {
                                label: "Chi phí khách sạn",
                                backgroundColor: "#FF5252",
                                data: res.ChiPhiKhachSans,
                                stack: 1
                            },
                            {
                                label: "Chi phí ăn uống",
                                backgroundColor: "#03A9F4",
                                data: res.ChiPhiAnUongs,
                                stack: 2
                            },
                            {
                                label: "Chi phí phương tiện",
                                backgroundColor: "#009688",
                                data: res.ChiPhiPhuongTiens,
                                stack: 3
                            },
                            {
                                label: "Chi phí phát sinh",
                                backgroundColor: "#005698",
                                data: res.ChiPhiPhatSinhs,
                                stack: 4
                            }
                        ]
                    };

                    $("#TongChiPhiKhachSan").text(res.TongChiPhiKhachSan.toLocaleString());
                    $("#TongChiPhiAnUong").text(res.TongChiPhiAnUong.toLocaleString());
                    $("#TongChiPhiPhuongTien").text(res.TongChiPhiPhuongTien.toLocaleString());
                    $("#TongChiPhiPhatSinh").text(res.TongChiPhiPhatSinh.toLocaleString());

                    myChart.data.labels = data.labels;
                    myChart.data.datasets = data.datasets;
                    myChart.update();
            }
            
        });
    }    
    else {
        alert("Chưa xác định thời gian thống kê.");
    }
});                
<%@page import="DAO.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tạo mới đơn hàng</title>
        <!-- Bootstrap core CSS -->
        <link href="/vnpay_jsp/assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="/vnpay_jsp/assets/customs.css" rel="stylesheet">
        <script src="/vnpay_jsp/assets/jquery-1.11.3.min.js"></script>
    </head>

    <body>
        <div class="container-fluid d-flex align-items-center justify-content-center min-vh-100">
            <div class="card shadow-sm w-75">
                <div class="card-header bg-primary text-white">
                    <h3 class="text-center">Tạo mới đơn hàng</h3>
                </div>
                <div class="card-body">
                    <form action="vnpayajax" id="frmCreateOrder" method="post">        
                        <div class="form-group">
                            <label for="amount">Số tiền</label>
                            <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required."
                                   id="amount" max="100000000" min="1" name="amount" type="text" pattern="[0-9]+([.,][0-9]{1,2})?" value="${sessionScope.total}" />
                        </div>
                        <h4>Chọn phương thức thanh toán</h4>
                        <div class="form-group">
                            <h5>Cách 1: Chuyển hướng sang Cổng VNPAY chọn phương thức thanh toán</h5>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" checked id="bankCode1" name="bankCode" value="">
                                <label class="form-check-label" for="bankCode1">Cổng thanh toán VNPAYQR</label>
                            </div>

                            <h5>Cách 2: Tách phương thức tại site của đơn vị kết nối</h5>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="bankCode2" name="bankCode" value="VNPAYQR">
                                <label class="form-check-label" for="bankCode2">Thanh toán bằng ứng dụng hỗ trợ VNPAYQR</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="bankCode3" name="bankCode" value="VNBANK">
                                <label class="form-check-label" for="bankCode3">Thanh toán qua thẻ ATM/Tài khoản nội địa</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="bankCode4" name="bankCode" value="INTCARD">
                                <label class="form-check-label" for="bankCode4">Thanh toán qua thẻ quốc tế</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <h5>Chọn ngôn ngữ giao diện thanh toán:</h5>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" checked id="language1" name="language" value="vn">
                                <label class="form-check-label" for="language1">Tiếng việt</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="language2" name="language" value="en">
                                <label class="form-check-label" for="language2">Tiếng anh</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Thanh toán</button>
                    </form>
                </div>
            </div>
        </div>

        <link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
        <script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
        <script type="text/javascript">
            $("#frmCreateOrder").submit(function () {
                var postData = $(this).serialize();
                var submitUrl = $(this).attr("action");
                $.ajax({
                    type: "POST",
                    url: submitUrl,
                    data: postData,
                    dataType: 'JSON',
                    success: function (response) {
                        if (response.code === '00') {
                            if (window.vnpay) {
                                vnpay.open({width: 768, height: 600, url: response.data});
                            } else {
                                location.href = response.data;
                            }
                            return false;
                        } else {
                            alert(response.Message);
                        }
                    }
                });
                return false;
            });
        </script>       
    </body>
</html>

$(document).ready(function() {
    const showMessage = (element, condition, message) => {
        if (condition) {
            $(element).removeClass('hide');
        } else {
            $(element).addClass('hide');
        }
    };

    const idLength = (value) => value.length >= 4 && value.length <= 12;
    const onlyNumberAndEnglish = (str) => /^[A-Za-z0-9]+$/.test(str);
    const strongPassword = (str) => /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
    const isMatch = (password1, password2) => password1 === password2;

    $('#U_id').on('keyup', function() {
        const value = $(this).val();
        showMessage('.success-message', idLength(value) && onlyNumberAndEnglish(value), "사용할 수 있는 아이디입니다.");
        showMessage('.failure-message', !idLength(value), "아이디는 4~12글자이어야 합니다.");
        showMessage('.failure-message2', !onlyNumberAndEnglish(value), "영어 또는 숫자만 가능합니다.");
    });

    $('#U_pw').on('keyup', function() {
        const value = $(this).val();
        showMessage('.strongPassword-message', !strongPassword(value), "8글자 이상, 영문, 숫자, 특수문자 포함해야 합니다.");
    });

    $('#U_pwchk').on('keyup', function() {
        const password = $('#U_pw').val();
        const confirmPassword = $(this).val();
        showMessage('.mismatch-message', !isMatch(password, confirmPassword), "비밀번호가 일치하지 않습니다.");
    });

    // 전화번호 자동 형식
    $('#U_phoneNum').on('input', function() {
        const value = $(this).val().replace(/[^0-9]/g, '')
            .replace(/(\d{2,3})(\d{3,4})(\d{4})/, '$1-$2-$3');
        $(this).val(value);
    });

});
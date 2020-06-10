$(document).ready(function () {
    $("#sidebar").mCustomScrollbar({
        theme: "minimal"
    });

    $('#dismiss, .overlay').on('click', function () {
        $('#sidebar').removeClass('active');
        $('.overlay').removeClass('active');
    });

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').addClass('active');
        $('.overlay').addClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });

    $('.toggle-hidden').change(function () {
        $.ajax({
            type: "GET",
            dataType: "json",
            url: changeHiddenUrl,
            data: {
                'hidden': $(this).prop('checked') == true ? 1 : 0,
                'id': $(this).data('id')
            },
            success: function (data) {
                console.log(data.success)
            }
        });
    });

});
function pageLoad() {
}
(function ($) {
    $(window).load(function () {
    });
    $(function () {
        initialize();
    });
})(jQuery);
/*============================================================================================
============================================================================================
============================================================================================*/
function initialize() {
    //10.7641152,106.6649788
    var myLatlng = new google.maps.LatLng(10.686778, 106.593867);
    var mapOptions = {
        zoom: 15,
        center: myLatlng
    };

    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        draggable: true,
        animation: google.maps.Animation.DROP,
        title: 'Công ty cổ phần công nghệ trái đất xanh'
    });
    marker.addListener('click', toggleBounce);

    marker.setMap(map);

    var contentString =
        '<div class="map-info">' +
            '<h4 class="title-ft">CÔNG TY CỔ PHẦN SXTM TƯỜNG VÂN</h4>' +
            '<ul class="address">' +
                '<li><span class="fa fa-map-marker"></span>356A/14 Quốc lộ 1A, Xã An Phú Tây, Huyện Bình Chánh, Tp.HCM</li>' +
                '<li><span class="fa fa-phone"></span>Tel: (848) 3875 1145 - Fax: (848) 3875 1145</li>' +
                '<li><span class="fa fa-envelope"></span><a href="mailto:tv.68tuongvan@yahoo.com">Email: tv.68tuongvan@yahoo.com</a></li>' +
            '</ul>' +
        '</div>'
    ;

    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });

    infowindow.open(map, marker);

    google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map, marker);
    });
}
function toggleBounce() {
    if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
    } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
    }
}
google.maps.event.addDomListener(window, 'load', initialize);
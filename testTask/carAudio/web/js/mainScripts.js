define([
    'jquery',
    'select2',
    'slick',
    'shorttext',
    'domReady!'
    ], function ($) {

    //show addReview form
    $('.review_hiden').click(function () {
        $(".block-content").toggleClass("show-review-form");
    });

    //scroll page to reviews
    $('.action.view').click(function() {
        $('html, body').animate({
          scrollTop: $(".block.review-list").offset().top
        }, 1000)
    });

    //scroll page to show addReview form
    $('.action.add').click(function() {
        $(".block-content").toggleClass("show-review-form");
        $('html, body').animate({
            scrollTop: $(".show-review-form").offset().top
          }, 1000)
    });

    //show-hide text
    $(".product.attribute.description .value p").shorten({
        "showChars": 525,
        "ellipsesText": "...",
        "moreText": $.mage.__('Show more'),
        "lessText": $.mage.__('Show less'),
    });

    $(".review-content").shorten({
        "showChars": 370,
        "ellipsesText": "...",
        "moreText": $.mage.__('Show more'),
        "lessText": $.mage.__('Show less'),
    });
    

    //select plugin
    $('.select-city, .select-phone').select2({
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

    //remove slick class from viewed product
    var showAllViewed = $('.all-viewed');
    showAllViewed.click(function() {

        var elementNotSlider = $(".recently-viewed-products-list");
        
        if (elementNotSlider.hasClass('slick-initialized')) {

            elementNotSlider.slick('destroy');
        } else 
            elementNotSlider.slick({
                infinite: true,
                speed: 300,
                slidesToShow: 4,
                slidesToScroll: 1,
                variableWidth: true
            });
    });
});

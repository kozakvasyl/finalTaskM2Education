define([
    'jquery',
    'jquery/ui'
], function($) {
    'use strict';

    $.widget('testTask.hideShowElements', {
        options: {
            linesQty: "3",
            itemToHide: ".test-lines",
            textHideElemClass: "hiden-elements",
            textShowBtn: $.mage.__('Show more'),
            textHideBtn: $.mage.__('Show less')
        },

        _create: function() {
            var mainWrapper = $(this.element),
            itemToHide = mainWrapper.find(this.options.elementToHide),
            linesQty = this.options.linesQty,
            textShowBtn = this.options.textShowBtn,
            textHideBtn = this.options.textHideBtn,
            textHideElemClass = this.options.textHideElemClass,
            isShown = false;

            if (itemToHide.length > linesQty) {
                itemToHide.each(function (i, elem) {
                    if (i >= linesQty) {
                        $(elem).addClass(textHideElemClass).hide();
                    }
                });
                isShown = false;

                mainWrapper.parent().append('<a class="show-btn">' + textShowBtn + '</a>');

                var actionButton  = mainWrapper.parent().find('.show-btn');

                actionButton.off('click').on('click', function() {
                    if (isShown) {
                        $("."+textHideElemClass).hide();
                        $(this).text(textShowBtn).removeClass('hide-btn');
                        isShown = false;
                    } else {
                        $("."+textHideElemClass).show();
                        $(this).text(textHideBtn).addClass('hide-btn');
                        isShown = true;
                    }
                });
            }
        }
    });
    return $.testTask.hideShowElements;
});
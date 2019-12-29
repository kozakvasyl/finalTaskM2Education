define([
    'jquery',
    'jquery/ui',
    'js/lib/slick'
], function($) {
    'use strict';

    $.widget('testTask.sliderInit', {
        _create: function() {
            var element = $(this.element);
            element.slick(this.options);
        }
    });

    return $.testTask.sliderInit;
});
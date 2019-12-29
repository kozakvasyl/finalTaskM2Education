var config = {
    map: {
        '*': {
            select2: 'js/lib/select2.full',
            slick: 'js/lib/slick',
            shorttext: 'js/lib/shorttext',
        }
    },
    deps: [
        'js/mainScripts'
    ],
    shim: {
        'select2.full': {
            deps: ['jquery']
        },
        'slick': {
            deps: ['jquery']
        },
        'shorttext': {
            deps: ['jquery']
        }
    },
};
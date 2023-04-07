-- deadcolumn confi#g


--  jkjksjkj ksj jh jh j j  kj kksjk jkjskj kjs kjkjk skjkjks kjks kj ksj kjs
local opts = {
    scope = 'line',
    modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
    blending = {
        threshold = 0.75,
        colorcode = '#000000',
        hlgroup = {
            'Normal',
            'background',
        },
    },
    warning = {
        alpha = 0.4,
        colorcode ='#6F1230', 
        hlgroup = {
            'NonText',
            'background',
        },
    },
    extra = {
        follow_tw = nil,
    },
}
require('deadcolumn').setup(opts)

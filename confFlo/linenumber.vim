
" Enable line number interval at startup. (default: 0(disable))
let g:line_number_interval_enable_at_startup = 1

" Set interval to highlight line number. (default: 10)
let g:line_number_interval = 10

" Set color to highlight and dim.
" (default: HighlightedLineNr use LineNr color,
"           DimLineNr use same as background color (it seems hide).)
highlight HighlightedLineNr guifg=White ctermfg=7
highlight DimLineNr guifg=Magenta ctermfg=5

" Enable to use custom interval. (default: 0(disable))
" If this option is enabled, highlight for relative position of cursor position.
let g:line_number_interval#use_custom = 1

" Set custom interval list.
" (default: fibonacci sequence ([1, 2, 3, 5, 8, 13, 21, 34, 55, ...]))
" Relative position to highlight.
let g:line_number_interval#custom_interval = [1,2,3,4,5,10,20,30,40,50,60,70,80,90]

" Additional highlight
" Use those colors for Nth (1st ~ 9th) element of custom interval.
highlight HighlightedLineNr1 guifg=Yellow ctermfg=3
highlight HighlightedLineNr2 guifg=Green ctermfg=2
highlight HighlightedLineNr3 guifg=Cyan ctermfg=6
highlight HighlightedLineNr4 guifg=Blue ctermfg=4
highlight HighlightedLineNr5 guifg=Magenta ctermfg=5
" highlight HighlightedLineNr6 guifg=White ctermfg=7
" highlight HighlightedLineNr7 guifg=White ctermfg=7
" highlight HighlightedLineNr8 guifg=White ctermfg=7
" highlight HighlightedLineNr9 guifg=White ctermfg=7

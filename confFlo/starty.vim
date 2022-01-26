" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−− Startify Flo −−−−−−−−−−−−−−−

let g:statify_session_dir = "~/.config/nvim/confFlo/sessions"

let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Directory  '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]

let g:startify_bookmarks = [
		\ { 'i': '~/.config/nvim/init.vim' },
		\ { 'I': '~/.config/nvim/' }
		\]

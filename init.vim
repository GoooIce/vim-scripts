if exists('g:vscode')
    " Specify a directory for plugins
    " - For Neovim: stdpath('data') . '/plugged'
    " - Avoid using standard Vim directory names like 'plugin'
    call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes

    " im-select
    Plug 'brglng/vim-im-select'

    " Unmanaged plugin (manually installed and updated)
    " Plug '~/my-prototype-plugin'

    " Initialize plugin system
    call plug#end()

    let g:im_select_default = 'com.apple.keylayout.US'
else
    finish
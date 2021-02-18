" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" im-select
Plug 'brglng/vim-im-select'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

let g:im_select_default = 'com.apple.keylayout.US'

if exists('g:vscode')
    " Specify a directory for plugins
    " - For Neovim: stdpath('data') . '/plugged'
    " - Avoid using standard Vim directory names like 'plugin'
    call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes

    " Unmanaged plugin (manually installed and updated)
    " Plug '~/my-prototype-plugin'

    " Initialize plugin system
    call plug#end()

endif
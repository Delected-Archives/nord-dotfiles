call plug#begin('~/local/share/nvim/plugged')

" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive'

call plug#end()

" lightline config (taken from @svengreb and @ryanoasis on GitHub)

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'fugitive', 'filename' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'LightlineFiletype',
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
    \ }

" changed 1 slight thing: changed + to *
function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "*"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elsif &readonly
    return ""
  else
    return ""
  endif
endfunction

" modified, original was not working for me
function! LightlineFugitive()
  " if exists("*fugitive#head")
  let branch = fugitive#head()
  return branch !=# '' ? ' '.branch : ''
  " endif
  " return ''
endfunction

" modified to add a * if the file has been modified
function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? '' . LightlineModified() : '')
endfunction

" taken from @ryanoasis on GitHub
function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

" nord config
let g:nord_underline = 1
colorscheme nord

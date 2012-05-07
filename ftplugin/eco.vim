" Language:    Eco
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

" surround.vim additions for eco files
" 
" Usage:
"   yss% : Surrounds current line with <% %>
"   yss- : Surrounds current line with <%- %>
"   yss= : Surrounds current line with <%= %>
"   And so on, see http://www.vim.org/scripts/script.php?script_id=1697 for 
"   more usage info.
" 
" Note: Extracted from rails.vim (thanks tpope):
" https://github.com/tpope/vim-rails/blob/master/autoload/rails.vim#L4506
function! s:buffer_getvar(varname)
  return getbufvar(bufnr('%'),a:varname)
endfunction

function! s:buffer_setvar(varname, val)
  return setbufvar(bufnr('%'),a:varname,a:val)
endfunction

if exists("g:loaded_surround")
  if s:buffer_getvar('surround_45') == '' || s:buffer_getvar('surround_45') == "<% \r %>" " -
    call s:buffer_setvar('surround_45', "<% \r -%>")
  endif
  if s:buffer_getvar('surround_61') == '' " =
    call s:buffer_setvar('surround_61', "<%= \r %>")
  endif
  if s:buffer_getvar("surround_35") == '' " #
    call s:buffer_setvar('surround_35', "<%# \r %>")
  endif
endif

" End surround.vim addditions

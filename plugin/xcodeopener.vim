" This file is vim plugin
" pebble8888/xcodeopener.vim
" pebble8888@gmail.com
"

function! ROpenCurrentFileWithXcode()
  silent! execute "!/Applications/Xcode.app/Contents/MacOS/Xcode " . expand("%:p") . " >/dev/null 2>/dev/null &"
  redraw!
endfunction

if !exists('g:xcodeopener_no_default_key_mappings')
  noremap ,x :call ROpenCurrentFileWithXcode()<CR>
endif


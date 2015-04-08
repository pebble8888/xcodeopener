" This file is vim plugin
" Filename : pebble8888/xcodeopener.vim
" Author   : pebble8888@gmail.com

" old version
function! ROpenCurrentFileWithXcode()
  silent! execute "!/Applications/Xcode.app/Contents/MacOS/Xcode " . expand("%:p") . " >/dev/null 2>/dev/null &"
  redraw!
endfunction

let s:script_folder_path = expand( '<sfile>:p:h' )

" Xcode quick open
function! ROpenCurrentFileWithXcodeAppleScript()
    let xcodequickopen_script = 'osascript -l JavaScript ' . s:script_folder_path . '/../bin/xcodequickopen.js'
    let filename = expand('%:t')
    let line = line('.')
    let cmd = xcodequickopen_script . ' ' . filename . ':' . line
    call system(cmd)
endfunction

if !exists('g:xcodeopener_no_default_key_mappings')
  noremap <Leader>c :call ROpenCurrentFileWithXcode()<CR>
  noremap <Leader>x :call ROpenCurrentFileWithXcodeAppleScript()<CR>
endif


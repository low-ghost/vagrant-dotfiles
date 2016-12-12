" Background {
function! ToggleBG()
  let s:tbg = &background
  if s:tbg == "dark"
    set background=light
  else
    set background=dark
  endif
endfunction
" }

" Syntax {
let s:syntax_toggle = "on"
function! ToggleSyntax()
  if s:syntax_toggle == "on"
    let s:syntax_toggle = "off"
    syntax off
  else
    let s:syntax_toggle = "on"
    syntax on
  endif
endfunction

"TODO redir => hi_cursor_line
"hi CursorLine
"redir END
"grep to get values and execute in else
let s:position_toggle = "off"
function! TogglePosition()
  if s:position_toggle == "off"
    let s:position_toggle = "on"
    set cursorcolumn
    hi CursorLine cterm=reverse ctermbg=241 gui=reverse guibg=#665c54
  else
    let s:position_toggle = "off"
    set cursorcolumn!
    hi CursorLine cterm=NONE ctermbg=237 gui=NONE guibg=#3c3836
  endif
endfunction

let s:end_column_toggle = "on"
set colorcolumn=100 
function! ToggleEndColumn()
  if s:end_column_toggle == "off"
    let s:end_column_toggle = input('end col. num> ', 100)
    exe 'set colorcolumn='.s:end_column_toggle
  else
    let s:end_column_toggle = "off"
    set colorcolumn=
  endif
endfunction
" }

" Wrap {
function! ToggleWrap()
  if &wrap == 'nowrap'
    set wrap
  else
    set nowrap
  endif
endfunction
" }

let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/cap4
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/Documents/cap4
set stal=2
tabnew
tabnew
tabrewind
edit CU_HW.vhd
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 97 + 100) / 200)
exe 'vert 2resize ' . ((&columns * 102 + 100) / 200)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 163 - ((36 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 163
normal! 07|
lcd ~/Documents/cap4
wincmd w
argglobal
if bufexists("~/Documents/cap4/COMM_PKG.vhd") | buffer ~/Documents/cap4/COMM_PKG.vhd | else | edit ~/Documents/cap4/COMM_PKG.vhd | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/cap4/COMM_PKG.vhd
endif
balt ~/Documents/cap4/CU_HW_orig.vhd
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 37 - ((12 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 03|
lcd ~/Documents/cap4
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 97 + 100) / 200)
exe 'vert 2resize ' . ((&columns * 102 + 100) / 200)
tabnext
edit ~/Documents/cap4/CU_Test.vhd
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 100 + 100) / 200)
exe 'vert 2resize ' . ((&columns * 99 + 100) / 200)
argglobal
balt ~/Documents/cap3/ex_3.1.3/ADDR_DEC.vhd
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 11 - ((10 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
lcd ~/Documents/cap4
wincmd w
argglobal
if bufexists("~/Documents/cap4/myTypes.vhd") | buffer ~/Documents/cap4/myTypes.vhd | else | edit ~/Documents/cap4/myTypes.vhd | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/cap4/myTypes.vhd
endif
balt ~/Documents/cap4/CU_Test.vhd
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 11 - ((10 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
let s:c = 82 - ((35 * winwidth(0) + 49) / 99)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 82 . '|'
else
  normal! 082|
endif
lcd ~/Documents/cap4
wincmd w
exe 'vert 1resize ' . ((&columns * 100 + 100) / 200)
exe 'vert 2resize ' . ((&columns * 99 + 100) / 200)
tabnext
edit ~/Documents/cap4/COMM_PKG.vhd
argglobal
balt ~/Documents/cap4/COMM_PKG.vhd
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 63 - ((40 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 63
normal! 078|
lcd ~/Documents/cap4
tabnext 1
set stal=1
badd +45 ~/Documents/cap4/CU_HW.vhd
badd +42 ~/Documents/cap3/ex_3.1.3/ADDR_DEC.vhd
badd +54 ~/Documents/cap4/CU_Test.vhd
badd +0 ~/Documents/cap4/myTypes.vhd
badd +29 ~/Documents/cap4/CU_FSM_CFG.vhd
badd +27 ~/Documents/cap4/COMM_PKG.vhd
badd +72 ~/Documents/cap4/CU_HW_orig.vhd
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
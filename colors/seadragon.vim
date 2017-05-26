"   _________                  .___
"  /   _____/ ____ _____     __| _/___________     ____   ____   ____
"  \_____  \_/ __ \\__  \   / __ |\_  __ \__  \   / ___\ /  _ \ /    \
"  /        \  ___/ / __ \_/ /_/ | |  | \// __ \_/ /_/  >  <_> )   |  \
" /_______  /\___  >____  /\____ | |__|  (____  /\___  / \____/|___|  /
"         \/     \/     \/      \/            \//_____/             \/

" A Terminal && Vim colorscheme
" Author:       Michael Reinhardt
" Script URL:   https://github.com/mreinhardt/Seadragon
" License:      MIT

" Copyright (c) 2017 Michael Reinhardt
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

"=================================================================================
" SEADRAGON TERMINAL:
"=================================================================================
"     Foreground    #afa89e             |      Selection     #9eee00             |
"     Background    #001226             |      Selected Text #001226             |
"     Bold          #fff8ee             |                                        |
"     Links         #0044e4             |                                        |
"     CursorColor   #00ee76             |                                        |
"     CursorText    #001226             |                                        |
"=================================================================================
" ANSI COLORS:                                                                   |
"=================================================================================
"---------------------------------------|-----------------------------------------
"   NORMAL     Hex       xterm   cterm  |   BRIGHT      Hex       xterm   cterm  |
"---------------------------------------|-----------------------------------------
"   Black      #001226   0       234    |   brBlack     #3a6c7f   8       60     |
"   Red        #9e129e   1       90     |   brRed       #e41ce4   9       164    |
"   Green      #009e4e   2       29     |   brGreen     #00ee76   10      42     |
"   Yellow     #6c9e00   3       64     |   brYellow    #9eee00   11      112    |
"   Blue       #00309e   4       24     |   brBlue      #0044e4   12      26     |
"   Magenta    #3a0876   5       54     |   brMagenta   #5f12bb   13      56     |
"   Cyan       #4e94af   6       67     |   brCyan      #76d7ff   14      117    |
"   White      #afa89e   7       144    |   brWhite     #fff8ee   15      231    |
"---------------------------------------|-----------------------------------------
"=================================================================================

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SEADRAGON HIGHLIGHTING:
"================================================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: Anything commented out still needs to have correct colors applied.      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" highlight! PreProc                guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE
" highlight! Title                  guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE
" highlight! htmlItalic             guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE

" highlight! Identifier             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
" highlight! FoldColumn             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
" highlight! DiffText               guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse

" highlight! Statement              guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
" highlight! ModeMsg                guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
" highlight! Directory              guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE

" highlight! Operator               guifg=#5f5faf  guibg=NONE     gui=NONE       ctermfg=61     ctermbg=NONE  cterm=NONE
" highlight! Constant               guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE

" highlight! String                 guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
" highlight! netrwExe               guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE

" highlight! Function               guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
" highlight! htmlArg                guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
" highlight! netrwList              guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE

" highlight! Search                 guifg=#dfaf00  guibg=#1c1c1c  gui=reverse    ctermfg=178    ctermbg=234   cterm=reverse
" highlight! MatchParen             guifg=#dfaf00  guibg=#1c1c1c  gui=reverse    ctermfg=178    ctermbg=234   cterm=reverse
" highlight! WildMenu               guifg=#dfaf00  guibg=#1c1c1c  gui=reverse    ctermfg=178    ctermbg=234   cterm=reverse

" highlight! Question               guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE
" highlight! Underlined             guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE
" highlight! MoreMsg                guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE

highlight! Type                   guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=56     ctermbg=NONE  cterm=NONE
highlight! ErrorMsg               guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=56     ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=56     ctermbg=NONE  cterm=NONE
highlight! Error                  guifg=#5f12bb  guibg=NONE     gui=reverse       ctermfg=56     ctermbg=NONE  cterm=reverse

" highlight! SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE
" highlight! Visual                 guifg=#1c1c1c  guibg=#008787  gui=NONE       ctermfg=234    ctermbg=30    cterm=NONE
" highlight! Todo                   guifg=#8787d7  guibg=#1c1c1c  gui=reverse    ctermfg=104    ctermbg=234   cterm=reverse
" highlight! DiffAdd                guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
" highlight! DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse

" highlight! Special                guifg=#5f5f87  guibg=NONE     gui=NONE       ctermfg=60     ctermbg=NONE  cterm=NONE
" highlight! SpecialComment         guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
" highlight! CursorLineNr           guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
" highlight! VimCommentTitle        guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
" highlight! DiffChange             guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse

" highlight! SpellBad               guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
" highlight! SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
" highlight! SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
" highlight! SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl

highlight! Normal               guifg=#afa89e  guibg=#001226  gui=NONE     ctermfg=144   ctermbg=234   cterm=NONE
highlight! TabLineFill          guifg=NONE     guibg=#1c3a4e  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE

highlight! CursorLine           guifg=NONE     guibg=#3a6c7f  gui=NONE     ctermfg=NONE  ctermbg=60    cterm=NONE
highlight! CursorColumn         guifg=NONE     guibg=#3a6c7f  gui=NONE     ctermfg=NONE  ctermbg=60    cterm=NONE
highlight! ColorColumn          guifg=NONE     guibg=#3a6c7f  gui=NONE     ctermfg=NONE  ctermbg=60    cterm=NONE

highlight! StatusLine           guifg=#e4d7bb  guibg=#1c3a4e  gui=NONE     ctermfg=229   ctermbg=236   cterm=NONE
highlight! TabLineSel           guifg=#e4d7bb  guibg=#1c3a4e  gui=NONE     ctermfg=229   ctermbg=236   cterm=NONE
highlight! PmenuSel             guifg=#e4d7bb  guibg=#1c3a4e  gui=NONE     ctermfg=229   ctermbg=236   cterm=NONE

highlight! StatusLineNC         guifg=#767676  guibg=#1c3a4e  gui=NONE     ctermfg=243   ctermbg=236   cterm=NONE
highlight! VertSplit            guifg=#767676  guibg=#1c3a4e  gui=NONE     ctermfg=243   ctermbg=236   cterm=NONE
highlight! TabLine              guifg=#767676  guibg=#1c3a4e  gui=NONE     ctermfg=243   ctermbg=236   cterm=NONE
highlight! Pmenu                guifg=#767676  guibg=#1c3a4e  gui=NONE     ctermfg=243   ctermbg=236   cterm=NONE
highlight! LineNr               guifg=#767676  guibg=#1c3a4e  gui=NONE     ctermfg=243   ctermbg=236   cterm=NONE

highlight! NonText              guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
highlight! SpecialKey           guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE

highlight! PmenuSbar            guifg=#1c3a4e  guibg=#1c3a4e  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE
highlight! PmenuThumb           guifg=#1c3a4e  guibg=#1c3a4e  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE

highlight! Comment              guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
highlight! Folded               guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE

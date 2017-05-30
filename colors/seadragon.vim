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
"     Foreground    #b7d2da             |      Selection     #9eee00             |
"     Background    #001226             |      Selected Text #001226             |
"     Bold          #d6f5ff             |                                        |
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
"   Red        #9e129e   1       90     |   brRed       #e41ce4   9       201    |
"   Green      #009e4e   2       41     |   brGreen     #00ee76   10      48     |
"   Yellow     #6c9e00   3       64     |   brYellow    #9eee00   11      154    |
"   Blue       #00309e   4       25     |   brBlue      #0044e4   12      27     |
"   Magenta    #3a0876   5       55     |   brMagenta   #5f12bb   13      57     |
"   Cyan       #4e94af   6       67     |   brCyan      #76d7ff   14      117    |
"   White      #b7d2da   7       189    |   brWhite     #d6f5ff   15      195    |
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

let g:colors_name="seadragon"

"================================================================================
" SEADRAGON HIGHLIGHTING:
"================================================================================

highlight! PreProc                guifg=#0044e4  guibg=NONE     gui=NONE       ctermfg=27     ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#0044e4  guibg=NONE     gui=NONE       ctermfg=27     ctermbg=NONE  cterm=NONE
highlight! htmlItalic             guifg=#0044e4  guibg=NONE     gui=NONE       ctermfg=27     ctermbg=NONE  cterm=NONE
highlight! htmlEndTag             guifg=#0044e4  guibg=NONE     gui=NONE       ctermfg=27     ctermbg=NONE  cterm=NONE
highlight! xmlEndTag              guifg=#0044e4  guibg=NONE     gui=NONE       ctermfg=27     ctermbg=NONE  cterm=NONE

highlight! FoldColumn             guifg=#4e94af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
highlight! DiffText               guifg=#4e94af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE

highlight! Statement              guifg=#00309e  guibg=NONE     gui=NONE       ctermfg=25     ctermbg=NONE  cterm=NONE
highlight! ModeMsg                guifg=#00309e  guibg=NONE     gui=NONE       ctermfg=25     ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#00309e  guibg=NONE     gui=NONE       ctermfg=25     ctermbg=NONE  cterm=NONE

highlight! Identifier             guifg=#009e3e  guibg=NONE     gui=NONE       ctermfg=41     ctermbg=NONE  cterm=NONE
highlight! Operator               guifg=#009e3e  guibg=NONE     gui=NONE       ctermfg=41     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#76d7ff  guibg=NONE     gui=NONE       ctermfg=117    ctermbg=NONE  cterm=NONE

highlight! Noise                  guifg=#9eee00  guibg=NONE     gui=NONE       ctermfg=154    ctermbg=NONE  cterm=NONE
highlight! Quote                  guifg=#9eee00  guibg=NONE     gui=NONE       ctermfg=154    ctermbg=NONE  cterm=NONE
highlight! Symbol                 guifg=#9eee00  guibg=NONE     gui=NONE       ctermfg=154    ctermbg=NONE  cterm=NONE

highlight! String                 guifg=#00ee76  guibg=NONE     gui=NONE       ctermfg=48     ctermbg=NONE  cterm=NONE
highlight! netrwExe               guifg=#00ee76  guibg=NONE     gui=NONE       ctermfg=48     ctermbg=NONE  cterm=NONE

highlight! Function               guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=57     ctermbg=NONE  cterm=NONE
highlight! htmlArg                guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=57     ctermbg=NONE  cterm=NONE
highlight! netrwList              guifg=#5f12bb  guibg=NONE     gui=NONE       ctermfg=57     ctermbg=NONE  cterm=NONE

highlight! Search                 guifg=#76d7ff  guibg=#3a6c7f  gui=reverse    ctermfg=117    ctermbg=60    cterm=reverse
highlight! MatchParen             guifg=#76d7ff  guibg=#3a6c7f  gui=reverse    ctermfg=117    ctermbg=60    cterm=reverse
highlight! WildMenu               guifg=#76d7ff  guibg=#3a6c7f  gui=reverse    ctermfg=117    ctermbg=60    cterm=reverse

highlight! Question               guifg=#009e3e  guibg=NONE     gui=NONE       ctermfg=41     ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#009e3e  guibg=NONE     gui=NONE       ctermfg=41     ctermbg=NONE  cterm=NONE
highlight! MoreMsg                guifg=#009e3e  guibg=NONE     gui=NONE       ctermfg=41     ctermbg=NONE  cterm=NONE

highlight! WarningMsg             guifg=#9eee00  guibg=NONE     gui=NONE       ctermfg=154    ctermbg=NONE  cterm=NONE
highlight! ErrorMsg               guifg=#e41ce4  guibg=NONE     gui=NONE       ctermfg=201    ctermbg=NONE  cterm=NONE
highlight! Error                  guifg=#e41ce4  guibg=NONE     gui=reverse    ctermfg=201    ctermbg=NONE  cterm=reverse
highlight! Type                   guifg=#e41ce4  guibg=NONE     gui=NONE       ctermfg=201    ctermbg=NONE  cterm=NONE

highlight! SignColumn             guifg=#76d7ff  guibg=NONE     gui=NONE       ctermfg=117    ctermbg=NONE  cterm=NONE
highlight! Visual                 guifg=#001226  guibg=#00ee76  gui=NONE       ctermfg=234    ctermbg=48    cterm=NONE
highlight! Todo                   guifg=#001226  guibg=#e41ce4  gui=NONE       ctermfg=234    ctermbg=201   cterm=NONE
highlight! DiffAdd                guifg=#00ee76  guibg=NONE     gui=reverse    ctermfg=48     ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#9e129e  guibg=NONE     gui=reverse    ctermfg=90     ctermbg=NONE  cterm=reverse

highlight! Special                guifg=#9eee00  guibg=NONE     gui=NONE       ctermfg=154    ctermbg=NONE  cterm=NONE
highlight! SpecialComment         guifg=#3a6c7f  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! CursorLineNr           guifg=#3a6c7f  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#3a6c7f  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#3a6c7f  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse

highlight! SpellBad               guifg=#e41ce4  guibg=NONE     gui=undercurl  ctermfg=234    ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#00309e  guibg=NONE     gui=undercurl  ctermfg=25     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#76d7ff  guibg=NONE     gui=undercurl  ctermfg=117    ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#9eee00  guibg=NONE     gui=undercurl  ctermfg=154    ctermbg=NONE  cterm=undercurl

highlight! Normal               guifg=#b7d2da  guibg=NONE     gui=NONE     ctermfg=189   ctermbg=NONE  cterm=NONE
highlight! TabLineFill          guifg=NONE     guibg=#001226  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

highlight! CursorLine           guifg=NONE     guibg=#001226  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
highlight! CursorColumn         guifg=NONE     guibg=#001226  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
highlight! ColorColumn          guifg=NONE     guibg=#001226  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

highlight! StatusLine           guifg=#d6f5ff  guibg=#001226  gui=NONE     ctermfg=195   ctermbg=234   cterm=NONE
highlight! TabLineSel           guifg=#d6f5ff  guibg=#001226  gui=NONE     ctermfg=195   ctermbg=234   cterm=NONE
highlight! PmenuSel             guifg=#d6f5ff  guibg=#001226  gui=NONE     ctermfg=195   ctermbg=234   cterm=NONE

highlight! StatusLineNC         guifg=#3a6c7f  guibg=#001226  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
highlight! VertSplit            guifg=#3a6c7f  guibg=#001226  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
highlight! TabLine              guifg=#3a6c7f  guibg=#001226  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
highlight! Pmenu                guifg=#3a6c7f  guibg=#001226  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
highlight! LineNr               guifg=#3a6c7f  guibg=#001226  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE

highlight! NonText              guifg=#4494af  guibg=NONE     gui=NONE     ctermfg=67    ctermbg=NONE  cterm=NONE
highlight! SpecialKey           guifg=#4494af  guibg=NONE     gui=NONE     ctermfg=67    ctermbg=NONE  cterm=NONE

highlight! PmenuSbar            guifg=#001226  guibg=#001226  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
highlight! PmenuThumb           guifg=#001226  guibg=#001226  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE

highlight! Comment              guifg=#3a6c7f  guibg=NONE     gui=NONE     ctermfg=60    ctermbg=NONE  cterm=NONE
highlight! Folded               guifg=#3a6c7f  guibg=NONE     gui=NONE     ctermfg=60    ctermbg=NONE  cterm=NONE

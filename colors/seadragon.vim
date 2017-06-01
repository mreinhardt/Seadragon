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
"     Foreground    #b7d7e4             |      Selection     #9eee00             |
"     Background    #001226             |      Selected Text #001226             |
"     Bold          #d7f8ff             |                                        |
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
"   Green      #009e4e   2       29     |   brGreen     #00ee76   10      48     |
"   Yellow     #6c9e00   3       64     |   brYellow    #9eee00   11      154    |
"   Blue       #00309e   4       25     |   brBlue      #0044e4   12      27     |
"   Magenta    #3a0876   5       55     |   brMagenta   #5f12bb   13      57     |
"   Cyan       #5fafd7   6       74     |   brCyan      #76d7ff   14      117    |
"   White      #b7d7e4   7       189    |   brWhite     #d7f8ff   15      195    |
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

let s:colors = {
  \ "black": {"gui": "#001226", "cterm": "234"},
  \ "red": {"gui": "#9e129e", "cterm": "90"},
  \ "green": {"gui": "#009e4e", "cterm": "29"},
  \ "yellow": {"gui": "#6c9e00", "cterm": "64"},
  \ "blue": {"gui": "#00309e", "cterm": "25"},
  \ "magenta": {"gui": "#3a0876", "cterm": "55"},
  \ "cyan": {"gui": "#5fafd7", "cterm": "74"},
  \ "white": {"gui": "#b7d7e4", "cterm": "189"},
  \ "br_black": {"gui": "#3a6c7f", "cterm": "60"},
  \ "br_red": {"gui": "#e41ce4", "cterm": "201"},
  \ "br_green": {"gui": "#00ee76", "cterm": "48"},
  \ "br_yellow": {"gui": "#9eee00", "cterm": "154"},
  \ "br_blue": {"gui": "#0044e4", "cterm": "27"},
  \ "br_magenta": {"gui": "#5f12bb", "cterm": "57"},
  \ "br_cyan": {"gui": "#76d7ff", "cterm": "117"},
  \ "br_white": {"gui": "#d7f8ff", "cterm": "195"},
  \}

function! s:highlight(group, style)
  execute "highlight" a:group
    \ "guifg=" (has_key(a:style, "fg") ? a:style.fg.gui : "NONE")
    \ "guibg=" (has_key(a:style, "bg") ? a:style.bg.gui : "NONE")
    \ "guisp=" (has_key(a:style, "sp") ? a:style.sp.gui : "NONE")
    \ "gui=" (has_key(a:style, "gui") ? a:style.gui : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
    \ "cterm=" (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

"================================================================================
" SEADRAGON HIGHLIGHTING:
"================================================================================

call s:highlight("IncSearch", {"fg": s:colors.black, "bg": s:colors.green})  " `incsearch` highlighting
call s:highlight("MoreMsg", {"fg": s:colors.green})  " More prompt
call s:highlight("SpecialChar", {"fg": s:colors.green})  " Special character in a constant

call s:highlight("Directory", {"fg": s:colors.blue})  " Directory names
call s:highlight("ModeMsg", {"fg": s:colors.blue})  " `showmode` message (e.g. `-- INSERT --`)

call s:highlight("Noise", {"fg": s:colors.magenta})  " Less important syntax elements (e.g. {, }, ;, etc)

call s:highlight("FoldColumn", {"fg": s:colors.cyan})  " Fold column
call s:highlight("NonText", {"fg": s:colors.cyan})  " `~`, `@` at end of window, `showbreak`, etc
call s:highlight("SpecialKey", {"fg": s:colors.br_black, "bg": s:colors.cyan})  " Text displayed different from actual code (e.g. metas)

call s:highlight("Normal", {"fg": s:colors.white})  " Normal text

call s:highlight("Comment", {"fg": s:colors.br_black})  " Comment
call s:highlight("Folded", {"fg": s:colors.br_black})  " Closed fold
call s:highlight("LineNr", {"fg": s:colors.br_black, "bg": s:colors.black})  " Line numbers
call s:highlight("VertSplit", {"fg": s:colors.br_black, "bg": s:colors.black})  " Vertical split

call s:highlight("Type", {"fg": s:colors.br_red})  " Variable type (e.g. int, long, char, etc)
call s:highlight("Error", {"fg": s:colors.br_red})  " Any erroneous construct
call s:highlight("ErrorMsg", {"fg": s:colors.br_red})  " Error messages
call s:highlight("Exception", {"fg": s:colors.br_red})  " try, catch, throw, etc
call s:highlight("Statement", {"fg": s:colors.br_red})  " Any statement

call s:highlight("Visual", {"fg": s:colors.black, "bg": s:colors.br_green})  " Visual selection
call s:highlight("Constant", {"fg": s:colors.br_green})  " Any constant
call s:highlight("String", {"fg": s:colors.br_green})  " Any string constant

call s:highlight("Quote", {"fg": s:colors.br_yellow})
call s:highlight("Operator", {"fg": s:colors.br_yellow})  " +, *, etc
call s:highlight("SpecialComment", {"fg": s:colors.br_yellow, "bg": s:colors.black})  " Special elements within comments
call s:highlight("Symbol", {"fg": s:colors.br_yellow})
call s:highlight("Todo", {"fg": s:colors.br_black, "bg": s:colors.br_yellow}) " TODO comments
call s:highlight("WarningMsg", {"fg": s:colors.br_yellow})  " Warning messages

call s:highlight("PreProc", {"fg": s:colors.br_blue})  " Generic preprocessor
call s:highlight("Title", {"fg": s:colors.br_blue})  " Titles for output from `:set all`, `:autocmd`, etc

call s:highlight("Special", {"fg": s:colors.br_magenta})  " Any special symbol

call s:highlight("Function", {"fg": s:colors.br_cyan})  " Function name
call s:highlight("Identifier", {"fg": s:colors.br_cyan})  " Variable name
call s:highlight("MatchParen", {"fg": s:colors.br_black, "bg": s:colors.br_cyan})  " Matched parenthesis
call s:highlight("Question", {"fg": s:colors.br_cyan})  " Enter prompt and yes/no questions
call s:highlight("Search", {"fg": s:colors.br_black, "bg": s:colors.br_cyan})  " Search highlighting
call s:highlight("SignColumn", {"fg": s:colors.br_cyan})  " Column where signs are displayed
call s:highlight("Underlined", {"fg": s:colors.br_cyan, "gui": "underline", "cterm": "underline"})  " Text that stands out, HTML links
call s:highlight("WildMenu", {"fg": s:colors.br_black, "bg": s:colors.br_cyan})  " Current match in `wildmenu`

call s:highlight("VimCommentTitle", {"fg": s:colors.br_white, "bg": s:colors.black})  " Title elemnts within comments

" Cursor
call s:highlight("ColorColumn", {"bg": s:colors.black})  " `colorcolumn`
call s:highlight("CursorColumn", {"bg": s:colors.black})  " Column cursor is on when `cursorcolumn` is set
call s:highlight("CursorLine", {"bg": s:colors.black})  " Line the current cursor is on
call s:highlight("CursorLineNr", {"bg": s:colors.br_black})  " Line number the current cursor is on

" Diff
call s:highlight("DiffAdd", {"bg": s:colors.green})  " Added line
call s:highlight("DiffChange", {"bg": s:colors.cyan})  " Changed line
call s:highlight("DiffDelete", {"bg": s:colors.red})  " Deleted line
call s:highlight("DiffText", {"fg": s:colors.cyan, "bg": s:colors.br_black})  " Changed text within a changed line

" HTML
call s:highlight("htmlArg", {"fg": s:colors.br_magenta})
call s:highlight("htmlItalic", {"fg": s:colors.br_blue})

" netrw
call s:highlight("netrwExe", {"fg": s:colors.br_blue})
call s:highlight("netrwList", {"fg": s:colors.br_magenta})

" Popup menu
call s:highlight("Pmenu", {"fg": s:colors.br_black, "bg": s:colors.black})  " Normal item
call s:highlight("PmenuSbar", {"fg": s:colors.black, "bg": s:colors.br_black})  " Scrollbar
call s:highlight("PmenuSel", {"fg": s:colors.br_cyan, "bg": s:colors.black})  " Selected item
call s:highlight("PmenuThumb", {"fg": s:colors.white, "bg": s:colors.br_black})  " Thumb of scrollbar

" Spellchecker
call s:highlight("SpellBad", {"fg": s:colors.red, "gui": "undercurl", "cterm": "undercurl"})  " Unrecognized word
call s:highlight("SpellCap", {"fg": s:colors.cyan, "gui": "undercurl", "cterm": "undercurl"})  " Word that should start with a capital
call s:highlight("SpellLocal", {"fg": s:colors.green, "gui": "undercurl", "cterm": "undercurl"})  " Recognized word, used in other region
call s:highlight("SpellRare", {"fg": s:colors.yellow, "gui": "undercurl", "cterm": "undercurl"})  " Recognized word, rarely used

" StatusLine
call s:highlight("StatusLine", {"fg": s:colors.br_white})  " Current window status line
call s:highlight("StatusLineNC", {"fg": s:colors.br_black})  " Non-current window status line

" Tab
call s:highlight("TabLine", {"fg": s:colors.br_black, "bg": s:colors.black})  " Tab pages line not active page label
call s:highlight("TabLineFill", {"bg": s:colors.black})  " Tab pages line where there are no labels
call s:highlight("TabLineSel", {"fg": s:colors.white, "bg": s:colors.black})  " Tab pages line active page label

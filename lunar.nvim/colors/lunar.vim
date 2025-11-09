" Eva Plus Darker Bold colorscheme for Vim/Neovim
" Maintainer: Eva Theme
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "eva"

" Color definitions - Eva Plus Darker Bold theme
let background = "#181c1f"
let foreground = "#e1e4e8"
let cursor     = "#c8e1ff"

" Eva Plus color palette
let black      = "#181c1f"    " background
let red        = "#ea4a5a"    " red (errors, deletions)
let green      = "#7bc275"    " green (strings, additions) - lighter pastel
let yellow     = "#ffdf5d"    " yellow (warnings, types)
let blue       = "#79b8ff"    " blue (keywords, info)
let magenta    = "#f9826c"    " magenta/orange (constants, highlights)
let cyan       = "#79b8ff"    " cyan (special)
let white      = "#e1e4e8"    " foreground
let br_black   = "#6a737d"    " bright black (comments)
let br_red     = "#ea4a5a"    " bright red
let br_green   = "#8dd88a"    " bright green - lighter pastel
let br_yellow  = "#ffdf5d"    " bright yellow
let br_blue    = "#79b8ff"    " bright blue
let br_magenta = "#f9826c"    " bright magenta/orange
let br_cyan    = "#79b8ff"    " bright cyan
let br_white   = "#e1e4e8"    " bright white

" Additional Eva Plus colors
let orange     = "#f9826c"    " orange accent
let blue_active = "#598def"   " active blue
let border     = "#1b1f23"    " borders
let selection  = "#3392ff"    " selection
let comment    = "#6a737d"    " comments

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = black
  let g:terminal_color_1 = red
  let g:terminal_color_2 = green
  let g:terminal_color_3 = yellow
  let g:terminal_color_4 = blue
  let g:terminal_color_5 = magenta
  let g:terminal_color_6 = cyan
  let g:terminal_color_7 = white
  let g:terminal_color_8 = br_black
  let g:terminal_color_9 = br_red
  let g:terminal_color_10 = br_green
  let g:terminal_color_11 = br_yellow
  let g:terminal_color_12 = br_blue
  let g:terminal_color_13 = br_magenta
  let g:terminal_color_14 = br_cyan
  let g:terminal_color_15 = br_white
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ black, red, green, yellow,
    \ blue, magenta, cyan, white,
    \ br_black, br_red, br_green, br_yellow,
    \ br_blue, br_magenta, br_cyan, br_white
  \ ]
endif

" Basic highlight groups
exe "hi Normal guifg=" . foreground . " guibg=" . background . " ctermfg=7 ctermbg=0"
exe "hi Cursor guifg=" . background . " guibg=" . cursor . " ctermfg=0 ctermbg=7"
exe "hi CursorLine guibg=#2b3036 ctermbg=8"
exe "hi CursorColumn guibg=#2b3036 ctermbg=8"
exe "hi LineNr guifg=#444d56 ctermfg=8"
exe "hi CursorLineNr guifg=" . white . " ctermfg=7"

" Syntax highlighting - Eva Plus style
exe "hi Comment guifg=" . comment . " gui=italic ctermfg=8 cterm=italic"
exe "hi String guifg=" . green . " ctermfg=2"
exe "hi Character guifg=" . green . " ctermfg=10"
exe "hi Number guifg=" . cyan . " ctermfg=6"
exe "hi Float guifg=" . cyan . " ctermfg=6"
exe "hi Boolean guifg=" . magenta . " ctermfg=1"
exe "hi Constant guifg=" . magenta . " ctermfg=5"
exe "hi Identifier guifg=" . white . " ctermfg=7"
exe "hi Function guifg=" . blue . " gui=bold ctermfg=1 cterm=bold"
exe "hi Statement guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Conditional guifg=" . blue . " ctermfg=4"
exe "hi Repeat guifg=" . blue . " ctermfg=4"
exe "hi Label guifg=" . blue . " ctermfg=4"
exe "hi Operator guifg=" . white . " ctermfg=7"
exe "hi Keyword guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Exception guifg=" . red . " ctermfg=1"
exe "hi PreProc guifg=" . magenta . " ctermfg=13"
exe "hi Include guifg=" . magenta . " ctermfg=13"
exe "hi Define guifg=" . magenta . " ctermfg=13"
exe "hi Macro guifg=" . magenta . " ctermfg=13"
exe "hi PreCondit guifg=" . magenta . " ctermfg=13"
exe "hi Type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi StorageClass guifg=" . yellow . " ctermfg=3"
exe "hi Structure guifg=" . yellow . " ctermfg=3"
exe "hi Typedef guifg=" . yellow . " ctermfg=3"
exe "hi Special guifg=" . cyan . " ctermfg=6"
exe "hi SpecialChar guifg=" . cyan . " ctermfg=14"
exe "hi Tag guifg=" . red . " ctermfg=1"
exe "hi Delimiter guifg=" . white . " ctermfg=7"
exe "hi SpecialComment guifg=" . comment . " ctermfg=11"
exe "hi Debug guifg=" . red . " ctermfg=9"

" Additional syntax highlighting
exe "hi Class guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi Variable guifg=" . white . " ctermfg=7"
exe "hi Property guifg=" . cyan . " ctermfg=6"
exe "hi Method guifg=" . red . " ctermfg=1"

" UI elements
exe "hi Visual guibg=#3392ff44 ctermbg=8"
exe "hi Search guifg=" . background . " guibg=" . yellow . " gui=bold ctermfg=0 ctermbg=3 cterm=bold"
exe "hi IncSearch guifg=" . background . " guibg=" . yellow . " gui=bold ctermfg=0 ctermbg=11 cterm=bold"
exe "hi StatusLine guifg=" . white . " guibg=#21262b gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi StatusLineNC guifg=" . comment . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi VertSplit guifg=" . border . " ctermfg=8"
exe "hi Pmenu guifg=" . white . " guibg=#2f363d ctermfg=7 ctermbg=8"
exe "hi PmenuSel guifg=" . white . " guibg=#044289 gui=bold ctermfg=0 ctermbg=4 cterm=bold"
exe "hi PmenuSbar guibg=#2f363d ctermbg=8"
exe "hi PmenuThumb guibg=" . comment . " ctermbg=7"
exe "hi TabLine guifg=" . comment . " guibg=#161a1d ctermfg=8 ctermbg=0"
exe "hi TabLineFill guibg=#161a1d ctermbg=0"
exe "hi TabLineSel guifg=" . white . " guibg=" . background . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"

" Diff highlighting - Eva Plus style
exe "hi DiffAdd guifg=" . green . " guibg=#34d05830 gui=bold ctermfg=2 ctermbg=0 cterm=bold"
exe "hi DiffChange guifg=" . yellow . " guibg=" . background . " ctermfg=3 ctermbg=0"
exe "hi DiffDelete guifg=" . red . " guibg=#d73a4930 gui=bold ctermfg=1 ctermbg=0 cterm=bold"
exe "hi DiffText guifg=" . yellow . " guibg=" . background . " gui=bold ctermfg=11 ctermbg=0 cterm=bold"

" Git gutter
exe "hi GitGutterAdd guifg=" . green . " ctermfg=2"
exe "hi GitGutterChange guifg=" . blue . " ctermfg=3"
exe "hi GitGutterDelete guifg=" . red . " ctermfg=1"
exe "hi GitGutterChangeDelete guifg=" . magenta . " ctermfg=5"

" Error and warning
exe "hi Error guifg=" . red . " guibg=" . background . " gui=bold ctermfg=9 ctermbg=0 cterm=bold"
exe "hi Warning guifg=" . yellow . " guibg=" . background . " gui=bold ctermfg=11 ctermbg=0 cterm=bold"
exe "hi ErrorMsg guifg=" . red . " gui=bold ctermfg=9 cterm=bold"
exe "hi WarningMsg guifg=" . yellow . " gui=bold ctermfg=11 cterm=bold"
exe "hi Question guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi MoreMsg guifg=" . green . " gui=bold ctermfg=2 cterm=bold"

" Folding
exe "hi Folded guifg=" . comment . " guibg=" . background . " gui=italic ctermfg=8 ctermbg=0 cterm=italic"
exe "hi FoldColumn guifg=" . comment . " guibg=" . background . " ctermfg=8 ctermbg=0"

" Spelling
exe "hi SpellBad guisp=" . red . " gui=undercurl ctermfg=1 cterm=underline"
exe "hi SpellCap guisp=" . blue . " gui=undercurl ctermfg=4 cterm=underline"
exe "hi SpellLocal guisp=" . cyan . " gui=undercurl ctermfg=6 cterm=underline"
exe "hi SpellRare guisp=" . magenta . " gui=undercurl ctermfg=5 cterm=underline"

" File explorer and tree colors
exe "hi Directory guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi NvimTreeFolderName guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeFolderIcon guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeOpenedFolderName guifg=" . blue . " gui=bold ctermfg=12 cterm=bold"
exe "hi NvimTreeFileName guifg=" . white . " ctermfg=7"
exe "hi NvimTreeExecFile guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi NvimTreeSpecialFile guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi NvimTreeImageFile guifg=" . cyan . " ctermfg=6"
exe "hi NvimTreeMarkdownFile guifg=" . yellow . " ctermfg=1"
exe "hi NvimTreeIndentMarker guifg=" . comment . " ctermfg=8"

" Neo-tree colors
exe "hi NeoTreeDirectoryName guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeDirectoryIcon guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeFileName guifg=" . white . " ctermfg=7"
exe "hi NeoTreeFileIcon guifg=" . cyan . " ctermfg=6"
exe "hi NeoTreeModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitAdded guifg=" . green . " ctermfg=2"
exe "hi NeoTreeGitDeleted guifg=" . red . " ctermfg=1"
exe "hi NeoTreeGitModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitUntracked guifg=" . br_black . " ctermfg=8"

" Telescope colors
exe "hi TelescopeSelection guifg=" . white . " guibg=#21262b gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi TelescopeSelectionCaret guifg=" . magenta . " gui=bold ctermfg=1 cterm=bold"
exe "hi TelescopeMultiSelection guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopeNormal guifg=" . white . " ctermfg=7"
exe "hi TelescopeBorder guifg=" . border . " ctermfg=8"
exe "hi TelescopePromptBorder guifg=" . blue . " ctermfg=4"
exe "hi TelescopeResultsBorder guifg=" . border . " ctermfg=8"
exe "hi TelescopePreviewBorder guifg=" . border . " ctermfg=8"
exe "hi TelescopeTitle guifg=" . white . " gui=bold ctermfg=7 cterm=bold"
exe "hi TelescopePromptTitle guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi TelescopeResultsTitle guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopePreviewTitle guifg=" . cyan . " gui=bold ctermfg=6 cterm=bold"

" LSP and diagnostic colors
exe "hi DiagnosticError guifg=" . red . " ctermfg=1"
exe "hi DiagnosticWarn guifg=" . yellow . " ctermfg=3"
exe "hi DiagnosticInfo guifg=" . blue . " ctermfg=4"
exe "hi DiagnosticHint guifg=" . comment . " ctermfg=8"
exe "hi DiagnosticUnderlineError gui=undercurl guisp=" . red . " cterm=underline"
exe "hi DiagnosticUnderlineWarn gui=undercurl guisp=" . yellow . " cterm=underline"
exe "hi DiagnosticUnderlineInfo gui=undercurl guisp=" . blue . " cterm=underline"
exe "hi DiagnosticUnderlineHint gui=undercurl guisp=" . comment . " cterm=underline"

" LSP semantic highlighting
exe "hi @variable guifg=" . white . " ctermfg=7"
exe "hi @variable.builtin guifg=" . magenta . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.parameter guifg=" . white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @constant guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi @constant.builtin guifg=" . magenta . " gui=bold,italic ctermfg=5 cterm=bold,italic"
exe "hi @constant.macro guifg=" . magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @string guifg=" . green . " ctermfg=2"
exe "hi @string.escape guifg=" . green . " gui=bold ctermfg=10 cterm=bold"
exe "hi @string.special guifg=" . cyan . " ctermfg=6"
exe "hi @character guifg=" . green . " ctermfg=10"
exe "hi @number guifg=" . cyan . " ctermfg=6"
exe "hi @boolean guifg=" . magenta . " gui=bold ctermfg=1 cterm=bold"
exe "hi @float guifg=" . cyan . " ctermfg=6"
exe "hi @function guifg=" . blue . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.builtin guifg=" . blue . " gui=bold,italic ctermfg=1 cterm=bold,italic"
exe "hi @function.macro guifg=" . blue . " gui=bold ctermfg=9 cterm=bold"
exe "hi @method guifg=" . blue . " ctermfg=1"
exe "hi @constructor guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @parameter guifg=" . white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @keyword guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi @keyword.function guifg=" . blue . " gui=italic ctermfg=4 cterm=italic"
exe "hi @keyword.operator guifg=" . blue . " ctermfg=4"
exe "hi @keyword.return guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi @conditional guifg=" . blue . " ctermfg=4"
exe "hi @repeat guifg=" . blue . " ctermfg=4"
exe "hi @label guifg=" . blue . " ctermfg=4"
exe "hi @operator guifg=" . white . " ctermfg=7"
exe "hi @exception guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @type.builtin guifg=" . yellow . " gui=bold,italic ctermfg=3 cterm=bold,italic"
exe "hi @type.definition guifg=" . yellow . " ctermfg=3"
exe "hi @storageclass guifg=" . yellow . " ctermfg=3"
exe "hi @structure guifg=" . yellow . " ctermfg=3"
exe "hi @namespace guifg=" . yellow . " gui=italic ctermfg=3 cterm=italic"
exe "hi @include guifg=" . magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @preproc guifg=" . magenta . " ctermfg=13"
exe "hi @debug guifg=" . red . " ctermfg=9"
exe "hi @tag guifg=" . red . " ctermfg=1"
exe "hi @tag.attribute guifg=" . cyan . " ctermfg=6"
exe "hi @tag.delimiter guifg=" . white . " ctermfg=7"
exe "hi @comment guifg=" . comment . " gui=italic ctermfg=8 cterm=italic"
exe "hi @comment.documentation guifg=" . comment . " gui=italic ctermfg=11 cterm=italic"

" Treesitter context
exe "hi TreesitterContext guibg=#2b3036 ctermbg=8"
exe "hi TreesitterContextLineNumber guifg=" . white . " gui=bold ctermfg=7 cterm=bold"
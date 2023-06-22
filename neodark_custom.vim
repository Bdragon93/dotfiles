highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'neodark_custom'

" if g:neodark#background == ''
  let s:base1 = ['#1F2F38', 236]
  let s:base2 = ['#263A45', 237]
  let s:base3 = ['#475C69', 59]
  let s:base4 = ['#658595', 245]
  let s:base5 = ['#AABBC4', 250]
" else
  " let bases = s:generate_base_colors(g:neodark#background)
  " let s:base1 = [bases[0], 236]
  " let s:base2 = [bases[1], 237]
  " let s:base3 = [bases[2], 59]
  " let s:base4 = [bases[3], 245]
  " let s:base5 = [bases[4], 250]
" endif

let s:red        = ['#DC657D', 168]
let s:green      = ['#84B97C', 108]
let s:yellow     = ['#F2CE00', 179]
let s:blue       = ['#61afef', 74]
let s:purple     = ['#B888E2', 140]
let s:orange     = ['#E18254', 173]
let s:pink       = ['#E69CA0', 181]
let s:teal       = ['#4BB1A7', 73]
let s:beige      = ['#C7C18B', 180]
let s:light_blue = ['#72C7D1', 80]
let s:brown      = ['#AE8785', 138]

" if g:neodark#use_custom_terminal_theme == 1
  " let s:base1[1] = 0
  " let s:base2[1] = 8
  " let s:base3[1] = 13
  " let s:base4[1] = 7
  " let s:base5[1] = 15

  " let s:red[1]        = 1
  " let s:green[1]      = 2
  " let s:yellow[1]     = 3
  " let s:blue[1]       = 4
  " let s:purple[1]     = 5
  " let s:orange[1]     = 6
  " let s:pink[1]       = 9
  " let s:teal[1]       = 10
  " let s:beige[1]      = 11
  " let s:light_blue[1] = 12
  " let s:brown[1]      = 14
" endif

" neovim terminal colors
" if has('nvim')
  let g:terminal_color_0  = s:base1[0]
  let g:terminal_color_1  = s:red[0]
  let g:terminal_color_2  = s:green[0]
  let g:terminal_color_3  = s:yellow[0]
  let g:terminal_color_4  = s:blue[0]
  let g:terminal_color_5  = s:purple[0]
  let g:terminal_color_6  = s:orange[0]
  let g:terminal_color_7  = s:base4[0]
  let g:terminal_color_8  = s:base2[0]
  let g:terminal_color_9  = s:pink[0]
  let g:terminal_color_10 = s:teal[0]
  let g:terminal_color_11 = s:beige[0]
  let g:terminal_color_12 = s:light_blue[0]
  let g:terminal_color_13 = s:base3[0]
  let g:terminal_color_14 = s:brown[0]
  let g:terminal_color_15 = s:base5[0]
" endif

" vim terminal colors
let g:terminal_ansi_colors = [s:base1[0], s:red[0], s:green[0], s:yellow[0],
      \ s:blue[0], s:purple[0], s:orange[0], s:base4[0], s:base2[0], s:pink[0],
      \ s:teal[0], s:beige[0], s:light_blue[0], s:base3[0], s:brown[0], s:base5[0]]

function! s:hi(group, fg, bg, attr)
  let l:attr = a:attr

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr . ' guisp=NONE'
  endif
endfun

" Vim Editor
call s:hi('ColorColumn',               '',           s:base2,    '')
call s:hi('Cursor',                    s:base2,      s:base5,    '')
call s:hi('CursorColumn',              '',           s:base2,    '')
call s:hi('CursorLine',                '',           s:base2,    'none')
call s:hi('CursorLineNr',              s:light_blue, s:base2,    'none')
call s:hi('Directory',                 s:green,       '',         '')
call s:hi('DiffAdd',                   s:green,      s:base2,    'none')
call s:hi('DiffChange',                s:yellow,     s:base2,    'none')
call s:hi('DiffDelete',                s:red,        s:base2,    'none')
call s:hi('DiffText',                  s:blue,       s:base1,    'none')
call s:hi('ErrorMsg',                  s:red,        s:base1,    'bold')
call s:hi('FoldColumn',                s:base4,      s:base2,    '')
call s:hi('Folded',                    s:base3,      s:base1,    '')
call s:hi('IncSearch',                 s:beige,      '',         '')
call s:hi('LineNr',                    s:base3,      '',         '')
call s:hi('MatchParen',                s:light_blue, s:base1,    'underline,bold')
call s:hi('ModeMsg',                   s:green,      '',         '')
call s:hi('MoreMsg',                   s:green,      '',         '')
call s:hi('NonText',                   s:base4,      '',         'none')
call s:hi('Normal',                    s:base5,      '',    'none')
call s:hi('Pmenu',                     s:base5,      s:base3,    '')
call s:hi('PmenuSbar',                 '',           s:base2,    '')
call s:hi('PmenuSel',                  s:base2,      s:green,    '')
call s:hi('PmenuThumb',                '',           s:base4,    '')
call s:hi('Question',                  s:blue,       '',         'none')
call s:hi('Search',                    s:base1,      s:beige,    '')
call s:hi('SignColumn',                s:base5,      s:base1,    '')
call s:hi('SpecialKey',                s:base4,      '',         '')
call s:hi('SpellBad',                  s:red,        s:base1,    'underline')
call s:hi('SpellCap',                  s:brown,      s:base1,    'none')
call s:hi('SpellRare',                 s:brown,      s:base1,    'none')
call s:hi('SpellLocal',                s:brown,      s:base1,    'none')
call s:hi('StatusLine',                s:base5,      s:base3,    'none')
call s:hi('StatusLineNC',              s:base2,      s:base4,    '')
call s:hi('TabLine',                   s:base4,      s:base2,    'none')
call s:hi('TabLineFill',               s:base4,      s:base2,    'none')
call s:hi('TabLineSel',                s:yellow,     s:base3,    'none')
call s:hi('Title',                     s:light_blue,     '',         'none')
call s:hi('Visual',                    s:base5,      s:base3,    '')
call s:hi('WarningMsg',                s:red,        '',         '')
call s:hi('WildMenu',                  s:base2,      s:green,	   '')

" Solid bar for vertical split
" if g:neodark#solid_vertsplit == 1
  " call s:hi('VertSplit',                 s:base2,      s:base2,    'none')
" else
  call s:hi('VertSplit',                 s:base4,      s:base1,    'none')
" endif

" Standard Syntax
call s:hi('Comment',                   s:base3,      '',         'italic')
call s:hi('Constant',                  s:pink,        '',         '')
call s:hi('String',                    s:green,     '',         '')
call s:hi('Character',                 s:brown,     '',         '')
call s:hi('Identifier',                s:orange,       '',         'none')
call s:hi('Function',                  s:beige,       '',         '')
call s:hi('Statement',                 s:purple,      '',         'none')
call s:hi('Keyword',                   s:red,        '',         '')
call s:hi('Exception',                 s:red,        '',         '')
call s:hi('PreProc',                   s:purple,     '',         'italic')
call s:hi('Define',                    s:purple,     '',         'none')
call s:hi('Macro',                     s:purple,     '',         '')
call s:hi('Type',                      s:yellow,     '',         'none')
call s:hi('StorageClass',              s:orange,       '',         'italic')
call s:hi('Special',                   s:purple,       '',         '')
call s:hi('Tag',            				   s:light_blue,           '',         '')
call s:hi('Delimiter',                 s:base5,      '',         '')
call s:hi('Underlined',                s:base5,      '',         'underline')
call s:hi('Error',                     s:red,        '',    'bold')
call s:hi('Todo',                      s:base5,      s:base1,    'bold')
call s:hi('Conceal',                   s:beige,      s:base1,    '')

" Languages {{{
" Vim {{{
hi! link vimFunc     Function
hi! link vimUserFunc Function
call s:hi('vimLet',                    s:yellow,     '',         '')
" }}}
" Shell {{{
hi! link shFunction  Function
" }}}
" Markdown {{{
hi! link markdownHeadingDelimiter  Statement
hi! link markdownLinkDelimiter     Statement
hi! link markdownLinkTextDelimiter Statement
hi! link markdownLinkText          Statement
hi! link markdownURL               Underlined
call s:hi('markdownCode',          s:blue,       '',         '')
call s:hi('markdownListMarker',    s:teal,       '',         '')
call s:hi('markdownHeadingRule',   s:base4,      '',         '')
call s:hi('markdownCodeDelimiter', s:green,      '',         '')
call s:hi('markdownBold',          '',           '',         'bold')
call s:hi('markdownBoldItalic',    '',           '',         'bold,italic')
" }}}
" Pandoc markdown {{{
call s:hi('pandocDelimitedCodeBlock',      s:blue,       '',         '')
call s:hi('pandocDelimitedCodeBlockStart', s:base5,      '',         '')
call s:hi('pandocDelimitedCodeBlockEnd',   s:base5,      '',         '')
call s:hi('pandocAtxHeader',               s:orange,     '',         'bold')
" }}}

" Go {{{
hi! link goFunctionCall Function
hi! link goMethodCall   Function
" }}}

 " HTML highlighting -------------------------------------------------------{{{
  call s:hi('htmlArg',            s:teal,  '', '')
  call s:hi('htmlTagName',        s:teal,  '', '')
  call s:hi('htmlTagN',           s:teal,  '', '')
  call s:hi('htmlSpecialTagName', s:teal,  '', '')
  call s:hi('htmlTag',            s:teal, '', '')
  call s:hi('htmlEndTag',         s:teal, '', '')

  call s:hi('MatchTag',   s:red,         '',  'underline,bold')
  " }}}
 " JavaScript highlighting -------------------------------------------------{{{
  " call s:hi('javaScriptBraces',       s:base5,  '', '')
  call s:hi('javaScriptFunction',     s:purple,   '', '')
  call s:hi('javaScriptIdentifier',   s:purple,   '', '')
  call s:hi('javaScriptNumber',       s:orange,   '', '')
  call s:hi('jsBoolean',       s:orange,   '', '')
  call s:hi('javaScriptRequire',      s:teal,   '', '')
  call s:hi('javaScriptReserved',     s:purple,   '', '')
  " https://github.com/pangloss/vim-javascript
  " call s:hi('jsArrowFunction',        s:purple,   '', '')
  " call s:hi('jsBraces',               s:base5,  '', '')
  " call s:hi('jsClassBraces',          s:base5,  '', '')
  " call s:hi('jsClassKeywords',        s:purple,   '', '')
  call s:hi('jsDocParam',             s:blue,   '', '')
  call s:hi('jsDocTags',              s:purple,   '', '')
  
  call s:hi('jsBraces',           s:base5,  '', '')
  call s:hi('jsFuncBraces',           s:base5,  '', '')
  call s:hi('jsTemplateBraces',       s:base5, '', '')
  


  " call s:hi('jsBrackets',           s:base5,  '', '')
  " call s:hi('jsFuncParens',           s:base5,  '', '')
  " call s:hi('jsClassNoise',           s:base5,  '', '')
  " call s:hi('jsIfElseBraces',           s:base5,  '', '')
  " call s:hi('jsTryCatchBraces',           s:base5,  '', '')
  " call s:hi('jsModuleBraces',           s:base5,  '', '')
  " call s:hi('jsObjectBraces',           s:base5,  '', '')
  " call s:hi('jsObjectSeparator',           s:base5,  '', '')
  " call s:hi('jsFinallyBraces',           s:base5,  '', '')
  " call s:hi('jsRepeatBraces',           s:base5,  '', '')
  " call s:hi('jsSwitchBraces',           s:base5,  '', '')

  " call s:hi('jsFuncParens',           s:base5,  '', '')
  call s:hi('jsFuncCall',             s:beige,   '', 'italic')
  call s:hi('jsFunction',             s:purple,   '', '')
  call s:hi('jsGlobalObjects',        s:orange, '', '')
  call s:hi('jsModuleWords',          s:purple,   '', '')
  call s:hi('jsModules',              s:purple,   '', '')
  " call s:hi('jsNoise',                s:base5,  '', '')
  call s:hi('jsNull',                 s:pink,   '', '')
  call s:hi('jsOperator',             s:purple,   '', '')
  " call s:hi('jsParens',               s:base5,  '', '')
  " call s:hi('jsStorageClass',         s:purple,   '', '')
  call s:hi('jsTemplateVar',          s:green,   '', '')
  call s:hi('jsThis',                 s:red,   '', '')
  call s:hi('jsUndefined',            s:pink,   '', '')
  call s:hi('jsObjectValue',          s:base5,   '', '')
  call s:hi('jsObjectKey',            s:brown,   '', '')
  call s:hi('jsReturn',               s:purple,   '', '')
  " https://github.com/othree/yajs.vim
  call s:hi('javascriptArrowFunc',    s:purple,   '', '')
  " call s:hi('javascriptClassExtends', s:purple,   '', '')
  " call s:hi('javascriptClassKeyword', s:purple,   '', '')
  call s:hi('javascriptDocNotation',  s:purple,   '', '')
  call s:hi('javascriptDocParamName', s:blue,   '', '')
  call s:hi('javascriptDocTags',      s:purple,   '', '')
  call s:hi('javascriptEndColons',    s:base3,  '', '')
  call s:hi('jsExport',       s:purple,   '', 'italic')
  call s:hi('javascriptFuncArg',      s:base1,  '', '')
  call s:hi('javascriptFuncKeyword',  s:purple,   '', '')
  call s:hi('javascriptClassKeyword', s:red,   '', '')        
  call s:hi('javascriptIdentifier',   s:red,   '', '')
  call s:hi('jsImport',       s:purple,   '', 'italic')
  call s:hi('jsFrom',       s:purple,   '', 'italic')
  call s:hi('javascriptObjectLabel',  s:base1,  '', '')
  " call s:hi('javascriptOpSymbol',     s:teal,   '', '')
  call s:hi('javascriptOpSymbols',    s:teal,   '', '')
  call s:hi('javascriptPropertyName', s:green,   '', '')
  call s:hi('javascriptTemplateSB',   s:red, '', '')
  call s:hi('javascriptVariable',     s:purple,   '', '')
  " }}}

 " JSX highlighting -------------------------------------------------{{{
  " call s:hi('jsxElement',     s:teal,   '', '')
  call s:hi('jsxTag',     s:teal,   '', '')
  call s:hi('jsxTagName',     s:teal,   '', '')
  call s:hi('jsxComponentName',     s:yellow,   '', '')
  call s:hi('jsxAttrib',     s:beige,   '', '')
  call s:hi('jsxPunct',     s:base4,   '', '')
  " }}}


 " TypeScript highlighting -------------------------------------------------{{{
  " call s:hi('typescriptBOM',     s:orange,   '', '')
  call s:hi('typescriptBraces',     s:base5,   '', '')
  call s:hi('typescriptCall',     s:pink,   '', '')                
  call s:hi('typescriptClassExtends',     s:orange,   '', '')        
  call s:hi('typescriptClassHeritage',     s:orange,   '', '')       
  " call s:hi('typescriptClassKeyword',     s:red,   '', '')        
  call s:hi('typescriptClassName',     s:red,   '', '')
  call s:hi('typescriptDefault',     s:orange,   '', 'italic')
  call s:hi('typescriptImport',       s:purple,   '', 'italic')
  call s:hi('typescriptExport',     s:purple,   '', 'italic')
  " call s:hi('typescriptLabel',     s:purple,   '', '')
  call s:hi('typescriptPredefinedType',     s:brown,   '', 'italic')
  call s:hi('typescriptIdentifier',     s:orange,   '', '')
  call s:hi('typescriptIdentifierName',     s:orange,   '', '')
  call s:hi('typescriptSource',     s:purple,   '', 'italic')
  call s:hi('typescriptMember',     s:orange,   '', '')
  call s:hi('typescriptObjectKey',     s:orange,   '', '')
  call s:hi('typescriptObjectLabel',     s:brown,   '', '')
  call s:hi('typescriptBoolean',     s:pink,   '', '')
  call s:hi('typescriptFunctionCall',             s:beige,   '', 'italic')
  call s:hi('typescriptDestructureVariable',             s:base5,   '', '')
  
  " call s:hi('typescriptParens',     s:orange,   '', '')
  " call s:hi('typescriptParenExp',     s:orange,   '', '')
  " call s:hi('typescriptProp',     s:orange,   '', '')
  " call s:hi('typescriptReserved',     s:orange,   '', '')
  " call s:hi('typescriptTypeReference',     s:orange,   '', '')
  call s:hi('tsxTag',     s:base4,   '', '')
  call s:hi('tsxTagName',     s:yellow,   '', '')
  call s:hi('tsxIntrinsicTagName',     s:teal,   '', '')
  call s:hi('tsxAttrib',     s:beige,   '', '')
  call s:hi('tsxCloseTag',     s:base4,   '', '')
  call s:hi('tsxCloseString',     s:base4,   '', '')
  " call s:hi('tsxString',     s:base4,   '', '')
  " call s:hi('tsxNameSpace',     s:orange,   '', '')
  " call s:hi('tsxCommentInvalid',     s:teal,   '', '')
  " call s:hi('tsxBlockComment',     s:teal,   '', '')
  " call s:hi('tsxLineComment',     s:teal,   '', '')
  " call s:hi('tsxEscJs',     s:base4,   '', '')
" }}}

  " SCSS highlighting -------------------------------------------------------{{{
  call s:hi('cssProp',     s:teal,   '', '')
  call s:hi('cssTagName',     s:red,   '', '')
  call s:hi('cssClassName',     s:orange,   '', '')
  call s:hi('cssClassNameDot',     s:orange,   '', '')
  call s:hi('cssAtKeyword',     s:yellow,   '', '')
  call s:hi('cssBraces',     s:base5,   '', '')
  
  call s:hi('scssVariable',     s:brown,   '', 'italic')
  call s:hi('scssSelectorName',     s:orange,   '', '')
  call s:hi('scssSelectorChar',     s:orange,   '', '')
  " call s:hi('scssFunctionName',     s:purple,   '', '')
  
  " JSON highlighting -------------------------------------------------------{{{
  call s:hi('jsonCommentError',         s:base4,  '', ''        )
  call s:hi('jsonKeyword',              s:teal,   '', ''        )
  call s:hi('jsonQuote',                s:base3,  '', ''        )
  call s:hi('jsonTrailingCommaError',   s:orange,   '', 'reverse' )
  call s:hi('jsonMissingCommaError',    s:orange,   '', 'reverse' )
  call s:hi('jsonNoQuotesError',        s:orange,   '', 'reverse' )
  call s:hi('jsonNumError',             s:orange,   '', 'reverse' )
  call s:hi('jsonString',               s:pink,   '', ''        )
  call s:hi('jsonBoolean',              s:purple,   '', ''        )
  call s:hi('jsonNumber',               s:red,   '', ''        )
  call s:hi('jsonStringSQError',        s:orange,   '', 'reverse' )
  call s:hi('jsonSemicolonError',       s:orange,   '', 'reverse' )
" }}}
"
" Plugins {{{
" Vim-Fugitive
call s:hi('diffAdded',                 s:green,      '',         '')
call s:hi('diffRemoved',               s:red,        '',         '')

" Vim-Gittgutter
call s:hi('GitGutterAdd',              s:green,      '',         '')
call s:hi('GitGutterChange',           s:yellow,     '',         '')
call s:hi('GitGutterDelete',           s:red,        '',         '')
call s:hi('GitGutterChangeDelete',     s:orange,     '',         '')

" indent-guides
call s:hi('IndentGuidesOdd',           '',           s:base2,    '')
call s:hi('IndentGuidesEven',          '',           s:base2,    '')

" indentLine
let g:indentLine_color_gui = s:base3[0]
let g:indentLine_bgcolor_gui = s:base1[0]
let g:indentLine_color_term = s:base3[1]
let g:indentLine_bgcolor_term = s:base1[1]

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete
" }}}

set background=dark

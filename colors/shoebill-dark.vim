" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif

" Set colorscheme name.
let g:colors_name='shoebill'

if has('nvim')
    lua require("shoebill").style("dark")
end

set background=dark " shoebill is a dark theme

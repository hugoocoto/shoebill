" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif

" Set colorscheme name.
let g:colors_name='shoebill'

" Load theme style independently for Neovim and Vim.
if has('nvim')
    lua require("shoebill").style()
end

set background=dark " shoebill is a dark theme

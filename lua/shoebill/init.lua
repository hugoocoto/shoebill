local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
local bg = "#011627"
local fg = "#c3ccdc"

local black = bg
local white = fg
local red = "#ee6352"
local yellow = "#ee964b"
local green = "#709255"
local blue = "#7ea3cc"
local cyan = "#36494e"
local magenta = "#8d80ad"
local dark_black = "#000000"
local light_black = "#44444"

local M = {}

M.palette = {
        black       = bg,
        white       = fg,
        bg          = bg,
        red         = red,
        yellow      = yellow,
        green       = green,
        blue        = blue,
        cyan        = cyan,
        magenta     = magenta,
        dark_black  = dark_black,
        light_black = light_black,
}

M.style = function()
        -------------------------------------------------------------------------
        -- Custom styling groups
        -------------------------------------------------------------------------

        highlight(0, "CustomVisual", { bg = dark_black })
        highlight(0, "CustomWhite", { fg = fg })
        highlight(0, "CustomComment", { fg = light_black })
        highlight(0, "CustomVisual", { bg = dark_black })
        highlight(0, "CustomKeyword", { fg = magenta })
        highlight(0, "CustomStatement", { fg = magenta })
        highlight(0, "CustomSpecial", { fg = cyan })
        highlight(0, "CustomKeyword", { fg = magenta })
        highlight(0, "CustomOperator", { fg = white })
        highlight(0, "CustomNonText", { fg = cyan })
        highlight(0, "CustomLabel", { fg = green })
        highlight(0, "CustomPreproc", { fg = magenta })
        highlight(0, "CustomException", { fg = magenta })
        highlight(0, "CustomConstant", { fg = red })
        highlight(0, "CustomType", { fg = cyan })
        highlight(0, "CustomIdentifier", { fg = white })
        highlight(0, "CustomString", { fg = green })
        highlight(0, "CustomFunction", { fg = blue })
        highlight(0, "CustomComment", { fg = light_black })

        -------------------------------------------------------------------------
        -- Standard styling
        -------------------------------------------------------------------------


        -- Specify the colors used by the inbuilt terminal
        if g.nightflyTerminalColors then
                g.terminal_color_0 = black
                g.terminal_color_1 = red
                g.terminal_color_2 = green
                g.terminal_color_3 = yellow
                g.terminal_color_4 = blue
                g.terminal_color_5 = magenta
                g.terminal_color_6 = cyan
                g.terminal_color_7 = fg
                g.terminal_color_8 = black
                g.terminal_color_9 = red
                g.terminal_color_10 = green
                g.terminal_color_11 = yellow
                g.terminal_color_12 = blue
                g.terminal_color_13 = magenta
                g.terminal_color_14 = cyan
                g.terminal_color_15 = fg
        end

        -- Background and text
        highlight(0, "Normal", { bg = bg, fg = fg })

        -- Color of mode text, -- INSERT --
        highlight(0, "ModeMsg", { fg = fg })

        -- Comments
        highlight(0, "Comment", { link = "CustomComment" })

        -- Functions
        highlight(0, "Function", { link = "CustomFunction" })

        -- Strings
        highlight(0, "String", { link = "CustomString" })

        -- Booleans
        highlight(0, "Boolean", { link = "CustomConstant" })

        -- Identifiers
        highlight(0, "Identifier", { link = "CustomIdentifier" })

        -- Color of titles
        highlight(0, "Title", { fg = "#FFFFFF" })

        -- const, static
        highlight(0, "StorageClass", { link = "CustomConstant" })

        -- void, intptr_t
        highlight(0, "Type", { link = "CustomType" })

        -- Numbers
        highlight(0, "Constant", { link = "CustomConstant" })

        -- Character constants
        highlight(0, "Character", { link = "CustomConstant" })

        -- Exceptions
        highlight(0, "Exception", { link = "CustomException" })

        -- ifdef/endif
        highlight(0, "PreProc", { link = "CustomPreproc" })

        -- case in switch statement
        highlight(0, "Label", { link = "CustomLabel" })

        -- end-of-line '$', end-of-file '~'
        highlight(0, "NonText", { link = "CustomNonText" })

        -- sizeof
        highlight(0, "Operator", { link = "CustomOperator" })

        -- for, while
        highlight(0, "Repeat", { link = "CustomKeyword" })

        -- Search
        highlight(0, "Search", { bg = green, fg = fg })
        highlight(0, "CurSearch", { bg = blue, fg = bg })
        highlight(0, "IncSearch", { bg = red, fg = bg })

        -- '\n' sequences
        highlight(0, "Special", { link = "CustomSpecial" })

        -- if, else
        highlight(0, "Statement", { link = "CustomStatement" })

        -- struct, union, enum, typedef
        highlight(0, "Structure", { link = "CustomKeyword" })

        -- Status, split and tab lines
        -- todo
        highlight(0, "StatusLine", { bg = blue, fg = fg })
        highlight(0, "StatusLineNC", { bg = blue, fg = blue })
        highlight(0, "StatusLineTerm", { bg = blue, fg = fg })
        highlight(0, "StatusLineTermNC", { bg = blue, fg = blue })
        highlight(0, "Tabline", { bg = blue, fg = blue })
        highlight(0, "TablineSel", { bg = blue, fg = blue })
        highlight(0, "TablineSelSymbol", { bg = blue, fg = green })
        highlight(0, "TablineFill", { bg = storm_blue, fg = blue })
        highlight(0, "VertSplit", { bg = blue, fg = blue })
        highlight(0, "VertSplit", { bg = none, fg = blue })

        -- Visual selection
        highlight(0, "Visual", { link = "CustomVisual" })
        highlight(0, "VisualNOS", { link = "CustomVisual" })
        highlight(0, "VisualNonText", { link = "CustomVisual" })

        -- Errors, warnings and whitespace-eol
        highlight(0, "Error", { bg = bg, fg = red })
        highlight(0, "ErrorMsg", { bg = bg, fg = red })
        highlight(0, "WarningMsg", { bg = bg, fg = yellow })

        -- Auto-text-completion menu
        highlight(0, "Pmenu", { bg = bg, fg = fg })
        highlight(0, "PmenuSel", { bg = dark_black, fg = fg })
        highlight(0, "PmenuSbar", { bg = dark_black, fg = fg })
        highlight(0, "PmenuThumb", { bg = dark_black })
        highlight(0, "WildMenu", { bg = bg, fg = fg })

        -- Spelling errors
        highlight(0, "SpellBad", { bg = none, underline = true, sp = red })
        highlight(0, "SpellCap", { bg = none, underline = true, sp = yellow })
        highlight(0, "SpellRare", { bg = none, underline = true, sp = green })
        highlight(0, "SpellLocal", { bg = none, underline = true, sp = cyan })

        -- Misc
        highlight(0, "Question", { fg = green })
        highlight(0, "MoreMsg", { fg = red })
        highlight(0, "LineNr", { bg = bg, fg = steel_blue })
        highlight(0, "Cursor", { fg = bg, bg = blue })
        highlight(0, "lCursor", { fg = bg, bg = blue })
        highlight(0, "CursorLineNr", { bg = bg, fg = blue })
        highlight(0, "CursorColumn", { bg = bg })
        highlight(0, "CursorLine", { bg = blue })
        highlight(0, "CursorLineSign", { bg = blue })
        highlight(0, "Folded", { bg = blue, fg = yellow })
        highlight(0, "FoldColumn", { bg = blue, fg = yellow })
        highlight(0, "SignColumn", { bg = bg, fg = green })
        highlight(0, "Todo", { bg = blue, fg = yellow })
        highlight(0, "SpecialKey", { bg = bg, fg = blue })
        highlight(0, "MatchParen", { link = "CustomVisual" })
        highlight(0, "Ignore", { fg = red })
        highlight(0, "Underlined", { fg = green })
        highlight(0, "QuickFixLine", { bg = dark_black })
        highlight(0, "Delimiter", { bg = dark_black })
        highlight(0, "qfFileName", { bg = dark_black })
        highlight(0, "qfLineNr", { bg = dark_black })

        -- Color column (after line 80)
        highlight(0, "ColorColumn", { bg = dark_black })

        -- Conceal color
        highlight(0, "Conceal", { bg = none, fg = blue })

        -- nvim -d
        highlight(0, "DiffAdd", { bg = green })
        highlight(0, "DiffChange", { bg = yellow })
        highlight(0, "DiffDelete", { bg = red })
        highlight(0, "DiffText", { bg = cyan })

        -------------------------------------------------------------------------
        -- Neovim standard styling
        -------------------------------------------------------------------------

        highlight(0, "Whitespace", { fg = blue })
        highlight(0, "TermCursor", { bg = fg, fg = bg })
        highlight(0, "NormalFloat", { bg = bg, fg = blue })
        highlight(0, "FloatBorder", { bg = bg, fg = blue })
        highlight(0, "FloatBorder2", { bg = bg, fg = blue })
        highlight(0, "FloatTitle", { bg = blue, fg = fg })
        highlight(0, "WinBar", { bg = blue, fg = fg })
        highlight(0, "WinBarNC", { bg = blue, fg = blue })
        highlight(0, "WinSeparator", { bg = fg, fg = bg })

        -- Neovim check-health
        highlight(0, "healthSuccess", { link = "DiffAdd" })
        highlight(0, "healthHeadingChar", { fg = cyan })
        highlight(0, "helpHeader", { fg = cyan })

        -- Neovim Tree-sitter
        highlight(0, "@attribute", { fg = blue })
        highlight(0, "@comment.error", { fg = red })
        highlight(0, "@comment.note", { fg = blue })
        highlight(0, "@comment.ok", { fg = green })
        highlight(0, "@comment.todo", { link = "Todo" })
        highlight(0, "@comment.warning", { fg = yellow })
        highlight(0, "@constant", { link = "Constant" })
        highlight(0, "@constant.builtin", { link = "CustomKeyword" })
        highlight(0, "@constant.macro", { link = "PreProc" })
        highlight(0, "@diff.delta", { link = "DiffChange" })
        highlight(0, "@diff.minus", { link = "DiffDelete" })
        highlight(0, "@diff.plus", { link = "DiffAdd" })
        highlight(0, "@function.builtin", { link = "Function" })
        highlight(0, "@function.call", { link = "Function" })
        highlight(0, "@function.macro", { link = "PreProc" })
        highlight(0, "@function.method", { link = "Function" })
        highlight(0, "@function.method.call", { link = "Function" })
        highlight(0, "@keyword.conditional", { link = "Conditional" })
        highlight(0, "@keyword.directive", { link = "PreProc" })
        highlight(0, "@keyword.directive.define", { link = "Define" })
        highlight(0, "@keyword.exception", { link = "Exception" })
        highlight(0, "@keyword.import", { link = "Include" })
        highlight(0, "@keyword.operator", { link = "Operator" })
        highlight(0, "@keyword.repeat", { link = "Repeat" })
        highlight(0, "@keyword.storage", { link = "StorageClass" })
        highlight(0, "@markup.environment", { link = "CustomKeyword" })
        highlight(0, "@markup.environment.name", { link = "Identifier" })
        highlight(0, "@markup.heading", { fg = blue })
        highlight(0, "@markup.italic", { italic = true })
        highlight(0, "@markup.link", { fg = cyan })
        highlight(0, "@markup.link.label", { fg = cyan })
        highlight(0, "@markup.link.url", { fg = cyan, underline = true, sp = blue })
        highlight(0, "@markup.list", { bg = dark_black })
        highlight(0, "@markup.list.checked", { fg = light_black })
        highlight(0, "@markup.list.unchecked", { fg = fg })
        highlight(0, "@markup.math", { bg = blue })
        highlight(0, "@markup.quote", { bg = blue })
        highlight(0, "@markup.raw", { link = "String" })
        highlight(0, "@markup.strikethrough", { strikethrough = true })
        highlight(0, "@markup.strong", { bold = true })
        highlight(0, "@markup.underline", { underline = true })
        highlight(0, "@module", { link = "Include" })
        highlight(0, "@module.builtin", { link = "Include" })
        highlight(0, "@none", {})
        highlight(0, "@parameter.builtin", { link = "Identifier" })
        highlight(0, "@property", { link = "Type" })
        highlight(0, "@string.documentation", { link = "Comments" })
        highlight(0, "@string.regexp", { link = "String" })
        highlight(0, "@string.special.path", { link = "String" })
        highlight(0, "@string.special.symbol", { link = "Special" })
        highlight(0, "@string.special.url", { link = "String" })
        highlight(0, "@tag", { link = "Repeat" })
        highlight(0, "@tag.attribute", { link = "Repeat" })
        highlight(0, "@tag.builtin", { link = "Repeat" })
        highlight(0, "@tag.delimiter", { link = "Repeat" })
        highlight(0, "@type.builtin", { link = "Type" })
        highlight(0, "@type.qualifier", { link = "Type" })
        highlight(0, "@variable", { link = "Identifier" })
        highlight(0, "@variable.builtin", { link = "Identifier" })
        highlight(0, "@variable.member", { link = "Identifier" })
        highlight(0, "@variable.parameter", { link = "Identifier" })

        -- Language specific Tree-sitter overrides.
        -- highlight(0, "@attribute.bind.html", { link = "CustomMalibu" })
        -- highlight(0, "@attribute.directive.value.html", { link = "CustomLavender" })
        -- highlight(0, "@attribute.on.html", { link = "CustomEmerald" })
        -- highlight(0, "@attribute.zig", { link = "CustomViolet" })
        -- highlight(0, "@character.special.vim", { link = "CustomBlue" })
        -- highlight(0, "@function.macro.vim", { link = "CustomBlue" })
        -- highlight(0, "@keyword.gitcommit", { link = "CustomBlue" })
        -- highlight(0, "@keyword.import.bash", { link = "@keyword" })
        -- highlight(0, "@keyword.import.rust", { link = "@keyword" })
        -- highlight(0, "@keyword.storage.rust", { link = "CustomViolet" })
        -- highlight(0, "@markup.heading.1.markdown", { link = "CustomLavender" })
        -- highlight(0, "@markup.heading.1.vimdoc", { link = "CustomBlue" })
        -- highlight(0, "@markup.heading.2.markdown", { link = "CustomLavender" })
        -- highlight(0, "@markup.heading.2.vimdoc", { link = "CustomBlue" })
        -- highlight(0, "@markup.heading.3.markdown", { link = "CustomTurquoise" })
        -- highlight(0, "@markup.heading.3.vimdoc", { link = "CustomBlue" })
        -- highlight(0, "@markup.heading.4.markdown", { link = "CustomOrange" })
        -- highlight(0, "@markup.heading.5.markdown", { link = "CustomMalibu" })
        -- highlight(0, "@markup.heading.6.markdown", { link = "CustomViolet" })
        -- highlight(0, "@markup.heading.help", { link = "CustomMalibu" })
        -- highlight(0, "@markup.heading.markdown", { link = "CustomMalibu" })
        -- highlight(0, "@markup.link.gitcommit", { link = "CustomBlue" })
        -- highlight(0, "@markup.link.markdown_inline", {})
        -- highlight(0, "@markup.link.url.gitcommit", { link = "CustomEmerald" })
        -- highlight(0, "@markup.link.url.astro", { link = "CustomViolet" })
        -- highlight(0, "@markup.link.url.html", { link = "CustomViolet" })
        -- highlight(0, "@markup.link.url.svelte", { link = "CustomViolet" })
        -- highlight(0, "@markup.link.url.vue", { link = "CustomViolet" })
        -- highlight(0, "@markup.list.latex", { link = "CustomPurple" })
        -- highlight(0, "@markup.raw.vimdoc", { link = "CustomOrchid" })
        -- highlight(0, "@namespace.latex", { link = "CustomLavender" })
        -- highlight(0, "@punctuation.delimiter.astro", { link = "CustomWatermelon" })
        -- highlight(0, "@punctuation.delimiter.css", { link = "CustomWatermelon" })
        -- highlight(0, "@punctuation.delimiter.rust", { link = "CustomWatermelon" })
        -- highlight(0, "@punctuation.delimiter.scss", { link = "CustomWatermelon" })
        -- highlight(0, "@punctuation.delimiter.yaml", { link = "CustomWatermelon" })
        -- highlight(0, "@string.json", { link = "CustomLime" })
        -- highlight(0, "@tag.javascript", { link = "@type" })
        -- highlight(0, "@tag.jsx", { link = "@type" })
        -- highlight(0, "@tag.tsx", { link = "@type" })
        -- highlight(0, "@tag.typescript", { link = "@type" })
        -- highlight(0, "@variable.builtin.vim", { link = "CustomEmerald" })
        -- highlight(0, "@variable.member.ruby", { link = "CustomTurquoise" })
        -- highlight(0, "@variable.member.yaml", { link = "CustomBlue" })
        -- highlight(0, "@variable.parameter.bash", { link = "CustomTurquoise" })
        -- highlight(0, "@variable.scss", { link = "CustomTurquoise" })
        -- highlight(0, "@variable.vim", { link = "CustomTurquoise" })

        -- Neovim LSP semantic highlights.
        highlight(0, "@lsp.type.boolean", { link = "@boolean" })
        highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
        highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
        highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
        highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
        highlight(0, "@lsp.type.generic", { link = "@variable" })
        highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
        highlight(0, "@lsp.type.macro", {}) -- Use fallback Tree-sitter style for this Semantic Token
        highlight(0, "@lsp.type.magicFunction", { link = "@function" })
        highlight(0, "@lsp.type.namespace", { link = "@namespace" })
        highlight(0, "@lsp.type.operator", {}) -- Use fallback Tree-sitter style for this Semantic Token
        highlight(0, "@lsp.type.parameter", { link = "@parameter" })
        highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
        highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
        highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
        highlight(0, "@lsp.type.unresolvedReference", { underline = true, sp = red })
        highlight(0, "@lsp.type.variable", {}) -- Use fallback Tree-sitter style for this Semantic Token
        highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
        highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
        highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
        highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
        highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
        highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
        highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
        highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
        highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
        highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
        highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
        highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
        highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
        highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })

        -- Language specific LSP semantic overrides.
        highlight(0, "@lsp.type.decorator.rust", { link = "@function.macro" })
        highlight(0, "@lsp.type.namespace.ruby", {})
        highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
        highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

        -- Neovim Diagnostic
        highlight(0, "DiagnosticError", { fg = red })
        highlight(0, "DiagnosticWarn", { fg = yellow })
        highlight(0, "DiagnosticInfo", { fg = yellow })
        highlight(0, "DiagnosticHint", { fg = blue })
        highlight(0, "DiagnosticOk", { fg = green })
        highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
        highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
        highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = yellow })
        highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = blue })
        highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = green })
        highlight(0, "DiagnosticVirtualTextError", { fg = blue })
        highlight(0, "DiagnosticVirtualTextWarn", { fg = blue })
        highlight(0, "DiagnosticVirtualTextInfo", { fg = blue })
        highlight(0, "DiagnosticVirtualTextHint", { fg = blue })
        highlight(0, "DiagnosticVirtualTextOk", { fg = blue })
        highlight(0, "DiagnosticSignError", { fg = red })
        highlight(0, "DiagnosticSignWarn", { fg = yellow })
        highlight(0, "DiagnosticSignInfo", { fg = yellow })
        highlight(0, "DiagnosticSignHint", { fg = blue })
        highlight(0, "DiagnosticSignOk", { fg = green })
        highlight(0, "DiagnosticFloatingError", { fg = red })
        highlight(0, "DiagnosticFloatingWarn", { fg = yellow })
        highlight(0, "DiagnosticFloatingInfo", { fg = yellow })
        highlight(0, "DiagnosticFloatingHint", { fg = blue })
        highlight(0, "DiagnosticFloatingOk", { fg = green })

        -- Neovim LSP
        highlight(0, "LspCodeLens", { fg = blue })
        highlight(0, "LspCodeLensSeparator", { fg = blue })
        highlight(0, "LspInfoBorder", { link = "FloatBorder" })
        highlight(0, "LspInlayHint", { fg = blue })
        highlight(0, "LspReferenceText", { link = "CustomVisual" })
        highlight(0, "LspReferenceRead", { link = "CustomVisual" })
        highlight(0, "LspReferenceWrite", { link = "CustomVisual" })
        highlight(0, "LspSignatureActiveParameter", { bg = blue })

        -------------------------------------------------------------------------
        -- Legacy language styling
        -------------------------------------------------------------------------

        -- CSV
        -- highlight(0, "csvCol0", { link = "CustomRed" })
        -- highlight(0, "csvCol1", { link = "CustomOrange" })
        -- highlight(0, "csvCol2", { link = "CustomYellow" })
        -- highlight(0, "csvCol3", { link = "CustomGreen" })
        -- highlight(0, "csvCol4", { link = "CustomTurquoise" })
        -- highlight(0, "csvCol5", { link = "CustomBlue" })
        -- highlight(0, "csvCol6", { link = "CustomPurple" })
        -- highlight(0, "csvCol7", { link = "CustomViolet" })
        -- highlight(0, "csvCol8", { link = "CustomLavender" })
        --
        -- -- Help
        -- highlight(0, "helpCommand", { link = "CustomOrchid" })
        -- highlight(0, "helpExample", { link = "CustomGreen" })
        -- highlight(0, "helpHeadline", { link = "CustomBlue" })
        -- highlight(0, "helpHyperTextEntry", { link = "CustomTurquoise" })
        -- highlight(0, "helpSectionDelim", { link = "CustomBlue" })
        --
        -- -- LaTeX
        -- highlight(0, "texBeginEndName", { link = "CustomEmerald" })
        -- highlight(0, "texCite", { link = "CustomGreen" })
        -- highlight(0, "texDocType", { link = "CustomWatermelon" })
        -- highlight(0, "texDocTypeArgs", { link = "CustomOrchid" })
        -- highlight(0, "texInputFile", { link = "String" })
        -- highlight(0, "texMathZoneC", { link = "CustomMalibu" })
        -- highlight(0, "texMathZoneX", { link = "CustomMalibu" })
        -- highlight(0, "texRefZone", { link = "CustomGreen" })
        -- highlight(0, "texSection", { link = "CustomLavender" })
        -- highlight(0, "texTypeStyle", { link = "CustomYellow" })
        -- highlight(0, "texZone", { link = "CustomLavender" })
        --
        -- -- Man
        -- highlight(0, "manHeader", { link = "CustomEmerald" })
        -- highlight(0, "manOptionDesc", { link = "CustomOrchid" })
        -- highlight(0, "manReference", { link = "CustomGreen" })
        -- highlight(0, "manSectionHeading", { link = "CustomBlue" })
        -- highlight(0, "manSubHeading", { link = "CustomTurquoise" })
        --
        -- -- Markdown, 'tpope/vim-markdown' plugin
        -- highlight(0, "markdownBold", { link = "CustomPeach" })
        -- highlight(0, "markdownCode", { link = "CustomTan" })
        -- highlight(0, "markdownCodeDelimiter", { link = "CustomTan" })
        -- highlight(0, "markdownError", { link = "NormalNC" })
        -- highlight(0, "markdownH1", { link = "CustomEmerald" })
        -- highlight(0, "markdownH2", { link = "CustomBlue" })
        -- highlight(0, "markdownH3", { link = "CustomTurquoise" })
        -- highlight(0, "markdownHeadingRule", { link = "CustomWatermelon" })
        -- if g.nightflyItalics then
        --         highlight(0, "markdownItalic", { fg = orchid, italic = true })
        -- else
        --         highlight(0, "markdownItalic", { link = "CustomOrchid" })
        -- end
        -- highlight(0, "markdownUrl", { link = "CustomPurple" })
        --
        -- -- Markdown, 'plasticboy/vim-markdown' plugin
        -- highlight(0, "mkdDelimiter", { link = "CustomWhite" })
        -- highlight(0, "mkdLineBreak", { link = "NormalNC" })
        -- highlight(0, "mkdListItem", { link = "CustomBlue" })
        -- highlight(0, "mkdURL", { link = "CustomPurple" })
        --
        -- -- Shell
        -- highlight(0, "shAlias", { link = "CustomTurquoise" })
        -- highlight(0, "shCommandSub", { link = "CustomWhite" })
        -- highlight(0, "shCtrlSeq", { link = "CustomTan" })
        -- highlight(0, "shLoop", { link = "CustomViolet" })
        -- highlight(0, "shRange", { link = "CustomWhite" })
        -- highlight(0, "shSetList", { link = "CustomTurquoise" })
        -- highlight(0, "shShellVariables", { link = "CustomTurquoise" })
        -- highlight(0, "shVariable", { link = "CustomTurquoise" })
        --
        -- -- XML
        -- highlight(0, "xmlAttrib", { link = "CustomLime" })
        -- highlight(0, "xmlEndTag", { link = "CustomBlue" })
        -- highlight(0, "xmlTag", { link = "CustomGreen" })
        -- highlight(0, "xmlTagName", { link = "CustomBlue" })

        -------------------------------------------------------------------------
        -- Neovim plugin styling
        -------------------------------------------------------------------------

        -- -- arrow.nvim
        -- highlight(0, "ArrowCurrentFile", { link = "CustomEmerald" })
        --
        -- -- Barbar plugin
        -- highlight(0, "BufferCurrent", { link = "CustomWhiteLineActive" })
        -- highlight(0, "BufferCurrentIndex", { link = "CustomWhiteLineActive" })
        -- highlight(0, "BufferCurrentMod", { link = "CustomTanLineActive" })
        -- highlight(0, "BufferCurrentSign", { link = "CustomBlueLineActive" })
        -- highlight(0, "BufferCurrentERROR", { link = "CustomRedLineActive" })
        -- highlight(0, "BufferCurrentWARN", { link = "CustomYellowLineActive" })
        -- highlight(0, "BufferCurrentINFO", { link = "CustomBlueLineActive" })
        -- highlight(0, "BufferCurrentHINT", { link = "CustomTurquoiseLineActive" })
        -- highlight(0, "BufferTabpages", { bg = blue, fg = blue })
        -- highlight(0, "BufferVisible", { link = "CustomGreyBlueRow" })
        -- highlight(0, "BufferVisibleIndex", { link = "CustomGreyBlueRow" })
        -- highlight(0, "BufferVisibleMod", { link = "CustomTanLine" })
        -- highlight(0, "BufferVisibleSign", { link = "CustomGreyBlueRow" })
        -- highlight(0, "BufferVisibleERROR", { link = "GitSignsDeleteCul" })
        -- highlight(0, "BufferVisibleWARN", { link = "CustomYellowRow" })
        -- highlight(0, "BufferVisibleINFO", { link = "CustomMalibuRow" })
        -- highlight(0, "BufferVisibleHINT", { link = "CustomTurquoiseRow" })
        -- highlight(0, "BufferInactive", { bg = blue, fg = grey_blue })
        -- highlight(0, "BufferInactiveMod", { bg = blue, fg = tan })
        -- highlight(0, "BufferInactiveSign", { bg = blue, fg = blue })
        -- highlight(0, "BufferInactiveERROR", { bg = blue, fg = red })
        -- highlight(0, "BufferInactiveWARN", { bg = blue, fg = yellow })
        -- highlight(0, "BufferInactiveINFO", { link = "BufferTabpages" })
        -- highlight(0, "BufferInactiveHINT", { bg = blue, fg = turquoise })
        -- highlight(0, "BufferAlternate", { link = "BufferCurrent" })
        -- highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
        -- highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
        -- highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
        -- highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
        -- highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
        -- highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
        -- highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })
        --
        -- blink.cmp
        highlight(0, "BlinkCmpDocCursorLine", { link = "CustomCurrentLine" })
        highlight(0, "BlinkCmpKind", { link = "CustomWhite" })
        highlight(0, "BlinkCmpKindClass", { link = "CustomEmerald" })
        highlight(0, "BlinkCmpKindColor", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindConstant", { link = "CustomPurple" })
        highlight(0, "BlinkCmpKindConstructor", { link = "CustomBlue" })
        highlight(0, "BlinkCmpKindEnum", { link = "CustomViolet" })
        highlight(0, "BlinkCmpKindEnumMember", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindEvent", { link = "CustomViolet" })
        highlight(0, "BlinkCmpKindField", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindFile", { link = "CustomBlue" })
        highlight(0, "BlinkCmpKindFolder", { link = "CustomBlue" })
        highlight(0, "BlinkCmpKindFunction", { link = "CustomBlue" })
        highlight(0, "BlinkCmpKindInterface", { link = "CustomEmerald" })
        highlight(0, "BlinkCmpKindKeyword", { link = "CustomViolet" })
        highlight(0, "BlinkCmpKindMethod", { link = "CustomBlue" })
        highlight(0, "BlinkCmpKindModule", { link = "CustomEmerald" })
        highlight(0, "BlinkCmpKindOperator", { link = "CustomViolet" })
        highlight(0, "BlinkCmpKindProperty", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindReference", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindSnippet", { link = "CustomGreen" })
        highlight(0, "BlinkCmpKindStruct", { link = "CustomEmerald" })
        highlight(0, "BlinkCmpKindText", { link = "CustomAshBlue" })
        highlight(0, "BlinkCmpKindTypeParameter", { link = "CustomEmerald" })
        highlight(0, "BlinkCmpKindUnit", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindValue", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpKindVariable", { link = "CustomTurquoise" })
        highlight(0, "BlinkCmpLabel", { link = "CustomWhite" })
        highlight(0, "BlinkCmpLabelMatch", { link = "CmpItemAbbrMatch" })
        highlight(0, "BlinkCmpMenu", { link = "NormalFloat" })
        highlight(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
        highlight(0, "BlinkCmpMenuSelection", { link = "CustomVisual" })

        -- -- Bufferline plugin
        -- highlight(0, "BufferLineTabSelected", { fg = blue })
        -- highlight(0, "BufferLineIndicatorSelected", { fg = blue })
        --
        -- -- Dashboard plugin
        -- highlight(0, "DashboardCenter", { link = "CustomViolet" })
        -- highlight(0, "DashboardFooter", { link = "CustomOrange" })
        -- highlight(0, "DashboardHeader", { link = "CustomBlue" })
        -- highlight(0, "DashboardShortCut", { link = "CustomTurquoise" })
        --
        -- -- fzf-lua
        -- highlight(0, "FzfLuaBorder", { link = "FloatBorder" })
        -- highlight(0, "FzfLuaBufFlagAlt", { link = "CustomTurquoise" })
        -- highlight(0, "FzfLuaBufFlagCur", { link = "CustomOrange" })
        -- highlight(0, "FzfLuaBufNr", { link = "CustomTan" })
        -- highlight(0, "FzfLuaFzfHeader", { link = "CustomBlue" })
        -- highlight(0, "FzfLuaFzfInfo", { link = "String" })
        -- highlight(0, "FzfLuaFzfMarker", { link = "CustomOrange" })
        -- highlight(0, "FzfLuaFzfPointer", { link = "CustomWatermelon" })
        -- highlight(0, "FzfLuaFzfPrompt", { link = "CustomBlue" })
        -- highlight(0, "FzfLuaFzfSpinner", { link = "CustomEmerald" })
        -- highlight(0, "FzfLuaHeaderBind", { link = "CustomGreen" })
        -- highlight(0, "FzfLuaHeaderText", { link = "CustomTurquoise" })
        -- highlight(0, "FzfLuaLiveSym", { link = "CustomGreen" })
        -- highlight(0, "FzfLuaPathColNr", { link = "CustomMalibu" })
        -- highlight(0, "FzfLuaTabMarker", { link = "CustomTan" })
        -- highlight(0, "FzfLuaTabTitle", { link = "CustomMalibu" })
        -- highlight(0, "FzfLuaTitle", { link = "FloatTitle" })
        --
        -- -- gitsigns.nvim plugin
        -- --   sign column
        -- highlight(0, "GitSignsAdd", { link = "CustomEmerald" })
        -- highlight(0, "GitSignsAddCul", { link = "CustomEmeraldRow" })
        -- highlight(0, "GitSignsChange", { link = "CustomMalibu" })
        -- highlight(0, "GitSignsChangeCul", { link = "CustomMalibuRow" })
        -- highlight(0, "GitSignsChangedelete", { link = "CustomOrange" })
        -- highlight(0, "GitSignsChangedeleteCul", { bg = dark_blue, fg = orange })
        -- highlight(0, "GitSignsDelete", { link = "CustomRed" })
        -- highlight(0, "GitSignsDeleteCul", { link = "CustomRedRow" })
        -- highlight(0, "GitSignsTopdelete", { link = "CustomRed" })
        -- highlight(0, "GitSignsTopdeleteCul", { link = "GitSignsDeleteCul" })
        -- highlight(0, "GitSignsUntracked", { link = "CustomSteelBlue" })
        -- highlight(0, "GitSignsUntrackedCul", { bg = dark_blue, fg = steel_blue })
        -- --   line highlights
        -- highlight(0, "GitSignsAddLn", { link = "CustomCurrentLine" })
        -- highlight(0, "GitSignsChangeLn", { bg = dark_blue })
        -- --   word diff
        -- highlight(0, "GitSignsAddLnInline", { bg = pickle_blue })
        -- highlight(0, "GitSignsChangeLnInline", { bg = pickle_blue })
        -- --   word diff in preview
        -- highlight(0, "GitSignsAddInline", { bg = green, fg = bg })
        -- highlight(0, "GitSignsChangeInline", { bg = yellow, fg = bg })
        -- highlight(0, "GitSignsDeleteInline", { bg = red, fg = bg })
        -- --   misc
        -- highlight(0, "GitSignsAddPreview", { link = "CustomEmeraldLine" })
        -- highlight(0, "GitSignsDeletePreview", { link = "CustomWatermelonLine" })
        -- highlight(0, "GitSignsDeleteVirtLn", { link = "CustomWatermelonLine" })
        --
        -- -- Hop plugin
        -- highlight(0, "HopCursor", { link = "IncSearch" })
        -- highlight(0, "HopNextKey", { link = "CustomYellow" })
        -- highlight(0, "HopNextKey1", { link = "CustomBlue" })
        -- highlight(0, "HopNextKey2", { link = "CustomWatermelon" })
        -- highlight(0, "HopUnmatched", { link = "CustomGreyBlue" })
        --
        -- -- Indent Blankline plugin
        -- highlight(0, "IblIndent", { fg = deep_blue, nocombine = true })
        -- highlight(0, "IblScope", { fg = bermuda, nocombine = true })
        -- highlight(0, "IblWhitespace", { fg = deep_blue, nocombine = true })
        --
        -- lazy.nvim plugin
        highlight(0, "LazyCommit", { link = "CustomEmerald" })
        highlight(0, "LazyCommitType", { link = "CustomViolet" })
        highlight(0, "LazyDimmed", { fg = grey_blue })
        highlight(0, "LazyH1", { link = "CustomBlueMode" })
        highlight(0, "LazyProgressDone", { link = "CustomBlue" })
        highlight(0, "LazyProgressTodo", { link = "CustomRegalBlue" })
        highlight(0, "LazyReasonCmd", { link = "CustomGreen" })
        highlight(0, "LazyReasonFt", { link = "CustomLime" })
        highlight(0, "LazyReasonPlugin", { link = "CustomOrchid" })
        highlight(0, "LazyReasonRuntime", { link = "CustomTurquoise" })
        highlight(0, "LazyReasonSource", { link = "CustomMalibu" })
        highlight(0, "LazySpecial", { link = "CustomBlue" })
        highlight(0, "LazyButton", { bg = deep_blue, fg = fg })
        highlight(0, "LazyButtonActive", { bg = bay_blue, fg = white_blue })
        if g.nightflyNormalFloat ~= true then
                highlight(0, "LazyNormal", { bg = blue, fg = fg })
        end

        -- -- linefly plugin
        -- highlight(0, "LineflyNormal", { link = "CustomBlueMode" })
        -- highlight(0, "LineflyInsert", { link = "CustomEmeraldMode" })
        -- highlight(0, "LineflyVisual", { link = "CustomPurpleMode" })
        -- highlight(0, "LineflyCommand", { link = "CustomTanMode" })
        -- highlight(0, "LineflyReplace", { link = "CustomWatermelonMode" })
        --
        -- -- lspsaga.nvim plugin
        -- highlight(0, "TitleString", { link = "CustomBlue" })
        -- highlight(0, "TitleIcon", { link = "CustomBlue" })
        -- highlight(0, "TitleSymbol", { link = "CustomBlue" })
        -- highlight(0, "SagaBorder", { link = "FloatBorder" })
        -- highlight(0, "SagaNormal", { link = "Normal" })
        -- highlight(0, "SagaExpand", { link = "CustomWatermelon" })
        -- highlight(0, "SagaCollapse", { link = "CustomWatermelon" })
        -- highlight(0, "SagaBeacon", { link = "CustomPurpleMode" })
        -- highlight(0, "ActionPreviewTitle", { link = "CustomBlue" })
        -- highlight(0, "CodeActionText", { link = "CustomYellow" })
        -- highlight(0, "CodeActionConceal", { link = "CustomGreen" })
        -- highlight(0, "FinderSelection", { link = "CustomTurquoise" })
        -- highlight(0, "FinderFName", { link = "CustomWhite" })
        -- highlight(0, "FinderCode", { link = "CustomWhite" })
        -- highlight(0, "FinderIcon", { link = "CustomTurquoise" })
        -- highlight(0, "FinderType", { link = "CustomViolet" })
        -- highlight(0, "FinderSpinnerTitle", { link = "CustomPurple" })
        -- highlight(0, "FinderSpinner", { link = "CustomPurple" })
        -- highlight(0, "RenameNormal", { link = "CustomOrange" })
        -- highlight(0, "DiagnosticSource", { link = "CustomSteelBlue" })
        -- highlight(0, "DiagnosticText", { link = "CustomRed" })
        -- highlight(0, "CallHierarchyIcon", { link = "CustomViolet" })
        -- highlight(0, "CallHierarchyTitle", { link = "CustomWatermelon" })
        -- highlight(0, "SagaShadow", { link = "Normal" })
        -- highlight(0, "OutlineIndent", { link = "CustomPurple" })
        --
        -- -- mason.nvim plugin
        -- highlight(0, "MasonError", { link = "CustomRed" })
        -- highlight(0, "MasonHeader", { link = "CustomBlueMode" })
        -- highlight(0, "MasonHeaderSecondary", { link = "CustomBlueMode" })
        -- highlight(0, "MasonHeading", { link = "CustomWhiteBlue" })
        -- highlight(0, "MasonHighlight", { link = "CustomBlue" })
        -- highlight(0, "MasonHighlightBlock", { link = "CustomBlueMode" })
        -- highlight(0, "MasonHighlightBlockBold", { link = "CustomBlueMode" })
        -- highlight(0, "MasonHighlightBlockBoldSecondary", { link = "CustomEmeraldMode" })
        -- highlight(0, "MasonHighlightBlockSecondary", { link = "CustomEmeraldMode" })
        -- highlight(0, "MasonHighlightSecondary", { link = "CustomEmerald" })
        -- highlight(0, "MasonLink", { link = "CustomPurple" })
        -- highlight(0, "MasonMuted", { link = "CustomSteelBlue" })
        -- highlight(0, "MasonMutedBlock", { bg = deep_blue, fg = fg })
        -- highlight(0, "MasonMutedBlockBold", { bg = deep_blue, fg = white_blue })
        --
        -- -- Mini.nvim plugin
        -- highlight(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })
        -- highlight(0, "MiniClueBorder", { link = "FloatBorder" })
        -- highlight(0, "MiniClueDescGroup", { link = "DiagnosticFloatingWarn" })
        -- highlight(0, "MiniClueDescSingle", { link = "NormalFloat" })
        -- highlight(0, "MiniClueNextKey", { link = "DiagnosticFloatingHint" })
        -- highlight(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticFloatingError" })
        -- highlight(0, "MiniClueSeparator", { link = "DiagnosticFloatingInfo" })
        -- highlight(0, "MiniClueTitle", { link = "FloatTitle" })
        -- highlight(0, "MiniCompletionActiveParameter", { link = "CustomVisual" })
        -- highlight(0, "MiniCursorword", { link = "CustomUnderline" })
        -- highlight(0, "MiniCursorwordCurrent", { link = "CustomUnderline" })
        -- highlight(0, "MiniDepsChangeAdded", { link = "diffAdded" })
        -- highlight(0, "MiniDepsChangeRemoved", { link = "diffRemoved" })
        -- highlight(0, "MiniDepsHint", { link = "DiagnosticHint" })
        -- highlight(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
        -- highlight(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
        -- highlight(0, "MiniDepsPlaceholder", { link = "Comment" })
        -- highlight(0, "MiniDepsTitle", { link = "Title" })
        -- highlight(0, "MiniDepsTitleError", { link = "CustomWatermelonLine" })
        -- highlight(0, "MiniDepsTitleSame", { link = "DiffText" })
        -- highlight(0, "MiniDepsTitleUpdate", { link = "DiffAdd" })
        -- highlight(0, "MiniDiffOverAdd", { link = "DiffAdd" })
        -- highlight(0, "MiniDiffOverChange", { link = "DiffText" })
        -- highlight(0, "MiniDiffOverContext", { link = "DiffChange" })
        -- highlight(0, "MiniDiffOverDelete", { link = "CustomWatermelonLine" })
        -- highlight(0, "MiniDiffSignAdd", { link = "CustomEmerald" })
        -- highlight(0, "MiniDiffSignChange", { link = "CustomMalibu" })
        -- highlight(0, "MiniDiffSignDelete", { link = "CustomRed" })
        -- highlight(0, "MiniFilesBorder", { link = "FloatBorder" })
        -- highlight(0, "MiniFilesBorderModified", { link = "DiagnosticFloatingWarn" })
        -- highlight(0, "MiniFilesCursorLine", { link = "CustomCurrentLine" })
        -- highlight(0, "MiniFilesDirectory", { link = "Directory" })
        -- highlight(0, "MiniFilesFile", { link = "CustomWhite" })
        -- highlight(0, "MiniFilesNormal", { link = "NormalFloat" })
        -- highlight(0, "MiniFilesTitle", { link = "FloatTitle" })
        -- highlight(0, "MiniFilesTitleFocused", { link = "CustomEmeraldLine" })
        -- highlight(0, "MiniIconsAzure", { link = "CustomMalibu" })
        -- highlight(0, "MiniIconsBlue", { link = "CustomBlue" })
        -- highlight(0, "MiniIconsCyan", { link = "CustomTurquoise" })
        -- highlight(0, "MiniIconsGreen", { link = "CustomGreen" })
        -- highlight(0, "MiniIconsGrey", { link = "CustomWhiteBlue" })
        -- highlight(0, "MiniIconsOrange", { link = "CustomOrange" })
        -- highlight(0, "MiniIconsPurple", { link = "CustomPurple" })
        -- highlight(0, "MiniIconsRed", { link = "CustomWatermelon" })
        -- highlight(0, "MiniIconsYellow", { link = "CustomYellow" })
        -- highlight(0, "MiniIndentscopePrefix", { link = "CustomNoCombine" })
        -- highlight(0, "MiniIndentscopeSymbol", { link = "CustomWhite" })
        -- highlight(0, "MiniJump", { link = "SpellRare" })
        -- highlight(0, "MiniJump2dDim", { link = "CustomGreyBlue" })
        -- highlight(0, "MiniMapNormal", { link = "NormalFloat" })
        -- highlight(0, "MiniMapSymbolCount", { link = "Special" })
        -- highlight(0, "MiniMapSymbolLine", { link = "Title" })
        -- highlight(0, "MiniMapSymbolView", { link = "Delimiter" })
        -- highlight(0, "MiniNotifyBorder", { link = "FloatBorder" })
        -- highlight(0, "MiniNotifyNormal", { link = "NormalFloat" })
        -- highlight(0, "MiniNotifyTitle", { link = "FloatTitle" })
        -- highlight(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })
        -- highlight(0, "MiniPickBorder", { link = "FloatBorder" })
        -- highlight(0, "MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })
        -- highlight(0, "MiniPickBorderText", { link = "FloatTitle" })
        -- highlight(0, "MiniPickHeader", { link = "DiagnosticFloatingHint" })
        -- highlight(0, "MiniPickIconDirectory", { link = "Directory" })
        -- highlight(0, "MiniPickIconFile", { link = "MiniPickNormal" })
        -- highlight(0, "MiniPickMatchCurrent", { link = "CustomCurrentLine" })
        -- highlight(0, "MiniPickMatchMarked", { link = "DiffAdd" })
        -- highlight(0, "MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })
        -- highlight(0, "MiniPickNormal", { link = "NormalFloat" })
        -- highlight(0, "MiniPickPreviewLine", { link = "CursorLine" })
        -- highlight(0, "MiniPickPreviewRegion", { link = "IncSearch" })
        -- highlight(0, "MiniPickPrompt", { link = "DiagnosticFloatingInfo" })
        -- highlight(0, "MiniStarterCurrent", { link = "CustomNoCombine" })
        -- highlight(0, "MiniStarterFooter", { link = "Title" })
        -- highlight(0, "MiniStarterHeader", { link = "CustomViolet" })
        -- highlight(0, "MiniStarterInactive", { link = "Comment" })
        -- highlight(0, "MiniStarterItem", { link = "Normal" })
        -- highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
        -- highlight(0, "MiniStarterItemPrefix", { link = "CustomYellow" })
        -- highlight(0, "MiniStarterQuery", { link = "CustomBlue" })
        -- highlight(0, "MiniStarterSection", { link = "CustomWatermelon" })
        -- highlight(0, "MiniStatuslineDevinfo", { link = "CustomVisual" })
        -- highlight(0, "MiniStatuslineFileinfo", { link = "CustomVisual" })
        -- highlight(0, "MiniStatuslineModeCommand", { link = "CustomTanMode" })
        -- highlight(0, "MiniStatuslineModeInsert", { link = "CustomEmeraldMode" })
        -- highlight(0, "MiniStatuslineModeNormal", { link = "CustomBlueMode" })
        -- highlight(0, "MiniStatuslineModeOther", { link = "CustomTurquoiseMode" })
        -- highlight(0, "MiniStatuslineModeReplace", { link = "CustomWatermelonMode" })
        -- highlight(0, "MiniStatuslineModeVisual", { link = "CustomPurpleMode" })
        -- highlight(0, "MiniSurround", { link = "IncSearch" })
        -- highlight(0, "MiniTablineCurrent", { link = "CustomWhiteLineActive" })
        -- highlight(0, "MiniTablineFill", { link = "TabLineFill" })
        -- highlight(0, "MiniTablineModifiedCurrent", { link = "CustomTanLineActive" })
        -- highlight(0, "MiniTablineModifiedVisible", { link = "CustomTanLine" })
        -- highlight(0, "MiniTablineTabpagesection", { link = "CustomBlueMode" })
        -- highlight(0, "MiniTablineVisible", { link = "CustomGreyBlueRow" })
        -- highlight(0, "MiniTestEmphasis", { link = "CustomUnderline" })
        -- highlight(0, "MiniTestFail", { link = "CustomRed" })
        -- highlight(0, "MiniTestPass", { link = "CustomGreen" })
        -- highlight(0, "MiniTrailspace", { link = "CustomWatermelonMode" })
        -- highlight(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
        -- highlight(0, "MiniHipatternsFixme", { fg = bg, bg = red })
        -- highlight(0, "MiniHipatternsHack", { fg = bg, bg = yellow })
        -- highlight(0, "MiniHipatternsNote", { fg = bg, bg = malibu })
        -- highlight(0, "MiniHipatternsTodo", { fg = bg, bg = turquoise })
        -- highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
        -- highlight(0, "MiniJump2dSpotAhead", { fg = blue, bg = dark_blue, nocombine = true })
        -- highlight(0, "MiniJump2dSpotUnique", { fg = green, underline = true, nocombine = true })
        -- highlight(0, "MiniStatuslineFilename", { bg = blue, fg = fg })
        -- highlight(0, "MiniStatuslineInactive", { bg = blue, fg = blue })
        -- highlight(0, "MiniTablineHidden", { bg = blue, fg = grey_blue })
        -- highlight(0, "MiniTablineModifiedHidden", { bg = blue, fg = tan })
        --
        -- -- Neo-tree plugin
        -- highlight(0, "NeoTreeCursorLine", { link = "CustomCurrentLine" })
        -- highlight(0, "NeoTreeDimText", { link = "CustomPickleBlue" })
        -- highlight(0, "NeoTreeDirectoryIcon", { link = "CustomGreyBlue" })
        -- highlight(0, "NeoTreeDirectoryName", { link = "Directory" })
        -- highlight(0, "NeoTreeDotfile", { link = "CustomGreyBlue" })
        -- highlight(0, "NeoTreeFloatTitle", { link = "FloatTitle" })
        -- highlight(0, "NeoTreeFilterTerm", { link = "CustomBlue" })
        -- highlight(0, "NeoTreeGitAdded", { link = "CustomGreen" })
        -- highlight(0, "NeoTreeGitConflict", { link = "CustomWatermelon" })
        -- highlight(0, "NeoTreeGitModified", { link = "CustomTurquoise" })
        -- highlight(0, "NeoTreeGitUntracked", { link = "CustomOrchid" })
        -- highlight(0, "NeoTreeIndentMarker", { link = "CustomCelloBlue" })
        -- highlight(0, "NeoTreeMessage", { link = "CustomCadetBlue" })
        -- highlight(0, "NeoTreeModified", { link = "CustomTan" })
        -- highlight(0, "NeoTreeRootName", { link = "CustomPurple" })
        -- highlight(0, "NeoTreeTitleBar", { bg = blue, fg = fg })
        --
        -- -- Neogit plugin
        -- highlight(0, "NeogitBranch", { link = "CustomBlue" })
        -- highlight(0, "NeogitDiffAddHighlight", { link = "CustomEmeraldLine" })
        -- highlight(0, "NeogitDiffContextHighlight", { bg = dark_blue })
        -- highlight(0, "NeogitDiffDeleteHighlight", { link = "CustomWatermelonLine" })
        -- highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
        -- highlight(0, "NeogitHunkHeaderHighlight", { link = "CustomBlueLineActive" })
        -- highlight(0, "NeogitRemote", { link = "CustomPurple" })
        --
        -- -- Noice plugin
        -- highlight(0, "NoiceCmdlinePopup", { link = "CustomCadetBlue" })
        -- highlight(0, "NoiceCmdlinePopupBorder", { link = "CustomPickleBlue" })
        -- highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "CustomPickleBlue" })
        -- highlight(0, "NoiceCmdlinePrompt", { link = "CustomBlue" })
        -- highlight(0, "NoiceCompletionItemKindDefault", { link = "CustomTurquoise" })
        -- highlight(0, "NoiceConfirmBorder", { link = "CustomBlue" })
        -- highlight(0, "NoiceFormatTitle", { link = "CustomWatermelon" })
        --
        -- -- nvim-cmp plugin
        -- highlight(0, "CmpItemAbbrMatch", { link = "CustomCinnamon" })
        -- highlight(0, "CmpItemAbbrMatchFuzzy", { link = "CmpItemAbbrMatch" })
        -- highlight(0, "CmpItemKind", { link = "CustomWhite" })
        -- highlight(0, "CmpItemKindClass", { link = "CustomEmerald" })
        -- highlight(0, "CmpItemKindColor", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindConstant", { link = "CustomPurple" })
        -- highlight(0, "CmpItemKindConstructor", { link = "CustomBlue" })
        -- highlight(0, "CmpItemKindEnum", { link = "CustomViolet" })
        -- highlight(0, "CmpItemKindEnumMember", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindEvent", { link = "CustomViolet" })
        -- highlight(0, "CmpItemKindField", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindFile", { link = "CustomBlue" })
        -- highlight(0, "CmpItemKindFolder", { link = "CustomBlue" })
        -- highlight(0, "CmpItemKindFunction", { link = "CustomBlue" })
        -- highlight(0, "CmpItemKindInterface", { link = "CustomEmerald" })
        -- highlight(0, "CmpItemKindKeyword", { link = "CustomViolet" })
        -- highlight(0, "CmpItemKindMethod", { link = "CustomBlue" })
        -- highlight(0, "CmpItemKindModule", { link = "CustomEmerald" })
        -- highlight(0, "CmpItemKindOperator", { link = "CustomViolet" })
        -- highlight(0, "CmpItemKindProperty", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindReference", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindSnippet", { link = "CustomGreen" })
        -- highlight(0, "CmpItemKindStruct", { link = "CustomEmerald" })
        -- highlight(0, "CmpItemKindText", { link = "CustomAshBlue" })
        -- highlight(0, "CmpItemKindTypeParameter", { link = "CustomEmerald" })
        -- highlight(0, "CmpItemKindUnit", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindValue", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemKindVariable", { link = "CustomTurquoise" })
        -- highlight(0, "CmpItemMenu", { link = "CustomSteelBlue" })
        --
        -- -- nvim-dap-ui
        -- highlight(0, "DapUIBreakpointsCurrentLine", { bg = dark_blue, fg = green })
        -- highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
        -- highlight(0, "DapUIBreakpointsInfo", { link = "CustomMalibu" })
        -- highlight(0, "DapUIBreakpointsPath", { link = "CustomTurquoise" })
        -- highlight(0, "DapUIDecoration", { link = "CustomBlue" })
        -- highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
        -- highlight(0, "DapUILineNumber", { link = "Number" })
        -- highlight(0, "DapUIModifiedValue", { fg = fg, underline = true })
        -- highlight(0, "DapUIPlayPause", { bg = deep_blue, fg = green })
        -- highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
        -- highlight(0, "DapUIScope", { link = "CustomMalibu" })
        -- highlight(0, "DapUISource", { link = "CustomViolet" })
        -- highlight(0, "DapUIStepBack", { bg = deep_blue, fg = turquoise })
        -- highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
        -- highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
        -- highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
        -- highlight(0, "DapUIStop", { bg = deep_blue, fg = red })
        -- highlight(0, "DapUIStoppedThread", { link = "CustomTurquoise" })
        -- highlight(0, "DapUIThread", { link = "CustomGreen" })
        -- highlight(0, "DapUIType", { link = "Type" })
        -- highlight(0, "DapUIUnavailable", { bg = deep_blue, fg = steel_blue })
        -- highlight(0, "DapUIWatchesEmpty", { link = "CustomRed" })
        -- highlight(0, "DapUIWatchesError", { link = "CustomRed" })
        -- highlight(0, "DapUIWatchesValue", { link = "CustomGreen" })
        -- highlight(0, "DapUIWinSelect", { link = "CustomBlue" })
        --
        -- -- nvim-navic plugin
        -- highlight(0, "NavicText", { bg = blue, fg = ash_blue })
        -- highlight(0, "NavicSeparator", { bg = blue, fg = fg })
        -- highlight(0, "NavicIconsOperator", { bg = blue, fg = watermelon })
        -- highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
        -- highlight(0, "NavicIconsClass", { bg = blue, fg = green })
        -- highlight(0, "NavicIconsConstant", { bg = blue, fg = orange })
        -- highlight(0, "NavicIconsConstructor", { bg = blue, fg = blue })
        -- highlight(0, "NavicIconsEnum", { bg = blue, fg = violet })
        -- highlight(0, "NavicIconsEnumMember", { bg = blue, fg = turquoise })
        -- highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
        -- highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsFile", { bg = blue, fg = blue })
        -- highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
        -- highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
        -- highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
        -- highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsNull", { bg = blue, fg = green })
        -- highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
        -- highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsString", { bg = blue, fg = tan })
        -- highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
        -- highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
        -- highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })
        --
        -- -- nvim-notify plugin
        -- highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
        -- highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
        -- highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
        -- highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
        -- highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
        -- highlight(0, "NotifyERRORIcon", { link = "CustomRed" })
        -- highlight(0, "NotifyWARNIcon", { link = "CustomYellow" })
        -- highlight(0, "NotifyINFOIcon", { link = "CustomBlue" })
        -- highlight(0, "NotifyDEBUGIcon", { link = "CustomGreyBlue" })
        -- highlight(0, "NotifyTRACEIcon", { link = "CustomPurple" })
        -- highlight(0, "NotifyERRORTitle", { link = "CustomRed" })
        -- highlight(0, "NotifyWARNTitle", { link = "CustomYellow" })
        -- highlight(0, "NotifyINFOTitle", { link = "CustomBlue" })
        -- highlight(0, "NotifyDEBUGTitle", { link = "CustomGreyBlue" })
        -- highlight(0, "NotifyTRACETitle", { link = "CustomPurple" })
        --
        -- -- nvim-treesitter-context
        -- highlight(0, "TreesitterContext", { bg = blue })
        -- highlight(0, "TreesitterContextBottom", { underline = true, sp = blue })
        --
        -- -- nvim-window-picker plugin
        -- highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
        -- highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
        -- highlight(0, "WindowPickerWinBar", { link = "WinBar" })
        -- highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })
        --
        -- -- NvCheatsheet.nvim
        -- highlight(0, "NvChSection", { link = "Pmenu" })
        -- highlight(0, "NvChAsciiHeader", { link = "Directory" })
        -- highlight(0, "NvCheatsheetWhite", { bg = fg, fg = dark_blue })
        -- highlight(0, "NvCheatsheetGray", { bg = orchid, fg = dark_blue })
        -- highlight(0, "NvCheatsheetBlue", { link = "CustomBlueMode" })
        -- highlight(0, "NvCheatsheetCyan", { link = "CustomTurquoiseMode" })
        -- highlight(0, "NvCheatsheetRed", { link = "CustomWatermelonMode" })
        -- highlight(0, "NvCheatsheetGreen", { link = "CustomEmeraldMode" })
        -- highlight(0, "NvCheatsheetYellow", { link = "CustomTanMode" })
        -- highlight(0, "NvCheatsheetOrange", { bg = orange, fg = dark_blue })
        -- highlight(0, "NvCheatsheetPurple", { link = "CustomPurpleMode" })
        -- highlight(0, "NvCheatsheetMagenta", { bg = violet, fg = dark_blue })
        --
        -- -- NvimTree plugin
        -- highlight(0, "NvimTreeFolderIcon", { link = "CustomGreyBlue" })
        -- highlight(0, "NvimTreeFolderName", { link = "CustomBlue" })
        -- highlight(0, "NvimTreeIndentMarker", { link = "CustomCelloBlue" })
        -- highlight(0, "NvimTreeOpenedFolderName", { link = "CustomBlue" })
        -- highlight(0, "NvimTreeRootFolder", { link = "CustomPurple" })
        -- highlight(0, "NvimTreeSpecialFile", { link = "CustomTan" })
        -- highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
        -- highlight(0, "NvimTreeCursorLine", { link = "CustomCurrentLine" })
        -- highlight(0, "NvimTreeExecFile", { fg = green })
        -- highlight(0, "NvimTreeImageFile", { fg = violet })
        -- if g.nightflyTransparent ~= true and g.nightflyNormalFloat ~= true then
        --         highlight(0, "NvimTreeNormalFloat", { bg = bg, fg = blue })
        -- end
        -- highlight(0, "NvimTreeOpenedFile", { fg = yellow })
        -- highlight(0, "NvimTreeSymlink", { fg = turquoise })
        --
        -- -- Rainbow Delimiters plugin
        -- highlight(0, "RainbowDelimiterRed", { link = "CustomRed" })
        -- highlight(0, "RainbowDelimiterYellow", { link = "CustomYellow" })
        -- highlight(0, "RainbowDelimiterBlue", { link = "CustomBlue" })
        -- highlight(0, "RainbowDelimiterOrange", { link = "CustomOrange" })
        -- highlight(0, "RainbowDelimiterGreen", { link = "CustomGreen" })
        -- highlight(0, "RainbowDelimiterViolet", { link = "CustomViolet" })
        -- highlight(0, "RainbowDelimiterCyan", { link = "CustomTurquoise" })
        --
        -- -- snacks.nvim
        -- --   misc
        -- highlight(0, "SnacksWinBar", { link = "CustomBlue" })
        -- highlight(0, "SnacksScratchKey", { link = "DiagnosticInfo" })
        -- --   dashboard
        -- highlight(0, "SnacksDashboardDesc", { link = "CustomTurquoise" })
        -- highlight(0, "SnacksDashboardDir", { link = "CustomEmerald" })
        -- highlight(0, "SnacksDashboardFile", { link = "CustomGreen" })
        -- highlight(0, "SnacksDashboardFooter", { link = "CustomBlue" })
        -- highlight(0, "SnacksDashboardHeader", { link = "CustomBlue" })
        -- highlight(0, "SnacksDashboardIcon", { link = "CustomMalibu" })
        -- highlight(0, "SnacksDashboardSpecial", { link = "CustomViolet" })
        -- --   indent
        -- highlight(0, "SnacksIndent", { link = "IblIndent" })
        -- highlight(0, "SnacksIndentScope", { link = "IblScope" })
        -- --   notifier
        -- highlight(0, "SnacksNotifierInfo", { link = "DiagnosticInfo" })
        -- highlight(0, "SnacksNotifierWarn", { link = "DiagnosticWarn" })
        -- highlight(0, "SnacksNotifierDebug", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksNotifierError", { link = "DiagnosticError" })
        -- highlight(0, "SnacksNotifierTrace", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksNotifierIconInfo", { link = "DiagnosticInfo" })
        -- highlight(0, "SnacksNotifierIconWarn", { link = "DiagnosticWarn" })
        -- highlight(0, "SnacksNotifierIconDebug", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksNotifierIconError", { link = "DiagnosticError" })
        -- highlight(0, "SnacksNotifierIconTrace", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksNotifierTitleInfo", { link = "DiagnosticInfo" })
        -- highlight(0, "SnacksNotifierTitleWarn", { link = "DiagnosticWarn" })
        -- highlight(0, "SnacksNotifierTitleDebug", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksNotifierTitleError", { link = "DiagnosticError" })
        -- highlight(0, "SnacksNotifierTitleTrace", { link = "DiagnosticHint" })
        -- highlight(0, "SnacksBorderTitleInfo", { link = "FloatBorder" })
        -- highlight(0, "SnacksBorderTitleWarn", { link = "FloatBorder" })
        -- highlight(0, "SnacksBorderTitleDebug", { link = "FloatBorder" })
        -- highlight(0, "SnacksBorderTitleError", { link = "FloatBorder" })
        -- highlight(0, "SnacksBorderTitleTrace", { link = "FloatBorder" })
        -- --   picker
        -- highlight(0, "SnacksPicker", { link = "Normal" })
        -- highlight(0, "SnacksPickerAuEvent", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerCol", { link = "CustomSteelBlue" })
        -- highlight(0, "SnacksPickerCursorLine", { link = "Normal" })
        -- highlight(0, "SnacksPickerDir", { fg = graphite_blue })
        -- highlight(0, "SnacksPickerGitBranch", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerGitBreaking", { link = "CustomWatermelon" })
        -- highlight(0, "SnacksPickerGitDate", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerGitStatusAdded", { link = "diffAdded" })
        -- highlight(0, "SnacksPickerGitStatusDeleted", { link = "diffRemoved" })
        -- highlight(0, "SnacksPickerGitStatusModified", { link = "CustomRed" })
        -- highlight(0, "SnacksPickerGitType", { link = "CustomViolet" })
        -- highlight(0, "SnacksPickerInputBorder", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerKeymapLhs", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerKeymapsLhs", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerListCursorLine", { link = "CustomVisual" })
        -- highlight(0, "SnacksPickerManPage", { link = "CustomEmerald" })
        -- highlight(0, "SnacksPickerMatch", { link = "CustomOrange" })
        -- highlight(0, "SnacksPickerPrompt", { link = "CustomBlue" })
        -- highlight(0, "SnacksPickerRow", { link = "CustomLavender" })
        -- highlight(0, "SnacksPickerSelected", { link = "CustomWatermelon" })
        -- highlight(0, "SnacksPickerTitle", { link = "CustomSteelBlue" })
        -- highlight(0, "SnacksPickerTree", { link = "CustomCelloBlue" })
        -- highlight(0, "SnacksPickerUndoAdded", { link = "diffAdded" })
        -- highlight(0, "SnacksPickerUndoRemoved", { link = "diffRemoved" })
        --
        -- Telescope plugin
        highlight(0, "TelescopeBorder", { link = "FloatBorder" })
        highlight(0, "TelescopeMatching", { link = "CustomOrange" })
        highlight(0, "TelescopeMultiIcon", { link = "CustomWatermelon" })
        highlight(0, "TelescopeMultiSelection", { link = "CustomEmerald" })
        highlight(0, "TelescopeNormal", { link = "CustomAshBlue" })
        highlight(0, "TelescopePreviewDate", { link = "CustomGreyBlue" })
        highlight(0, "TelescopePreviewGroup", { link = "CustomGreyBlue" })
        highlight(0, "TelescopePreviewLink", { link = "CustomTurquoise" })
        highlight(0, "TelescopePreviewMatch", { link = "CustomVisual" })
        highlight(0, "TelescopePreviewRead", { link = "CustomOrange" })
        highlight(0, "TelescopePreviewSize", { link = "CustomEmerald" })
        highlight(0, "TelescopePreviewUser", { link = "CustomGreyBlue" })
        highlight(0, "TelescopePromptPrefix", { link = "CustomBlue" })
        highlight(0, "TelescopeResultsDiffAdd", { link = "CustomGreen" })
        highlight(0, "TelescopeResultsDiffChange", { link = "CustomRed" })
        highlight(0, "TelescopeResultsDiffDelete", { link = "CustomWatermelonLine" })
        highlight(0, "TelescopeResultsSpecialComment", { link = "CustomSteelBlue" })
        highlight(0, "TelescopeSelectionCaret", { link = "CustomWatermelon" })
        highlight(0, "TelescopeTitle", { link = "CustomSteelBlue" })
        highlight(0, "TelescopeSelection", { bg = blue, fg = fg })

        -------------------------------------------------------------------------
        -- Legacy plugin styling
        -------------------------------------------------------------------------

        --         -- Coc plugin
        --         highlight(0, "CocInlayHint", { link = "LspInlayHint" })
        --         highlight(0, "CocSemTypeBuiltin", { link = "CustomWatermelon" })
        --         highlight(0, "CocSemTypeClass", { link = "CustomEmerald" })
        --         highlight(0, "CocSemTypeEnumMember", { link = "CustomTurquoise" })
        --         highlight(0, "CocSemTypeNamespace", { link = "CustomTurquoise" })
        --         highlight(0, "CocSemTypeParameter", { link = "CustomOrchid" })
        --         highlight(0, "CocSemTypeProperty", { link = "CustomLavender" })
        --         highlight(0, "CocSemTypeRegexp", { link = "CustomTurquoise" })
        --         highlight(0, "CocSemTypeStruct", { link = "CustomEmerald" })
        --         highlight(0, "CocSemTypeTypeParameter", { link = "CustomOrchid" })
        --         highlight(0, "CocUnusedHighlight", { link = "CustomAshBlue" })
        --         --   Coc virtual text
        --         highlight(0, "CocErrorVirtualText", { link = "DiagnosticVirtualTextError" })
        --         highlight(0, "CocWarningVirtualText", { link = "DiagnosticVirtualTextWarn" })
        --         highlight(0, "CocInfoVirtualText", { link = "DiagnosticVirtualTextInfo" })
        --         highlight(0, "CocHintVirtualText", { link = "DiagnosticVirtualTextHint" })
        --
        --         -- fern.vim plugin
        --         highlight(0, "FernBranchSymbol", { link = "CustomGreyBlue" })
        --         highlight(0, "FernLeafSymbol", { link = "CustomBlue" })
        --         highlight(0, "FernLeaderSymbol", { link = "CustomCelloBlue" })
        --         highlight(0, "FernBranchText", { link = "CustomBlue" })
        --         highlight(0, "FernMarkedLine", { link = "CustomVisual" })
        --         highlight(0, "FernMarkedText", { link = "CustomWatermelon" })
        --         highlight(0, "FernRootSymbol", { link = "CustomPurple" })
        --         highlight(0, "FernRootText", { link = "CustomPurple" })
        --
        --         -- fern-git-status.vim plugin
        --         highlight(0, "FernGitStatusBracket", { link = "CustomGreyBlue" })
        --         highlight(0, "FernGitStatusIndex", { link = "CustomEmerald" })
        --         highlight(0, "FernGitStatusWorktree", { link = "CustomWatermelon" })
        --
        --         -- Git commits
        --         highlight(0, "gitCommitBranch", { link = "CustomBlue" })
        --         highlight(0, "gitCommitDiscardedFile", { link = "CustomWatermelon" })
        --         highlight(0, "gitCommitDiscardedType", { link = "CustomBlue" })
        --         highlight(0, "gitCommitHeader", { link = "CustomPurple" })
        --         highlight(0, "gitCommitSelectedFile", { link = "CustomEmerald" })
        --         highlight(0, "gitCommitSelectedType", { link = "CustomBlue" })
        --         highlight(0, "gitCommitUntrackedFile", { link = "CustomWatermelon" })
        --         highlight(0, "gitEmail", { link = "CustomBlue" })
        --
        --         -- Git commit diffs
        --         highlight(0, "diffAdded", { link = "CustomGreen" })
        --         highlight(0, "diffChanged", { link = "CustomWatermelon" })
        --         highlight(0, "diffIndexLine", { link = "CustomWatermelon" })
        --         highlight(0, "diffLine", { link = "CustomBlue" })
        --         highlight(0, "diffRemoved", { link = "CustomRed" })
        --         highlight(0, "diffSubname", { link = "CustomBlue" })
        --
        --         -- Glyph palette
        --         highlight(0, "GlyphPalette1", { link = "CustomWatermelon" })
        --         highlight(0, "GlyphPalette2", { link = "CustomEmerald" })
        --         highlight(0, "GlyphPalette3", { link = "CustomYellow" })
        --         highlight(0, "GlyphPalette4", { link = "CustomBlue" })
        --         highlight(0, "GlyphPalette6", { link = "CustomTurquoise" })
        --         highlight(0, "GlyphPalette7", { link = "CustomWhite" })
        --         highlight(0, "GlyphPalette9", { link = "CustomWatermelon" })
        --
        --         -- Misc items
        --         highlight(0, "bufExplorerHelp", { link = "CustomCadetBlue" })
        --         highlight(0, "bufExplorerSortBy", { link = "CustomCadetBlue" })
        --         highlight(0, "CleverFDefaultLabel", { link = "CustomWatermelon" })
        --         highlight(0, "CtrlPMatch", { link = "CustomOrange" })
        --         highlight(0, "Directory", { link = "CustomBlue" })
        --         highlight(0, "netrwClassify", { link = "CustomWatermelon" })
        --         highlight(0, "netrwDir", { link = "CustomBlue" })
        --         highlight(0, "netrwExe", { link = "CustomTan" })
        --         highlight(0, "tagName", { link = "CustomTurquoise" })
        --         highlight(0, "Cheat40Header", { link = "CustomBlue" })
        --         highlight(0, "yamlBlockMappingKey", { link = "CustomBlue" })
        --         highlight(0, "yamlFlowMappingKey", { link = "CustomBlue" })
        --         if g.nightflyUnderlineMatchParen then
        --                 highlight(0, "MatchWord", { underline = true, sp = orange })
        --         else
        --                 highlight(0, "MatchWord", { link = "CustomOrange" })
        --         end
        --         highlight(0, "snipLeadingSpaces", { link = "Normal" })
        --         highlight(0, "MatchWordCur", { bg = bg })
        --         highlight(0, "fishInnerVariable", { link = "CustomTurquoise" })
        --         highlight(0, "fishParameter", { link = "CustomTurquoise" })
        --         highlight(0, "fishVariable", { link = "CustomTurquoise" })
        --
        --         -- FZF plugin
        --         highlight(0, "FzfBorder", { fg = blue })
        --         highlight(0, "FzfFgPlus", { fg = white_blue })
        --         highlight(0, "FzfNormal", { fg = ash_blue })
        --         highlight(0, "FzfPrompt", { fg = blue, bg = blue })
        --         highlight(0, "FzfSubstring", { fg = orange })
        --         g.fzf_colors = {
        --                 ["fg"] = { "fg", "FzfNormal" },
        --                 ["bg"] = { "bg", "Normal" },
        --                 ["hl"] = { "fg", "FzfSubstring" },
        --                 ["fg+"] = { "fg", "FzfFgPlus" },
        --                 ["bg+"] = { "bg", "Pmenu" },
        --                 ["hl+"] = { "fg", "FzfSubstring" },
        --                 ["info"] = { "fg", "String" },
        --                 ["border"] = { "fg", "FzfBorder" },
        --                 ["prompt"] = { "fg", "FzfPrompt" },
        --                 ["pointer"] = { "fg", "Exception" },
        --                 ["marker"] = { "fg", "FzfSubstring" },
        --                 ["spinner"] = { "fg", "Type" },
        --                 ["header"] = { "fg", "CursorLineNr" },
        --                 ["gutter"] = { "bg", "Normal" },
        --         }
        -- end
        --
        -- User customization of theme colors.
        --
end
return M

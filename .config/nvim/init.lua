local paq_path = vim.fn.stdpath('data') .. '/site/paqs/start/paq-nvim'

local function paq_cloned()
    return vim.fn.empty(vim.fn.glob(paq_path)) == 0
end

local function clone_paq()
    vim.fn.system {
        "git",
        "clone",
        "--depth=1",
        "https://github.com/savq/paq-nvim.git",
        paq_path
    }
end

if not paq_cloned() then
    clone_paq()
    vim.cmd('packadd paq-nvim')
end

require "paq" {
    -- Paq bootstrap
    "savq/paq-nvim",

    -- init.lua
    "svermeulen/vimpeccable",
    "nvim-lua/plenary.nvim",

    -- Theme
    "mhartington/oceanic-next",

    -- Status lines
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes",
    "kyazdani42/nvim-web-devicons",
    "akinsho/bufferline.nvim",

    -- Autocomplete
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "petertriho/cmp-git",
    "L3MON4D3/LuaSnip",

    -- LSP
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",

    -- Code
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    "windwp/nvim-autopairs",
    "norcalli/nvim-colorizer.lua",
    "tanvirtin/vgit.nvim",
    "f-person/git-blame.nvim",
    "ziglang/zig.vim",

    -- Fuzzy finding
    "nvim-telescope/telescope.nvim",

    -- Terminal
    "akinsho/toggleterm.nvim",
}:install()

--function printTableKeys(tab)
--    for k, _ in pairs(tab) do
--        print(k)
--    end
--end
--printTableKeys(vim.diagnostic)

function try_setup(setup_name, ...)
    local ran, error_msg = pcall(...)
    if not ran then
        error("Error executing" .. setup_name .. "\n" .. error_msg)
    end
end

-- Plug
try_setup("Plug", function ()
    vim.cmd [[
        call plug#begin("~/.config/nvim/plugged")
        Plug 'ziglang/zig.vim'
        Plug 'prettier/vim-prettier'
		Plug 'vlime/vlime', {'rtp': 'vim/'}
        call plug#end()
    ]]
end)

-- Core
try_setup("Core editor params", function ()
    vim.g.mapleader = "\\"

    vim.o.mouse = "a"
    vim.o.number = true
    vim.o.relativenumber = true
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.expandtab = false
    vim.o.softtabstop = 0
    vim.o.autoindent = true
    vim.o.smartindent = true
    vim.o.autoread = true
    vim.o.backup = false
    vim.o.clipboard = "unnamedplus"
    vim.o.fileencoding = "utf-8"
    vim.o.hlsearch = true
    vim.o.smartindent = true
    vim.o.splitbelow = true
    vim.o.splitright = true
    vim.o.swapfile = false
    vim.o.updatetime = 300
    vim.o.writebackup = false
    vim.o.cursorline = true
    vim.o.wrap = true
    vim.o.signcolumn = "yes"
    vim.o.completeopt = "menu,menuone,noselect"
    vim.o.termguicolors = true

    vim.g.netrw_preview = 0
    vim.g.netrw_liststyle = 3
    vim.g.netrw_keepdir = 0
    vim.g.netrw_winsize = 20
    vim.g.netrw_localcopydircmd = "cp -r"
end)

-- Remap
local vimp = require "vimp"
try_setup("Basic keybindings", function()
    vimp.inoremap("jj", "<Esc>")

    vimp.nnoremap("<leader>ed", ":e $HOME/.config/nvim/init.lua<CR>")
    vimp.nnoremap("<leader>rr", function()
        vimp.unmap_all()
        vim.cmd "silent wa"
        dofile(vim.fn.stdpath("config") .. "/init.lua")
        print "Config reloaded."
    end)
    vimp.nnoremap("<leader>rp", function()
        vim.cmd "PaqSync"
    end)

    vimp.nnoremap({ "silent" }, "<C-w>", ":bd<CR>")
end)

try_setup("Movement keybindings", function()
    vimp.nnoremap("ä", "\"a")
    vimp.vnoremap("ä", "\"a")

    vimp.nnoremap({ "silent" }, "<S-j>", ":bp<CR>")
    vimp.nnoremap({ "silent" }, "<S-k>", ":bn<CR>")

    pcall(vim.cmd, "unmap <C-l>")
    vimp.nnoremap({ "silent" }, "<C-h>", "<C-w>h")
    vimp.nnoremap({ "silent" }, "<C-j>", "<C-w>j")
    vimp.nnoremap({ "silent" }, "<C-k>", "<C-w>k")
    vimp.nnoremap({ "silent" }, "<C-l>", "<C-w>l")
end)

try_setup("Utils keybindings", function()
    vimp.tnoremap("<Esc>", "<C-\\><C-n>")

    pcall(vim.cmd, "unmap <leader>gi")
    pcall(vim.cmd, "unmap <leader>p")
    pcall(vim.cmd, "unmap <leader>\\")
    local lazygit = require "toggleterm.terminal".Terminal:new { direction = "float", cmd = "lazygit" }
    vimp.nnoremap("<leader>gi", function() lazygit:toggle() end)
    vimp.nnoremap("<leader>p", function() vim.cmd "Telescope live_grep" end)
    vimp.nnoremap("<leader>\\", function() vim.cmd "Telescope find_files" end)
    vimp.nnoremap({ "silent" }, "<Bar>", function()
        if vim.bo.filetype == "netrw" then
            vim.cmd("bd")
        else
            vim.cmd("Explore %:p:h")
        end
    end)
end)

try_setup("LSP keybindings", function()
    vimp.nnoremap("<leader>lsp", function() vim.cmd "Mason" end)
    vimp.nnoremap("<leader>lsi", function() vim.cmd "LspInfo" end)

    vimp.nnoremap("m", function() vim.lsp.buf.hover() end)
    vimp.nnoremap("gd", function() vim.lsp.buf.definition() end)
    vimp.nnoremap("gi", function() vim.lsp.buf.implementation() end)
    vimp.nnoremap("<leader>a", function() vim.lsp.buf.code_action() end)
    vimp.nnoremap("[g", function() vim.diagnostic.goto_prev() end)
    vimp.nnoremap("]g", function() vim.diagnostic.goto_next() end)
    vimp.nnoremap("<leader>rn", function() vim.lsp.buf.rename() end)
    vimp.nnoremap("<leader>f", function() Format() end)
end)

-- Theme
try_setup("Theming", function()
    vim.g.oceanic_next_terminal_bold = 1
    vim.g.oceanic_next_terminal_italic = 1
    vim.cmd("colorscheme OceanicNext")

    vim.g.airline_powerline_fonts = 1
    require "bufferline".setup {
        options = {
            numbers = "buffer_id",
			indicator = {
				style = "❯"
			},
			--indicator_icon = "❯",
            diagnostics = "nvim_lsp",
        },
    }
end)

-- LSP
local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local cmp = require "cmp"
cmp.setup({
    snippet = {
        expand = function(args)
            require "luasnip".lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "s" }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
    }, {
        { name = "buffer" },
    }),
})

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.cmdline("/", {
    sources = {
        { name = "buffer" }
    }
})

cmp.setup.cmdline(":", {
    sources = cmp.config.sources({
        { name = "path" }
    }, {
        { name = "cmdline" }
    })
})

require "mason".setup {}

local util = require "lspconfig/util"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require "cmp_nvim_lsp".default_capabilities(capabilities)

local lspconfig = require "lspconfig"
try_setup("LSP config: tsserver", function() lspconfig.tsserver.setup {} end)
try_setup("LSP config: tailwindcss", function() lspconfig.tailwindcss.setup {} end)
try_setup("LSP config: rust-analyzer", function() lspconfig.rust_analyzer.setup {
        settings = { ["rust-analyzer"] = { checkOnSave = { AllTargets = false } } }
} end)

--lspconfig.hls.setup {
--    settings = { haskell = { formattingProvider = "fourmolu" } }
--}

require "nvim-treesitter.configs".setup {
    highlight = {
        enable = false,
        additional_vim_regex_highlighting = true,
    }
}
require "nvim-autopairs".setup {}

function Format()
	--vim.lsp.buf.formatting_sync()
	vim.lsp.buf.format()
end

vim.cmd "autocmd BufWritePre <buffer> lua Format()"
vim.cmd "autocmd BufWritePre *.tsx Prettier"

-- Fuzzy finding
require('telescope').setup {

}

-- Code
require "nvim-treesitter.configs".setup {}
require "colorizer".setup {}
require "vgit".setup {}

-- Terminal
require "toggleterm".setup {
    open_mapping = "<C-\\>",
    start_in_insert = true,
}

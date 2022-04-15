require"paq" {
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
    "williamboman/nvim-lsp-installer",

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
}

vim.cmd [[
    call plug#begin("~/.config/nvim/plugged")
    Plug 'ziglang/zig.vim'
    call plug#end()
]]

-- Core settings
vim.g.mapleader = "\\"

vim.o.mouse = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
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

-- Remap
pcall(vim.cmd, "unmap <C-l>")

local vimp = require"vimp"

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

vimp.inoremap("jj", "<Esc>")

vimp.nnoremap({"silent"}, "<S-j>", ":bp<CR>")
vimp.nnoremap({"silent"}, "<S-k>", ":bn<CR>")

vimp.nnoremap({"silent"}, "<C-h>", "<C-w>h")
vimp.nnoremap({"silent"}, "<C-j>", "<C-w>j")
vimp.nnoremap({"silent"}, "<C-k>", "<C-w>k")
vimp.nnoremap({"silent"}, "<C-l>", "<C-w>l")

vimp.tnoremap("<Esc>", "<C-\\><C-n>")

vimp.nnoremap({"silent"}, "<C-w>", ":bd<CR>")

local lazygit = require"toggleterm.terminal".Terminal:new { direction = "float", cmd = "lazygit" }
vimp.nnoremap("<leader>gi", function() lazygit:toggle() end)
vimp.nnoremap("<leader>lsp", function () vim.cmd "LspInstallInfo" end)
vimp.nnoremap("<leader>lsi", function () vim.cmd "LspInfo" end)
vimp.nnoremap("<C-p>", function() vim.cmd "Telescope live_grep" end)
vimp.nnoremap({"silent"}, "<Bar>", function()
    if vim.bo.filetype == "netrw" then
        vim.cmd("bd")
    else
        vim.cmd("Explore %:p:h")
    end
end)

vimp.nnoremap("m", function() vim.lsp.buf.hover() end)
vimp.nnoremap("gd", function() vim.lsp.buf.definition() end)
vimp.nnoremap("[g", function() vim.diagnostic.goto_prev() end)
vimp.nnoremap("]g", function() vim.diagnostic.goto_next() end)
vimp.nnoremap("<leader>rn", function() vim.lsp.buf.rename() end)
vimp.nnoremap("<leader>f", function() Format() end)

function printTableKeys(tab)
  for k, _ in pairs(tab) do
      print(k)
  end
end

--printTableKeys(vim.diagnostic)

-- Theme
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1
vim.cmd("colorscheme OceanicNext")

vim.g.airline_powerline_fonts = 1
require"bufferline".setup {
    options = {
        numbers = "buffer_id",
        indicator_icon = "❯",
        diagnostics = "nvim_lsp",
    },
}

-- LSP
local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local cmp = require"cmp"
cmp.setup({
    snippet = {
        expand = function(args)
            require"luasnip".lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(),  { "i", "s" }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, {"i", "s"}),
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

local util = require"lspconfig/util"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require"cmp_nvim_lsp".update_capabilities(capabilities)


require"nvim-lsp-installer".on_server_ready(function(server)
    local opts = {
        capabilities = capabilities,
    }

    if server.name == "emmet_ls" then
        opts.filetypes = {
            "html",
            "css",
            --"javascriptreact",
            --"javascript.jsx",
            --"typescript",
            --"typescriptreact",
            --"typescript.tsx",
        }
    end

    if server.name == "zls" then
        opts = {
            cmd = { "zls" },
            filetypes = { "zig" },
            root_dir = util.root_pattern({"build.zig", ".git"}),
            single_file_support = true,
        }
    end

    if server.name == "rust_analyzer" then
        opts.settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    AllTargets = false
                }
            }
        }
    end

    server:setup(opts)
end)

require"nvim-treesitter.configs".setup {
    highlight = {
        enable = false,
        additional_vim_regex_highlighting = true,
    }
}
require"nvim-autopairs".setup {}

function Format()
    vim.lsp.buf.formatting_sync()
end
vim.cmd "autocmd BufWritePre <buffer> lua Format()"

-- Fuzzy finding
require('telescope').setup {

}

-- Code
require"nvim-treesitter.configs".setup {}
require"colorizer".setup {}
require"vgit".setup {}

-- Terminal
require"toggleterm".setup {
    open_mapping = "<C-\\>",
    start_in_insert = true,
}

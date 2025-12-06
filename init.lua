-- https://github.com/SylvanFranklin/.config/blob/main/nvim/init.lua
-- https://www.youtube.com/watch?v=xGkL2N8w0H4
-- https://www.youtube.com/watch?v=UE6XQTAxwE0
-- https://github.com/radleylewis/nvim-lite/blob/master/init.lua
-- https://gist.github.com/smnatale/692ac4f256d5f19fbcbb78fe32c87604

----------------------------------------------------------------

-- Basic settings
vim.o.number = true         -- Line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.cursorline = true     -- Highlight current line
vim.o.wrap = true           -- wrap lines
vim.o.linebreak = true
vim.o.showbreak = "↳ "
vim.o.scrolloff = 4 -- Keep 4 lines above/below cursor
-- vim.o.sidescrolloff = 8 -- Keep 8 columns left/right of cursor
-- vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro" -- Enable number in netrw

-- Indentation
vim.o.tabstop = 4        -- Tab width
vim.o.shiftwidth = 4     -- Indent width
vim.o.softtabstop = 4    -- Soft tab stop
vim.o.expandtab = true   -- Use spaces instead of tabs
vim.o.smartindent = true -- Smart auto-indenting
-- vim.o.autoindent = true  -- Copy indent from current line
vim.o.breakindent = true -- Enable break indent

-- Search settings
-- vim.o.ignorecase = true                          -- Case insensitive search
-- vim.o.smartcase = true                           -- Case sensitive if uppercase in search
-- vim.o.hlsearch = false                           -- Don't highlight search results
-- vim.o.incsearch = true -- Show matches as you type

-- Visual settings
-- vim.o.termguicolors = true                       -- Enable 24-bit colors
vim.o.signcolumn = "yes" -- Always show sign column
-- vim.o.colorcolumn = "100" -- Show column at 100 characters
vim.o.showmatch = true   -- Highlight matching brackets
-- vim.o.matchtime = 2                             -- How long to show matching bracket
-- vim.o.cmdheight = 1                             -- Command line height
-- since i use blink.cmp no need for below
-- vim.o.completeopt = "menuone,noinsert,noselect" -- Completion options
-- vim.cmd([[set completeopt+=menuone,noselect,popup]])
vim.o.showmode = false -- Don't show mode in command line
-- vim.o.pumheight = 10                            -- Popup menu height
-- vim.o.pumblend = 10                             -- Popup menu transparency
-- vim.o.winblend = 0                              -- Floating window transparency
-- vim.o.conceallevel = 0                          -- Don't hide markup
-- vim.o.concealcursor = ""                        -- Don't hide cursor line markup
-- vim.o.lazyredraw = true                         -- Don't redraw during macros
-- vim.o.synmaxcol = 300                           -- Syntax highlighting limit
vim.o.winborder = "rounded" -- show rounded border in popup menu
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- File handling
vim.o.backup = false                            -- Don't create backup files
vim.o.writebackup = false                       -- Don't create backup before writing
vim.o.swapfile = false                          -- Don't create swap files
vim.o.undofile = true                           -- Persistent undo
vim.o.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.o.updatetime = 300                          -- Faster completion
vim.o.timeoutlen = 500                          -- Key timeout duration
vim.o.ttimeoutlen = 0                           -- Key code timeout
-- vim.o.autoread = true                           -- Auto reload files changed outside vim
-- vim.o.autowrite = false                         -- Don't auto save --> default value
-- unchange buffer will ask to save before switch to another buffer
-- vim.o.hidden = false
-- vim.o.confirm = true

-- Behavior settings
-- vim.o.hidden = true                   -- Allow hidden buffers
-- vim.o.errorbells = false              -- No error bells
-- vim.o.backspace = "indent,eol,start"  -- Better backspace behavior
vim.o.autochdir = false -- Don't auto change directory
-- vim.o.iskeyword:append("-")           -- Treat dash as part of word
-- vim.o.path:append("**")               -- include subdirectories in search
-- vim.o.selection = "exclusive"         -- Selection behavior
-- vim.o.mouse = "a"                     -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
-- vim.o.modifiable = true               -- Allow buffer modifications
vim.o.encoding = "UTF-8"                -- Set encoding
vim.o.inccommand = "split"              -- Preview substitutions live, as you type!

-- Folding settings
-- vim.o.foldmethod = "expr"                        -- Use expression for folding
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"    -- Use treesitter for folding
-- vim.o.foldlevel = 99                             -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go right

-- Key mappings
vim.g.mapleader = " "      -- Set leader key to space
vim.g.maplocalleader = "," -- Set local leader key (NEW)

-- Command-line completion
-- vim.o.wildmenu = true
-- vim.o.wildmode = "longest:full,full"
-- vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Better diff options
-- vim.opt.diffopt:append("linematch:60")

-- Performance improvements
-- vim.o.redrawtime = 10000
-- vim.o.maxmempattern = 20000

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Better window navigation
-- vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to left window" })
-- vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to bottom window" })
-- vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to top window" })
-- vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to right window" })
-- vim.keymap.set("n", "<A-q>", ":q<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<A-v>", ":botright 205vsplit<CR>", { desc = "Split window vertically" })

-- Splitting & Resizing
-- <C-w>v -> split window vertically
-- <C-w>s -> split window horizontally
-- <C-w>c -> close window
-- <C-w>q -> close window
-- you could move window by mouse to resize them
-- <C-w>> -> move
-- <C-w>9> -> move
-- <C-w>9< -> move
-- <C-w>h -> focus right window
-- <C-w>l -> focus left window
-- <C-w>k -> focus up window
-- <C-w>j -> focus down window
-- :botright 200vsplit
-- vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split window vertically" })
-- vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Split window horizontally" })
-- vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
-- vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
-- vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
-- vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })


-- To remap C-\ C-n (exit terminal mode) to C-s in Neovim, add this to your configuration:
vim.keymap.set('t', '<C-s>', '<C-\\><C-n>', { noremap = true })

-- delete buffer without closing window
vim.keymap.set("n", "<leader>b", ":set bufhidden=delete | bnext<CR>")

-- detach
vim.keymap.set('n', '<leader>q', ':detach<CR>', { noremap = true, silent = true })
--- Learning
-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<left>", "<Nop>", { silent = true })
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<right>", "<Nop>", { silent = true })
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<up>", "<Nop>", { silent = true })
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<down>", "<Nop>", { silent = true })
-- TIP: Disable page up/down
-- vim.keymap.set('n', '<PageUp>', '<cmd>echo "Use Ctrl b to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<PageUp>", "<Nop>", { silent = true })
-- vim.keymap.set('n', '<PageDown>', '<cmd>echo "Use Ctrl f to move!!"<CR>')
-- vim.keymap.set({ "n", "i", "v" }, "<PageDown>", "<Nop>", { silent = true })

-- ============================================================================
-- USEFUL FUNCTIONS
-- ============================================================================

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function()
        vim.hl.on_yank()
    end,
})


-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Set filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "lua", "python" },
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "javascript", "typescript", "json", "html", "css" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

-- Auto-close terminal when process exits
vim.api.nvim_create_autocmd("TermClose", {
    group = augroup,
    callback = function()
        if vim.v.event.status == 0 then
            vim.api.nvim_buf_delete(0, {})
        end
    end,
})

-- Disable line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
    group = augroup,
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.signcolumn = "no"
        -- enter terminal mode
        vim.keymap.set('n', '<Esc>', 'i', { buffer = true })
    end,
})

-- -- Auto-resize splits when window is resized
-- vim.api.nvim_create_autocmd("VimResized", {
--     group = augroup,
--     callback = function()
--         vim.cmd("tabdo wincmd =")
--     end,
-- })

-- no auto continue comments on new line
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("no_auto_comment", {}),
    callback = function()
        vim.opt_local.formatoptions:remove({ "c", "r", "o" })
    end,
})

-- show cursorline only in active window enable
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
    group = vim.api.nvim_create_augroup("active_cursorline", { clear = true }),
    callback = function()
        vim.opt_local.cursorline = true
    end,
})

-- show cursorline only in active window disable
vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
    group = "active_cursorline",
    callback = function()
        vim.opt_local.cursorline = false
    end,
})

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

-- ============================================================================
-- FLOATING TERMINAL
-- ============================================================================

-- Exit Terminal Mode
-- <C-\><C-n> to switch from terminal mode to normal mode for navigation
-- press a to come back to terminal mode
-- terminal
local terminal_state = {
    buf = nil,
    win = nil,
    is_open = false
}

local function FloatingTerminal()
    -- If terminal is already open, close it (toggle behavior)
    if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
        vim.api.nvim_win_close(terminal_state.win, false)
        terminal_state.is_open = false
        return
    end

    -- Create buffer if it doesn't exist or is invalid
    if not terminal_state.buf or not vim.api.nvim_buf_is_valid(terminal_state.buf) then
        terminal_state.buf = vim.api.nvim_create_buf(false, true)
        -- Set buffer options for better terminal experience
        vim.api.nvim_buf_set_option(terminal_state.buf, 'bufhidden', 'hide')
    end

    -- Calculate window dimensions
    local width = math.floor(vim.o.columns * 0.8)
    local height = math.floor(vim.o.lines * 0.8)
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    -- Create the floating window
    terminal_state.win = vim.api.nvim_open_win(terminal_state.buf, true, {
        relative = 'editor',
        width = width,
        height = height,
        row = row,
        col = col,
        style = 'minimal',
        border = 'rounded',
    })

    -- Set transparency for the floating window
    vim.api.nvim_win_set_option(terminal_state.win, 'winblend', 0)

    -- Set transparent background for the window
    vim.api.nvim_win_set_option(terminal_state.win, 'winhighlight',
        'Normal:FloatingTermNormal,FloatBorder:FloatingTermBorder')

    -- Define highlight groups for transparency
    vim.api.nvim_set_hl(0, "FloatingTermNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatingTermBorder", { bg = "none", })

    -- Start terminal if not already running
    local has_terminal = false
    local lines = vim.api.nvim_buf_get_lines(terminal_state.buf, 0, -1, false)
    for _, line in ipairs(lines) do
        if line ~= "" then
            has_terminal = true
            break
        end
    end

    if not has_terminal then
        -- vim.fn.termopen(os.getenv("SHELL")) -- use default shell
        vim.fn.termopen("/opt/homebrew/bin/nu")
    end

    terminal_state.is_open = true
    vim.cmd("startinsert")

    -- Set up auto-close on buffer leave
    vim.api.nvim_create_autocmd("BufLeave", {
        buffer = terminal_state.buf,
        callback = function()
            if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
                vim.api.nvim_win_close(terminal_state.win, false)
                terminal_state.is_open = false
            end
        end,
        once = true
    })
end

-- Function to explicitly close the terminal
-- local function CloseFloatingTerminal()
--     if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--         vim.api.nvim_win_close(terminal_state.win, false)
--         terminal_state.is_open = false
--     end
-- end

-- Key mappings
vim.keymap.set("n", "<A-i>", FloatingTerminal, { noremap = true, silent = true, desc = "Toggle floating terminal" })
-- vim.keymap.set("t", "<Esc>", function()
vim.keymap.set("t", "<A-i>", function()
    if terminal_state.is_open then
        vim.api.nvim_win_close(terminal_state.win, false)
        terminal_state.is_open = false
    end
end, { noremap = true, silent = true, desc = "Close floating terminal from terminal mode" })


----------------------------------------------------------------

-- https://neovim.io/doc/user/pack.html
vim.pack.add({
    { src = "https://github.com/chentoast/marks.nvim" },
    -- Theme
    { src = "https://github.com/folke/tokyonight.nvim" },
    -- :checkhealth nvim-treesitter
    -- brew install tree-sitter-cli
    -- :TSUpdate
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "main",
    },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/saghen/blink.cmp",     version = vim.version.range('1.*'), },
    -- { src = "https://github.com/MagicDuck/grug-far.nvim" },
    -- { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/github/copilot.vim" },
})

local function pack_clean()
    local active_plugins = {}
    local unused_plugins = {}

    for _, plugin in ipairs(vim.pack.get()) do
        active_plugins[plugin.spec.name] = plugin.active
    end

    for _, plugin in ipairs(vim.pack.get()) do
        if not active_plugins[plugin.spec.name] then
            table.insert(unused_plugins, plugin.spec.name)
        end
    end

    if #unused_plugins == 0 then
        print("No unused plugins.")
        return
    end

    local choice = vim.fn.confirm("Remove unused plugins?", "&Yes\n&No", 2)
    if choice == 1 then
        vim.pack.del(unused_plugins)
    end
end

--- rm -rf ~/.local/share/nvim/site/pack/core/opt/*
--- :lua vim.pack.update() --> review then do :w
vim.keymap.set("n", "<leader>pu", ":lua vim.pack.update()<CR>")
vim.keymap.set("n", "<leader>pc", pack_clean)

---------------------------------------------------------------- Copilot
-- vim.g.copilot_enabled = false
-- vim.keymap.set('i', '<C-j>', 'copilot#Accept("\\<CR>")', {
vim.keymap.set('i', '<Right>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})
-- vim.keymap.set('i', '<C-;>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<Left>', '<Plug>(copilot-accept-word)')
-- vim.keymap.set('i', '<C-/>', '<Plug>(copilot-dismiss)')
-- vim.keymap.set('i', '<Down>', '<Plug>(copilot-dismiss)')
vim.g.copilot_no_tab_map = true

---------------------------------------------------------------- Marks

require("marks").setup({
    builtin_marks = { ".", "<", ">", "^" },
    refresh_interval = 250,
    sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
})
-- m]              Move to next mark
-- m[              Move to previous mark

----------------------------------------------------------------

-- https://github.com/lewis6991/gitsigns.nvim
-- require("gitsigns").setup({
--     signs = {
--         add = { text = '+' },
--         change = { text = '~' },
--         delete = { text = '_' },
--         topdelete = { text = '‾' },
--         changedelete = { text = '~' },
--     },
--     on_attach = function(bufnr)
--         local gitsigns = require('gitsigns')
--
--         local function map(mode, l, r, opts)
--             opts = opts or {}
--             opts.buffer = bufnr
--             vim.keymap.set(mode, l, r, opts)
--         end
--
--         -- Navigation
--         map('n', ']c', function()
--             if vim.wo.diff then
--                 vim.cmd.normal({ ']c', bang = true })
--             else
--                 gitsigns.nav_hunk('next')
--             end
--         end)
--
--         map('n', '[c', function()
--             if vim.wo.diff then
--                 vim.cmd.normal({ '[c', bang = true })
--             else
--                 gitsigns.nav_hunk('prev')
--             end
--         end)
--
--         -- Actions
--         map('n', '<leader>hs', gitsigns.stage_hunk)
--         map('n', '<leader>hr', gitsigns.reset_hunk)
--
--         map('v', '<leader>hs', function()
--             gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
--         end)
--
--         map('v', '<leader>hr', function()
--             gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
--         end)
--
--         map('n', '<leader>hS', gitsigns.stage_buffer)
--         map('n', '<leader>hR', gitsigns.reset_buffer)
--         map('n', '<leader>hp', gitsigns.preview_hunk)
--         map('n', '<leader>hi', gitsigns.preview_hunk_inline)
--
--         map('n', '<leader>hb', function()
--             gitsigns.blame_line({ full = true })
--         end)
--
--         map('n', '<leader>hd', gitsigns.diffthis)
--
--         map('n', '<leader>hD', function()
--             gitsigns.diffthis('~')
--         end)
--
--         map('n', '<leader>hQ', function() gitsigns.setqflist('all') end)
--         map('n', '<leader>hq', gitsigns.setqflist)
--
--         -- Toggles
--         map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
--         map('n', '<leader>tw', gitsigns.toggle_word_diff)
--
--         -- Text object
--         map({ 'o', 'x' }, 'ih', gitsigns.select_hunk)
--     end
-- })

----------------------------------------------------------------

-- require("grug-far").setup()
-- vim.keymap.set({ "n" }, "<leader>rr", ":GrugFar<CR>", { desc = "Find are Replace" })

----------------------------------------------------------------

require("blink.cmp").setup({
    -- fuzzy = { implementation = 'prefer_rust_with_warning' },
    fuzzy = { implementation = 'rust' },
    -- signature = { enabled = true },
    -- sources = {
    --     default = { 'lsp', 'path', 'snippets', 'buffer' },
    -- },
    -- https://cmp.saghen.dev/configuration/keymap.html
    keymap = {
        preset = 'default',
        -- ['<C-e>'] = { 'hide', 'fallback' },
        -- ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
        -- ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
        -- ['<C-y>'] = { 'select_and_accept', 'fallback' },
        ['<Up>'] = {},
        ['<Down>'] = {},
        -- ['<TAB>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<Left>'] = {},
        ['<Right>'] = {},
        ['<S-up>'] = { 'scroll_documentation_up', 'fallback' },
        ['<S-down>'] = { 'scroll_documentation_down', 'fallback' },
    },
})

----------------------------------------------------------------

require("nvim-autopairs").setup()

----------------------------------------------------------------

require('oil').setup({
    delete_to_trash = true,
})

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Open file explorer" })
-- vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })

---------------------------------------------------------------- LSP

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
vim.lsp.config('*', {
    capabilities = {
        general = {
            positionEncodings = { 'utf-16' } -- or 'utf-8', 'utf-32'
        }
    }
})

-- Define LSP diagnostic signs with low priority
vim.diagnostic.config({
    signs = {
        text = {
            -- [vim.diagnostic.severity.ERROR] = "E",
            [vim.diagnostic.severity.ERROR] = "󰅚",
            -- [vim.diagnostic.severity.WARN] = "W",
            [vim.diagnostic.severity.WARN] = "󰀪",
            -- [vim.diagnostic.severity.INFO] = "I",
            [vim.diagnostic.severity.INFO] = "󰋽",
            -- [vim.diagnostic.severity.HINT] = "H",
            [vim.diagnostic.severity.HINT] = "󰌶",
        },
        priority = 5     -- Lower number = lower priority (default is 10)
    },
    severity_sort = true -- Enable to automatically prioritize higher severities
})

-- vim.lsp.config('ruff', {
--     init_options = {
--         settings = {
--             -- Ruff language server settings go here
--         }
--     },
--     -- I think no need for below
--     -- capabilities = {
--     --    textDocument = {
--     --    hover = vim.NIL, -- Explicitly disable hover capability
--     --   },
-- })

-- solve vim warning for lua_ls
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
        }
    }
})

-- https://docs.basedpyright.com/#/settings
vim.lsp.config('basedpyright', {
    settings = {
        basedpyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
            analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { '*' },
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                -- typeCheckingMode = 'strict',
            },
        },
    },
})

-- https://writewithharper.com/docs/integrations/neovim
vim.lsp.config('harper_ls', {
    settings = {
        ["harper-ls"] = {
            userDictPath = "~/dict.txt"
        },
    },
})

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- :LspInfo
vim.lsp.enable({
    -- brew install lua-language-server
    "lua_ls",
    -- inside pyproject.toml
    "ruff",
    -- inside pyproject.toml
    -- "basedpyright",
    -- inside pyproject.toml
    "ty",
    -- brew install harper
    "harper_ls",
})



-- :h LspAttach
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("my.lsp", {}),
    callback = function(args)
        local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = args.buf, desc = 'LSP: ' .. desc })
        end

        -- https://neovim.io/doc/user/lsp.html#lsp-buf
        -- https://neovim.io/doc/user/lsp.html#lsp-defaults

        -- in insert mode: <C-S> to show signature

        map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
        --
        -- -- Execute a code action, usually your cursor needs to be on top of an error
        -- -- or a suggestion from your LSP for this to activate.
        -- map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
        map('gra', require("fzf-lua").lsp_code_actions, '[G]oto Code [A]ction', { 'n', 'x' })
        --
        -- map('grr', vim.lsp.buf.references, '[G]oto [R]eferences')
        map('grr', require("fzf-lua").lsp_references, '[G]oto [R]eferences')
        --
        -- -- Jump to the implementation of the word under your cursor.
        -- --  Useful when your language has ways of declaring types without an actual implementation.
        -- map('gri', require("fzf-lua").lsp_implementations, '[G]oto [I]mplementation')
        --
        -- -- Jump to the definition of the word under your cursor.
        -- --  This is where a variable was first declared, or where a function is defined, etc.
        -- --  To jump back, press <C-t>.
        -- map('grd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        map('grd', require("fzf-lua").lsp_definitions, '[G]oto [D]efinition')
        --
        -- -- WARN: This is not Goto Definition, this is Goto Declaration.
        -- --  For example, in C this would take you to the header.
        -- map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        --
        -- -- Fuzzy find all the symbols in your current document.
        -- --  Symbols are things like variables, functions, types, etc.
        -- -- map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        -- map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')
        map('gO', require('fzf-lua').lsp_document_symbols, 'Open Document Symbols')
        --
        -- -- Fuzzy find all the symbols in your current workspace.
        -- --  Similar to document symbols, except searches over your entire project.
        -- map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')
        --
        -- -- Jump to the type of the word under your cursor.
        -- --  Useful when you're not sure what type a variable is and you want to see
        -- --  the definition of its *type*, not where it was *defined*.
        -- map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')


        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        -- if client:supports_method("textDocument/implementation") then
        --     -- Create a keymap for vim.lsp.buf.implementation ...
        -- end

        -- if not using blink.cmp
        --- Auto open completion. manual ctrl-x ctrl-o
        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
        -- if client:supports_method("textDocument/completion") then
        --     -- Optional: trigger autocompletion on EVERY keypress. May be slow!
        --     -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
        --     -- client.server_capabilities.completionProvider.triggerCharacters = chars
        --
        --     vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
        -- end

        -- Auto-format ("lint") on save.
        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
        if
            not client:supports_method("textDocument/willSaveWaitUntil")
            and client:supports_method("textDocument/formatting")
        then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("my.lsp", { clear = false }),
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end
    end,
})

---------------------------------------------------------------- Treesitter

require("tokyonight").setup({
    styles = {
        comments = { italic = false }, -- Disable italics in comments
    },
})

vim.cmd("colorscheme tokyonight")

require("nvim-treesitter").setup({
    -- Directory to install parsers and queries to
    install_dir = vim.fn.stdpath("data") .. "/site",
})

-- 1. select langs
local ts_parsers = {
    "bash",
    "diff",
    "html",
    "lua",
    "luadoc",
    "markdown",
    "markdown_inline",
    "vim",
    "vimdoc",
    "python",
    "rust",
    "tsx",
    "typescript",
    "javascript",
    "nu",
    "css",
    "json",
    "comment",
    "gitignore",
    "kdl",
    "regex",
    "sql",
    "toml",
    "yaml",
}

-- 2. Install
require("nvim-treesitter").install(ts_parsers)

-- 3. Enable highlighting via autocmd
vim.api.nvim_create_autocmd("FileType", {
    pattern = ts_parsers,
    callback = function(args)
        vim.treesitter.start(args.buf) -- Enable highlighting
    end,
})

--- if pack get updated then also update treesitter
--- Simple
-- vim.api.nvim_create_autocmd("PackChanged", {
-- 	callback = function()
-- 		require("nvim-treesitter").update()
-- 	end,
-- })
-- Advance
vim.api.nvim_create_autocmd("PackChanged", {
    desc = "Handle nvim-treesitter updates",
    group = vim.api.nvim_create_augroup("nvim-treesitter-pack-changed-update-handler", { clear = true }),
    callback = function(event)
        -- if event.data.kind == "update" then
        if event.data.kind == "update" and event.data.spec.name == "nvim-treesitter" then
            vim.notify("nvim-treesitter updated, running TSUpdate...", vim.log.levels.INFO)
            local ok = pcall(vim.cmd, "TSUpdate")
            if ok then
                vim.notify("TSUpdate completed successfully!", vim.log.levels.INFO)
            else
                vim.notify("TSUpdate command not avaliable yet, skipping", vim.log.levels.WARN)
            end
        end
    end,
})

---------------------------------------------------------------- Picker

-- https://github.com/ibhagwan/fzf-lua#customization
require('fzf-lua').setup({
    -- <C-x> remove item from the list
    -- <M-a> Add all items to quickfix list
    -- <M-q> send all items to quickfix list
    -- :cdo s/word/replace/g
    -- :cdo s/word/replace/gc
    -- :cdo undo
    -- :cfdo  -> read about it
    -- ["<S-down>"]    = "preview-page-down",
    -- ["<S-up>"]      = "preview-page-up",
    -- ["<M-S-down>"]  = "preview-down",
    -- ["<M-S-up>"]    = "preview-up",
    marks = {
        marks = "%a",
    },
    keymap = {
        fzf = {
            ["ctrl-a"] = "toggle-all",
        },
    },
    actions = {
        files = {
            true,
            ["ctrl-q"] = require('fzf-lua').actions.file_sel_to_qf,
        },
    },
})
vim.keymap.set({ "n" }, "<leader>sb", require("fzf-lua").buffers, { desc = "Picker file" })
vim.keymap.set({ "n" }, "<leader>sf", require("fzf-lua").files, { desc = "Picker files" })
vim.keymap.set({ "n" }, "<leader>so", require("fzf-lua").oldfiles, { desc = "Picker oldfiles" })
vim.keymap.set({ "n" }, "<leader>sg", require("fzf-lua").live_grep, { desc = "Picker file" })
vim.keymap.set({ "n" }, "<leader>sc", require("fzf-lua").lgrep_curbuf, { desc = "Picker file" })
vim.keymap.set({ "n" }, "<leader>st", require("fzf-lua").git_status, { desc = "Picker file" })
-- open diagnostic window: <C-wd>
vim.keymap.set({ "n" }, "<leader>sd", require("fzf-lua").diagnostics_document, { desc = '[G]oto [D]iagnostics' })
-- live grep current buffer -> lgrep_curbuf
vim.keymap.set({ "n" }, "<leader>sq", require("fzf-lua").quickfix, { desc = "Picker file" })
vim.keymap.set({ "n" }, "<leader>sm", require("fzf-lua").marks, { desc = "Picker file" })
vim.keymap.set({ "n" }, "<leader>s?", require("fzf-lua").builtin, { desc = "Picker file" })

----------------------------------------------------------------

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Close all buffers and keep the open one only
-- vim.keymap.set("n", "<leader>b", "<cmd>:%bd|e#|bd#<CR>", { desc = "Close all buffers and keep the open one only" })

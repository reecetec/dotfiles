local opt = vim.opt

opt.background = "dark"

-- Use system clipboard for all operations
opt.clipboard = "unnamedplus"  


-- VISUAL IMPROVEMENTS
opt.number = true          -- Show line numbers
-- opt.relativenumber = true  
opt.cursorline = true      -- Highlight current line
opt.termguicolors = true   -- Enable 24-bit RGB colors
opt.signcolumn = "yes"     -- Always show sign column (prevents text shifting)

-- INDENTATION & TABS 
opt.tabstop = 4        -- Number of spaces a tab represents
opt.shiftwidth = 4     -- Number of spaces for each indentation level
opt.expandtab = true   -- Convert tabs to spaces
opt.autoindent = true  -- Copy indent from current line to new line
opt.smartindent = true -- Smart auto-indenting for new lines

-- SEARCH BEHAVIOR
opt.ignorecase = true  -- Ignore case in search
opt.smartcase = true   -- Override ignorecase if search has uppercase
opt.hlsearch = true   -- Do highlight all search matches 
opt.incsearch = true   -- Show search matches as you type

-- WINDOW BEHAVIOR
opt.splitright = true  -- Vertical splits open to the right
opt.splitbelow = true  -- Horizontal splits open below
opt.wrap = false       -- Don't wrap long lines (better for code)

-- PERFORMANCE & RESPONSIVENESS (Affects how quickly changes appear)
opt.updatetime = 250   -- Faster completion and diagnostics
opt.timeoutlen = 1000   -- Time to wait for mapped sequence

-- SCROLLING 
opt.scrolloff = 8      -- Keep 8 lines above/below cursor when scrolling
opt.sidescrolloff = 8  -- Keep 8 columns left/right of cursor

-- PERSISTENT UNDO 
opt.undofile = true
opt.undodir = vim.fn.expand('~/.config/nvim/undo')

-- DISABLE SWAPFILES 
opt.swapfile = false


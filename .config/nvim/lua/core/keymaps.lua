local keymap = vim.keymap.set

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- move text up and down 
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep visual selection when indenting
keymap("v", "<", "<gv", { desc = "Indent left and keep selection" })
keymap("v", ">", ">gv", { desc = "Indent right and keep selection" })

-- WINDOW MANAGEMENT 
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Navigate between windows 
keymap("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Navigate to down window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Navigate to up window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window" })

-- Resize windows with arrow keys
keymap("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize window up" })
keymap("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize window down" })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize window left" })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize window right" })

-- BUFFER NAVIGATION
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- File Explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- buffer mgmt
local opts = { noremap = true, silent = true }

keymap('n', '<leader>bp', '<Cmd>BufferPin<CR>', opts)
keymap("n", "<leader>bd", ":BufferClose<CR>", opts)
keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- copilot
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<cr>", { desc = "Open Copilot Chat" })

-- LSP keymaps

-- Go to definition
keymap("n", "gd", vim.lsp.buf.definition, opts)
-- Show documentation 
keymap("n", "K", vim.lsp.buf.hover, opts)
-- Show all diagnostics in a floating window
keymap("n", "<leader>dd", vim.diagnostic.open_float, opts)
-- Go to next diagnostic
keymap("n", "]d", vim.diagnostic.goto_next, opts)
-- Go to previous diagnostic
keymap("n", "[d", vim.diagnostic.goto_prev, opts)


-- toggleterm
keymap("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
keymap("t", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

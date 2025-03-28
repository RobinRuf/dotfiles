-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- New Tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>")
keymap.set("n", "<s-tab>", ":tabprev<Return>")

-- Split Window
keymap.set("n", "ss", ":split<Return>")
keymap.set("n", "sv", ":vsplit<Return>")

-- Move Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Move Line
keymap.set('v', "<s-k>", ":m '<-2<cr>gv=gv", opts) -- move line up
keymap.set('v', "<s-j>", ":m '>+1<cr>gv=gv", opts) -- move line down
keymap.set('n', "<A-k>", "", opts) -- override global keymap with empty cmd to disable it
keymap.set('n', "<A-j>", "", opts) -- override global keymap with empty cmd to disable it
keymap.set('i', "<A-k>", "", opts) -- override global keymap with empty cmd to disable it
keymap.set('i', "<A-j>", "", opts) -- override global keymap with empty cmd to disable it

keymap.set('', "<up>", "<nop>", { noremap = true })
keymap.set('', "<down>", "<nop>", { noremap = true })
keymap.set('i', "<up>", "<nop>", { noremap = true })
keymap.set('i', "<down>", "<nop>", { noremap = true })

-- Quickfix
keymap.set("n", "<C-c><C-n>", ":cnext<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-c><C-p>", ":cprev<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-c><C-c>", ":cclose<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-c><C-o>", ":copen<CR>", { noremap = true, silent = true })

keymap.set("n", "<leader>r", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Incremental Renaming" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

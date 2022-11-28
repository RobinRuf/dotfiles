require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
        return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
        require('macos')
vim.o.autoindent = true
vim.o.expantab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
end
if is_win then
        require('windows')
vim.o.autoindent = true
vim.o.expantab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
end

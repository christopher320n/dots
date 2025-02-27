local colorscheme = "catppuccin-mocha"
-- local colorscheme = "chalkboard"
local bufferlinebg_chalkboard = '#36454D';
local bufferlinebg_catppuccin = '#313445';
local bufferlinebg_fallback = '#111111';

local function getBufferlineBgForCurrentTheme()
  if colorscheme == 'chalkboard' then
    return bufferlinebg_chalkboard
  elseif colorscheme == 'catppuccin-mocha' then
    return bufferlinebg_catppuccin
  else
    return bufferlinebg_fallback 
  end
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " does not exist.")
  return
end

vim.cmd('hi NvimTreeWinSeparator guifg=#FFFFFF guibg=NONE')
vim.cmd('hi WinSeparator guifg=#FFFFFF guibg=NONE')
vim.cmd("hi WhichKeyNormal guibg=#1B2326")
vim.cmd("hi WhichKey guibg=#1B2326")
vim.cmd("hi BufferLineFill guifg=#FFFFFF guibg=" .. getBufferlineBgForCurrentTheme())
vim.cmd("hi BufferLineSeparator guifg=#36454D guibg=" .. getBufferlineBgForCurrentTheme())

vim.ui.select = function(items, opts, on_choice)
  opts = opts or {}
  opts.border = "rounded"  -- Set tooltip border style here: "single", "double", "rounded", etc.
  vim.ui._default_select(items, opts, on_choice)
end



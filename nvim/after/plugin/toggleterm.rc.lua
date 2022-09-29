local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end

local Terminal = require("toggleterm.terminal").Terminal

toggleterm.setup( {
  size = 10,
  open_mapping = [[<c-\>]],
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	hidden = true
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

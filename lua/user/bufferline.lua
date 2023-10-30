local M = {
  'akinsho/bufferline.nvim',
  version = "*",
  event = "VeryLazy",
  dependencies = 'nvim-tree/nvim-web-devicons'
}


function M.config()
  require("bufferline").setup {
  }
end

return M

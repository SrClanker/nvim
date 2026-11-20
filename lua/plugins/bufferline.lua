return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = function()
    return {
      --highlights = require("catppuccin.special.bufferline").get_theme(),
      options = {
        diagnostics = "nvim_lsp",
        buffer_close_icon = "",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = false,
          },
        },
      },
    }
  end,
}

require("config.options")
require("config.lazy")

require("transparent").clear_prefix("NeoTree")
require("transparent").clear_prefix("lualine")
require("transparent").clear_prefix("BufferLine")
require("transparent").setup({
  extra_groups = {
    "NormalFloat",
    "NvimTreeNormal",
  },
})

require("nvim-treesitter").install({
  "c",
  "lua",
  "rust",
})

require("nvim-treesitter").setup({
  install_dir = vim.fn.stdpath("data") .. "/site",
  indent = { enable = true },
})

-- install with aur-helper
vim.lsp.config("qml-language-server", {
  cmd = { "qml-language-server" },
  filetypes = { "qml", "qmljs" },
  root_markers = { { "qmldir", "shell.qml" }, ".git" },
})
vim.lsp.enable("qml-language-server")

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "hl" },
      },
    },
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "<filetype>" },
  callback = function()
    vim.treesitter.start()
  end,
})

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

vim.cmd.colorscheme("default")
vim.cmd("Neotree")

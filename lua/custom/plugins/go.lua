-- Golang

return {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require('go').setup {
      lsp_cfg = false
      -- other setups...
    }
    local cfg = require 'go.lsp'.config() -- config() return the go.nvim gopls setup

    require('lspconfig').gopls.setup(cfg)

    vim.api.nvim_create_user_command("GoFormat", function()
      require('go.format').goimport()
    end, {})
  end,
  event = { "CmdlineEnter" },
  ft = { "go", 'gomod', 'templ' },
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}

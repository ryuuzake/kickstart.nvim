vim.g.copilot_assume_mapped = true

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,   -- overrides default
        terraform = false, -- disallow specific filetype
        sh = function()
          if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
            -- disable for .env files
            return false
          end
          return true
        end,
      },
      copilot_node_command = vim.fn.expand(
        "$HOME/Library/Application Support/fnm/node-versions/v18.16.0/installation/bin/node"),
    })
  end,
}

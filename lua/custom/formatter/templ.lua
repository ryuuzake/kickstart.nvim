local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
  method = FORMATTING,
  generator_opts = {
    command = "templ",
    args = {
      "fmt",
    },
    to_stdin = true,
  },
  filetypes = { "templ" },
  factory = h.formatter_factory,
})
-- vim: ts=2 sts=2 sw=2 et

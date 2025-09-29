return require('conform').setup {
  formatters_by_ft = {
    templ = { 'templ' },
  },
  formatters = {
    templ = {
      command = 'templ',
      args = { 'fmt', '-' },
      stdin = true,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et

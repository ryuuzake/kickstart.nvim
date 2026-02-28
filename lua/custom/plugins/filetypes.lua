return {
  {
    'Custom filetype mappings',
    config = function()
      vim.filetype.add {
        extension = {
          axml = 'xml',
          acss = 'css',
        },
      }
    end,
  },
}

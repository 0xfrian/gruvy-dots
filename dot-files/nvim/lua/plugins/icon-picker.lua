-- icon-picker
-- https://github.com/ziontee113/icon-picker.nvim

return {
  'ziontee113/icon-picker.nvim',
  config = function()
    require('icon-picker').setup { disable_legacy_commands = true }
  end,
}

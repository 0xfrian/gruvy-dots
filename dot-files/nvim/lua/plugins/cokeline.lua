-- cokeline
-- https://github.com/willothy/nvim-cokeline

return {
  'willothy/nvim-cokeline',
  config = function()
    require('cokeline').setup {
      -- Set sidebar
      sidebar = {
        filetype = 'NvimTree',
        components = {
          {
            text = '  File Explorer',
            style = 'bold',
          },
        },
      },

      -- Set tab colors
      default_hl = {
        fg = function(buffer)
          return buffer.is_focused and '#FBF1C7' or '#A89984'
        end,
        bg = function(buffer)
          return buffer.is_focused and '#665C54' or '#3C3836'
        end,
      },

      -- Set individual tab components
      components = {
        { text = ' ' },
        {
          text = function(buffer)
            return buffer.devicon.icon
          end,
          fg = function(buffer)
            return buffer.devicon.color
          end,
        },
        {
          text = function(buffer)
            return buffer.filename .. ' '
          end,
        },
        {
          text = function(buffer)
            return buffer.is_modified and '●' or ''
          end,
          fg = function(buffer)
            return buffer.is_modified and '#8be9fd' or nil
          end,
          delete_buffer_on_left_click = false,
          truncation = { priority = 1 },
        },
        { text = ' ' },
      },
    }
  end,
}

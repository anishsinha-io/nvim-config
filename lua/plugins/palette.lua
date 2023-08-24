-- local command_center = require("FeiyouG/command_center.nvim")
-- local telescope = require("telescope")
-- local noremap = { noremap = true }
--
-- command_center.add({
--   {
--     desc = "Open command_center",
--     cmd = "<CMD>Telescope command_center<CR>",
--     keys = {
--       { "n", "<Leader>fc", noremap },
--       { "v", "<Leader>fc", noremap },
--
--       -- If ever hesitate when using telescope start with <leader>f,
--       -- also open command center
--       { "n", "<Leader>f", noremap },
--       { "v", "<Leader>f", noremap },
--     },
--   },
-- }, command_center.mode.REGISTER_ONLY)

local M = {
  {
    "mrjones2014/legendary.nvim",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
  },
  {
    "folke/flash.nvim",
    keys = {
      {
        "s",
        function()
          require("flash").jump()
        end,
        mode = { "n", "x", "o" },
        desc = "Jump forwards",
      },
      {
        "S",
        function()
          require("flash").jump({ search = { forward = false } })
        end,
        mode = { "n", "x", "o" },
        desc = "Jump backwards",
      },
    },
  },
}

-- in a plugin spec:

-- where you set up legendary.nvim
-- now the keymaps from the `flash.nvim` plugin spec will be automatically loaded

return M

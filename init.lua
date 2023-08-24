-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("legendary").setup({ lazy_nvim = { auto_register = true } })

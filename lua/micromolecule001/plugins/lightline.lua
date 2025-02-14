return {
  {
    "rakr/vim-one", -- Provides onedark theme compatible with lightline
    config = function()
      vim.g.one_allow_italics = 1 -- Enable italics if desired
      vim.cmd.colorscheme("one") -- Use the `onedark` theme from this plugin
    end,
  },
  {
    "itchyny/lightline.vim",
    config = function()
      vim.g.lightline = {
        colorscheme = "one", -- Set lightline colorscheme to `one` (provided by vim-one)
        active = {
          left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified" } },
        },
        component_function = {
          gitbranch = "fugitive#head", -- Display Git branch
        },
      }
    end,
  },
  {
    "tpope/vim-fugitive", -- Required for git branch functionality
  },
}


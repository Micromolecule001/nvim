return {
  {
    "itchyny/lightline.vim",
    config = function()
      vim.g.lightline = {
        colorscheme = "auto",
        active = {
          left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified" } },
        },
        component_function = {
          gitbranch = "fugitive#head", -- Display Git branch
        },
      }
    end,
  }
}


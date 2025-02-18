return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Main options --
        transparent = true,       -- Show/hide background
        term_colors = true,       -- Change terminal color as per the selected theme style
        ending_tildes = false,    -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
      })

      require('cyberdream').load()
    end
  }
}


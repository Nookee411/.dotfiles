return {
  "echasnovski/mini.animate",
  opts = {
    -- Scroll animations that work with your <C-d> and <C-u> mappings
    scroll = {
      enable = true,
      timing = require("mini.animate").gen_timing.linear({ duration = 50, unit = "total" }),
      -- subscroll = function()
      --   local animate = require("mini.animate")
      --   return animate.gen_subscroll.equal({
      --     predicate = function(total_scroll)
      --       return math.abs(total_scroll) > 5
      --     end,
      --   })
      -- end,
      -- Execute zz after scroll animation completes
      -- execute_after = function()
      --   vim.cmd("normal! zz")
      -- end,
    },
  },
}

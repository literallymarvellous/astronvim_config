return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- Http rest
  {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          show_http_info = true,
          show_headers = true,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        custom_dynamic_variables = {},
        yank_dry_run = true,
      })
    end
  },

  -- Rust tools
  -- { "simrat39/rust-tools.nvim", lazy = false,  },

  -- Huff syntax highlighting
  { "wuwe1/vim-huff",                               lazy = false },

  -- Rainbow brackets
  -- { "p00f/nvim-ts-rainbow",                         lazy = false },

  -- Scrolling
  { "declancm/cinnamon.nvim",                       event = "VeryLazy",  opts = {} },

  --Diagnostics
  { "https://git.sr.ht/~whynothugo/lsp_lines.nvim", event = "LspAttach", opts = {} },
  { "nullchilly/fsread.nvim",                       lazy = false },

  {
    "zbirenbaum/neodim",
    event = "LspAttach",
    opts = {
      alpha = 0.75,
      blend_color = "#000000",
      update_in_insert = {
        enable = true,
        delay = 100,
      },
      hide = {
        virtual_text = true,
        signs = true,
        underline = true,
      },
    },
  },

  { 'kevinhwang91/nvim-hlslens' },
  {
    "okuuva/auto-save.nvim",
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
    keys = {
      { "<leader>ns", ":ASToggle<CR>", desc = "Toggle auto-save" },
    },
  },
  -- { "lvimuser/lsp-inlayhints.nvim", config = true },
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   opts = {
  --     filesystem = {
  --       filtered_items = {
  --         visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
  --         hide_dotfiles = true,
  --         hide_gitignored = true,
  --       },
  --     }
  --   }
  -- },
}

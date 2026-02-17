return {
  -- Intelephense LSP for PHP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              licenceKey = os.getenv("INTELEPHENSE_LICENSE_KEY"),
            },
          },
        },
      },
    },
  },

  -- PHP CS Fixer for formatting on save
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
      formatters = {
        php_cs_fixer = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--config=" .. vim.fn.expand("~/Projects/partfiniti/web/.php-cs-fixer.dist.php"),
            "$FILENAME",
          },
          stdin = false,
        },
      },
    },
  },

  -- Optional: phpcs for style linting (PSR12 is closest to Symfony)
  -- Uncomment if you want inline style diagnostics
  -- {
  --   "mfussenegger/nvim-lint",
  --   opts = {
  --     linters_by_ft = {
  --       php = { "phpcs" },
  --     },
  --   },
  -- },
}
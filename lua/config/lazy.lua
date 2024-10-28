local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    {
      "neovim/nvim-lspconfig",
      opts = function(_, opts)
        opts.servers = opts.servers or {}

        opts.servers.tsserver = {
          on_attach = function(client, bufnr)
            local opts = { noremap = true, silent = true }
            vim.api.nvim_buf_set_keymap(
              bufnr,
              "n",
              "gd",
              "<Cmd>lua vim.lsp.buf.definition()<CR>",
              opts
            )
            vim.api.nvim_buf_set_keymap(
              bufnr,
              "n",
              "K",
              "<Cmd>lua vim.lsp.buf.hover()<CR>",
              opts
            )
            vim.api.nvim_buf_set_keymap(
              bufnr,
              "n",
              "<leader>rn",
              "<Cmd>lua vim.lsp.buf.rename()<CR>",
              opts
            )
            vim.api.nvim_buf_set_keymap(
              bufnr,
              "n",
              "<leader>f",
              "<Cmd>lua vim.lsp.buf.format { async = true }<CR>",
              opts
            )
          end,
          flags = {
            debounce_text_changes = 150,
          },
        }
      end,
    },
    {
      "sainnhe/everforest",
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.everforest_enable_italic = true
        vim.cmd.colorscheme("everforest")
      end,
    },
    {
      "nvim-telescope/telescope.nvim",
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "package%-lock.json",
        },
      },
    },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },

    -- Configure neo-tree to show line numbers and hidden files
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
        filesystem = {
          filtered_items = {
            visible = true,          -- Show all items, including hidden files
            hide_dotfiles = false,   -- Do not hide dotfiles
            hide_gitignored = false, -- Do not hide gitignored files
          },
        },
        event_handlers = {
          {
            event = "neo_tree_buffer_enter",
            handler = function(arg)
              vim.cmd [[
                setlocal relativenumber
              ]]
            end,
          }
        },
      },
    },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
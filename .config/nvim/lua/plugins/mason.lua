return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
    ensure_installed = {
      "ruff",
      "pyright",
      "yamlls",
      "dockerls",
      "docker_compose_language_service",
      "helm_ls", 
    },
    automatic_installation = true,
  },
}

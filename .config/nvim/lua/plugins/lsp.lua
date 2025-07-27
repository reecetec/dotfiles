return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Ruff for linting/formatting/imports
      lspconfig.ruff.setup {}
      
      -- Pyright for type checking, go-to, completion, hover
      lspconfig.pyright.setup {
        settings = {
          pyright = {
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              ignore = { '*' },
            },
          },
        },
      }
      
      -- YAML Language Server (for Kubernetes manifests, Docker Compose, etc.)
      lspconfig.yamlls.setup {
        settings = {
          yaml = {
            schemas = {
              -- Kubernetes schemas
              ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
              ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yml",
              ["kubernetes"] = "/*.yaml",
              -- Docker Compose schema
              ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = {
                "/docker-compose*.yml",
                "/docker-compose*.yaml",
                "/compose*.yml",
                "/compose*.yaml",
              },
              -- GitHub Actions
              ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*.{yml,yaml}",
              -- Argo
              -- ["https://json.schemastore.org/argo-workflow.json"] = "/*.{yml,yaml}",
              -- Ansible
              -- ["https://json.schemastore.org/ansible-stable-2.9.json"] = "/tasks/*.{yml,yaml}",
            },
            validate = true,
            completion = true,
            hover = true,
          },
        },
      }
      
      -- Dockerfile Language Server
      lspconfig.dockerls.setup {}
      
      -- Docker Compose Language Server
      lspconfig.docker_compose_language_service.setup {}
      
      -- Helm Language Server 
      lspconfig.helm_ls.setup {
        settings = {
          ['helm-ls'] = {
            yamlls = {
              path = "yaml-language-server",
            },
          },
        },
      }
      
      -- Disable Ruff hover so Pyright provides hover docs
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == 'ruff' then
            client.server_capabilities.hoverProvider = false
          end
        end,
        desc = 'LSP: Disable hover capability from Ruff',
      })
    end,
  },
}

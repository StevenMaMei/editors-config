return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ft = { "markdown" },
  opts = {
    heading = {
      enabled = true,
      icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
    },
    code = {
      enabled = true,
      style = "full",
      border = "thin",
    },
    bullet = {
      enabled = true,
    },
    checkbox = {
      enabled = true,
    },
    dash = {
      enabled = true,
    },
  },
  keys = {
    { "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", desc = "Toggle markdown rendering" },
    { "<leader>me", "<cmd>RenderMarkdown expand<CR>", desc = "Expand markdown rendering" },
    { "<leader>mc", "<cmd>RenderMarkdown contract<CR>", desc = "Contract markdown rendering" },
    {
      "<leader>ml",
      function()
        -- Follow markdown link under cursor: [text](path)
        local line = vim.api.nvim_get_current_line()
        local col = vim.api.nvim_win_get_cursor(0)[2] + 1
        for link in line:gmatch("%[.-%]%((.-)%)") do
          local start, finish = line:find("%[.-%]%(" .. link:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1") .. "%)")
          if start and col >= start and col <= finish then
            -- Strip anchor fragments
            local path = link:gsub("#.*$", "")
            if path ~= "" then
              vim.cmd("edit " .. vim.fn.fnameescape(path))
            end
            return
          end
        end
        print("No markdown link under cursor")
      end,
      ft = "markdown",
      desc = "Follow markdown link under cursor",
    },
    {
      "<leader>mg",
      function()
        -- Find nearest directory containing index.html (docsify root)
        local dir = vim.fn.expand("%:p:h")
        while dir ~= "/" do
          if vim.fn.filereadable(dir .. "/index.html") == 1 then
            break
          end
          dir = vim.fn.fnamemodify(dir, ":h")
        end
        if dir == "/" then
          dir = vim.fn.expand("%:p:h")
        end
        vim.fn.jobstart({ "npx", "docsify-cli", "serve", dir, "--open" }, { detach = true })
        print("Docsify server started at " .. dir)
      end,
      ft = "markdown",
      desc = "Preview markdown with docsify (browser)",
    },
    {
      "<leader>mG",
      function()
        vim.fn.jobstart({ "pkill", "-f", "docsify" })
        print("Docsify server stopped")
      end,
      desc = "Stop docsify server",
    },
  },
}

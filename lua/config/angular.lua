local ok, mason_registry = pcall(require, "mason-registry")
if not ok then
  vim.notify("mason-registry could not be loaded")
  return
end

local angularls_path = mason_registry.get_package("angular-language-server"):get_install_path()

print("angularls_path", angularls_path)

local cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  table.concat({
    vim.uv.cwd(),
    angularls_path,
  }, ","),
  "--ngProbeLocations",
  table.concat({
    vim.uv.cwd(),
    angularls_path .. "/node_modules/@angular/language-server",
  }, ","),
}

local config = {
  cmd = cmd,
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = cmd
  end,
}

return config

{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.neovim ];
    file = {  
      "/home/baguuc/.config/nvim/stylua.toml" = {
        source = ./config/stylua.toml;
      };
      "/home/baguuc/.config/nvim/lua/plugins/lsp.lua" = {
        source = ./config/lua/plugins/lsp.lua;
      };
      "/home/baguuc/.config/nvim/lua/plugins/colorscheme.lua" = {
        source = ./config/lua/plugins/colorscheme.lua;
      };
      "/home/baguuc/.config/nvim/lua/config/options.lua" = {
        source = ./config/lua/config/options.lua;
      };
      "/home/baguuc/.config/nvim/lua/config/autocmds.lua" = {
        source = ./config/lua/config/autocmds.lua;
      };
      "/home/baguuc/.config/nvim/lua/config/lazy.lua" = {
        source = ./config/lua/config/lazy.lua;
      };
      "/home/baguuc/.config/nvim/lua/config/keymaps.lua" = {
        source = ./config/lua/config/keymaps.lua;
      };
      "/home/baguuc/.config/nvim/init.lua" = {
        source = ./config/init.lua;
      };
      "/home/baguuc/.config/nvim/.neoconf.json" = {
        source = ./config/.neoconf.json;
      };
      "/home/baguuc/.config/nvim/lazy-lock.json" = {
        source = ./config/lazy-lock.json;
      };
      "/home/baguuc/.config/nvim/lazyvim.json" = {
        source = ./config/lazyvim.json;
      };
    };
  };
}

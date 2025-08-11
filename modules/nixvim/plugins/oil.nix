{
  flake.modules.nixvim.oil = {
    plugins.oil = {
      enable = true;

      settings = {
        default_file_explorer = true;
        delete_to_trash = true;
        skip_confirm_for_simple_edits = true;

        view_options = {
          natural_order = true;
          show_hidden = true;
        };

        win_options.wrap = true;
      };
    };

    keymaps = [
      {
        action = "<cmd>Oil<CR>";
        key = "-";
        mode = "n";
        options = {
          desc = "Open parent directory";
        };
      }
    ];
  };
}

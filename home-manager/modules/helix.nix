{ config, pkgs, ... }:
{
  programs.helix.enable = true;
  programs.helix.settings = {
    # theme = "everforest_dark";
    theme = "gruvbox";

    editor = {
      mouse = true;
      auto-save = true;
      line-number = "relative";
      rulers = [ 100 ];
      cursorline = true;
      cursorcolumn = true;
      bufferline = "always";

      cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };

      soft-wrap = {
        enable = true;
        wrap-indicator = "↩ ";
      };

      whitespace = {
        render = {
          space = "all";
          tab = "all";
          newline = "none";
        };
        characters = {
          space = " ";
          nbsp = "⍽";
          tab = "→";
          tabpad = "·";
          newline = "⏎";
        };
      };

      statusline = {
        left = [
          "mode"
          "spinner"
          "diagnostics"
        ];
        center = [
          "file-name"
          "separator"
          "version-control"
          "separator"
        ];
        separator = "│";
        mode.normal = "NORMAL";
        mode.insert = "INSERT";
        mode.select = "SELECT";
      };

      lsp.display-inlay-hints = false;

      indent-guides = {
        render = true;
        character = "╎";
        skip-levels = 1;
      };

      file-picker.hidden = false;
    };

    keys = {
      normal = {
        l = "insert_mode";
        esc = [
          "collapse_selection"
          "keep_primary_selection"
        ];
        n = "move_char_left";
        o = "move_char_right";
        e = "move_line_down";
        i = "move_line_up";
        q = "goto_line_end";
        h = "goto_line_start";
        j = "search_next";
        J = "search_prev";
        f = "open_below";
        F = "open_above";
        "C-o" = ":buffer-close-others";
        "C-i" = ":buffer-close";
        p = "paste_before";
        y = "yank_main_selection_to_clipboard";

        up = "no_op";
        down = "no_op";
        left = "no_op";
        right = "no_op";
      };

      select = {
        n = "extend_char_left";
        o = "extend_char_right";
        e = "extend_line_down";
        i = "extend_line_up";
        q = "goto_line_end";
        h = "goto_line_start";

        up = "no_op";
        down = "no_op";
        left = "no_op";
        right = "no_op";
      };

      insert = {
        "S-ret" = "open_below";
      };
    };
  };
}

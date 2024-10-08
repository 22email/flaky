{config, ...}: {
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = true;
        grace = 1;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = with config.lib.stylix.colors; [
        {
          size = "200, 50";
          rounding = 0;
          position = "0, 0";
          monitor = "";
          dots_center = true;
          dots_size = 0.2;
          dots_spacing = 0.25;
          fade_on_empty = false;
          font_color = "rgb(${base05})";
          inner_color = "rgb(${base01})";
          outer_color = "rgb(${base00})";
          check_color = "rgb(${base09})";
          fail_color = "rgb(${base08})";
          outline_thickness = 2;
          placeholder_text = ''<span foreground="##${base05}" font-family="ZedMono NF">Password...</span>'';
          fail_text = ''<span foreground="##${base08}" font-family="ZedMono NF">Failed to Authenticate</span>'';
          shadow_passes = 2;
        }
      ];
    };
  };
}

{lib, ...}: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = lib.mkForce "BlexMonoNerdFont:size=10.5";
        box-drawings-uses-font-glyphs = "no";
        pad = "16x16";
      };

      cursor = {
        color = "111516 c2c4c2";
      };
    };
  };
}

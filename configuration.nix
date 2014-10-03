{ config, pkgs, ... }:

{
  imports = [ <nixos/modules/installer/virtualbox-demo.nix> ];
  fonts = {
     enableFontDir = true;
     enableGhostscriptFonts = true;
     fonts = with pkgs; [
       corefonts  # Micrsoft free fonts
       inconsolata  # monospaced
       vistafonts  # monospaced
       ubuntu_font_family  # Ubuntu fonts
     ];
   };
   environment.shells = [ "/var/run/current-system/sw/bin/bash"
                          "/run/current-system/sw/bin/zsh" ];
  environment.systemPackages = [
     pkgs.zsh
     pkgs.emacs
     pkgs.git
     pkgs.zsh
     pkgs.docker
   ];
  i18n.consoleKeyMap = "en-latin9";
  services.locate = { enable = true; period = "15 12 * * *"; };
}

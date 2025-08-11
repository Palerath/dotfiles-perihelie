{config, pkgs, ...}:
{
   home.packages = with pkgs; [
      emacs-all-the-icons-fonts

      #LSPs
      nil
      rust-analyzer
      python3Packages.python-lsp-server
      nodePackages.typescript-language-server
   ];

   home.sessionVariables = {
      DOOMDIR = "${config.xdg.configHome}/doom";
      EMACSDIR = "${config.xdg.configHome}/emacs";
      DOOMLOCALDIR = "${config.xdg.dataHome}/doom";
      DOOMPROFILELOADFILE = "${config.xdg.stateHome}/doom-profiles-load.el";
   };

   programs.emacs = {
      enable = true;
   };
}

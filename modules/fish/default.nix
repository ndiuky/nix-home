{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
      set fish_cursor_default     block      blink
      set fish_cursor_insert      line       blink
      set fish_cursor_replace_one underscore blink
      set fish_cursor_visual      block

      function fish_user_key_bindings
        fish_default_key_bindings -M insert
        fish_vi_key_bindings --no-erase insert
      end
    '';

    shellAliases = {
      "h" = "history";
      "c" = "clear";
      "s" = "sudo -i";

      # Git
      "gs" = "git status";
      "ga" = "git add";
      "ga." = "git add -A";
      "gch" = "git checkout";
      "gchb" = "git checkout -b";
      "gc" = "git commit";
      "gcm" = "git commit -m";
      "gb" = "git branch";
      "mrmaster" =
        "git checkout master; git pull; git merge dev; git push; git checkout dev";
      "gfr" = "git fetch upstream && git rebase upstream/master";

      # Docker
      "di" = "docker images";
      "dr" = "docker run";
      "db" = "docker build";
      "dp" = "docker ps";
      "dps" = "docker ps -a";
      "drmi" = "docker rmi";
      "drm" = "docker rm";
    };
  };
}

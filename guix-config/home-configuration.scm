;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.


(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services)
             (gnu home services shells)
             (gnu home services dotfiles))

(home-environment
  ;; Below is the list of packages that will show up in your
  ;; Home profile, under ~/.guix-home/profile.
  (packages (specifications->packages (list "elogind"
                                            "gcc-toolchain@11"
                                            "libvterm"
                                            "cmake"
                                            "brightnessctl"
                                            "emacs-ac-ispell"
                                            "ispell"
                                            "font-google-noto-emoji"
                                            "font-google-noto"
                                            "font-gnu-unifont"
                                            "font-gnu-freefont"
                                            "emacs-nerd-icons"
                                            "fontconfig"
                                            "curl"
                                            "fish"
                                            "foot"
                                            "swaybg"
                                            "swaynotificationcenter"
                                            "swaylock-effects"
                                            "swayidle"
                                            "swayfx"
                                            "vim"
                                            "fd"
                                            "findutils"
                                            "ripgrep"
                                            "git"
                                            "tar"
                                            "qutebrowser")))
  ;; Below is the list of Home services.  To search for available
  ;; services, run 'guix home search KEYWORD' in a terminal.
  (services
   (list
    ;; (service home-bash-service-type
    ;;          (home-bash-configuration
    ;;           (bashrc (list (local-file
    ;;                          "/home/daniel/.bashrc"
    ;;                          "bashrc")))
    ;;           ))
    ;; (service home-fish-service-type
    ;;          (home-fish-configuration
    ;;           (config (list
    ;;                    ;; curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    ;;                    (local-file "/home/daniel/.config/fish/functions/fisher.fish" "functions-fisher")
    ;;                    (local-file "/home/daniel/.config/fish/completions/fisher.fish" "completions-fisher")
    ;;                    (local-file "/home/daniel/.config/fish/config.fish" "config")
    ;;                    (local-file "/home/daniel/.config/fish/fish-daniel.fish" "config")
    ;;                   ))))
;;     (service home-fish-service-type
;;              (home-fish-configuration
;;               (config (list
;;                (plain-file "config"
;;                            "
;; set -U pure_show_jobs true
;; fish_add_path $HOME/.config/emacs/bin
;; set -U XDG_CONFIG_DIR ~/.config
;;                            ")
;; ;;                (plain-file "functions-fish_greeting"
;; ;;                            "
;; ;; function fish_greeting
;; ;;     _pure_check_for_new_release
;; ;;     echo \"Welcome to $hostname, Comrade. ☭\"
;; ;; end
;; ;;                            ")
;;               ))))
    ;; (service home-xdg-configuration-files-service-type
    ;;          ;; `(("fish/functions/fish_greeting.fish" ,(local-file "/home/daniel/.dotfiles/.config/fish/functions/fish_greeting.fish"))
    ;;          `(("fish/" (directories '("/home/daniel/.dotfiles/.config/fish")))
    ;;            )
    ;;          )
    (service home-dotfiles-service-type
             (home-dotfiles-configuration
               (directories '("/home/daniel/.dotfiles"))
               ))
    )))

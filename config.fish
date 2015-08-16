function fish_user_key_bindings
         bind \ei nextd-or-forward-word
         bind \en prevd-or-backward-word
         bind \ex delete-char
         bind \ey history-token-search-backward

         bind \eu up-or-search
         bind \ee down-or-search
         bind \ek kill-line
         bind \ed kill-word
         bind \ea beginning-of-line
         bind \ey end-of-line
end

alias ec="emacsclient -nw"
# Run this to get the completions updated
# fish_update_completions
module Dotfiles
  class Installer < Thor
    include Thor::Actions

    namespace :dotfiles

    def self.source_root
      File.expand_path "."
    end

    desc "link", "link dotfiles to proper places"
    def link
      # Vim
      link_file "vimrc", "~/.vimrc.local", :symbolic => true
      link_file "gvimrc", "~/.gvimrc.local", :symbolic => true
      link_file "mhfs.vim", "~/.vim/colors/mhfs.vim", :symbolic => true

      # Zsh
      link_file "zsh/functions", "~/.oh-my-zsh/custom/functions", :symbolic => true
      link_file "zsh/functions.zsh", "~/.oh-my-zsh/custom/functions.zsh", :symbolic => true

      # Rubygems
      link_file "gemrc", "~/.gemrc", :symbolic => true

      # Irb
      link_file "irbrc", "~/.irbrc", :symbolic => true

      # Git
      @github_token = ask("Github token:")
      template "templates/gitconfig.tt", "./compiled/gitconfig"

      link_file "compiled/gitconfig", "~/.gitconfig"
      link_file "gitignore", "~/.gitignore", :symbolic => true
    end
  end
end

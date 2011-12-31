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
      link_file "vim/vimrc", "~/.vimrc.after", :symbolic => true
      link_file "vim/gvimrc", "~/.gvimrc.after", :symbolic => true
      link_file "vim/mhfs.vim", "~/.vim/colors/mhfs.vim", :symbolic => true

      # Zsh
      link_file "zsh/mhfs",   "#{ENV["ZSH"]}/custom/plugins/mhfs", :symbolic => true
      link_file "zsh/zshenv", "~/.zshenv", :symbolic => true

      # Ruby
      link_file "ruby/gemrc", "~/.gemrc", :symbolic => true
      link_file "ruby/irbrc", "~/.irbrc", :symbolic => true
      link_file "ruby/pryrc", "~/.pryrc", :symbolic => true

      # Ack
      link_file "ackrc", "~/.ackrc", :symbolic => true

      # Git
      @github_token = ask("Github token:")
      template "git/templates/gitconfig.tt", "./compiled/gitconfig"

      link_file "compiled/gitconfig", "~/.gitconfig"
      link_file "git/gitignore", "~/.gitignore", :symbolic => true
    end
  end
end

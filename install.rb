require 'rake'
require 'fileutils'

puts "Installing Prezto (ZSH Enhancements)..."

run %{ ln -nfs "$HOME/dotmatrix/.zprezto" "${ZDOTDIR:-$HOME}/.zprezto" }
run %{ ln -nfs "$HOME/dotmatrix/.zsh.after" "${ZDOTDIR:-$HOME}/.zsh.after" }
# run %{ ln -nfs "$HOME/dotmatrix/.zshrc" "${ZDOTDIR:-$HOME}/.zshrc" }

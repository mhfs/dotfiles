# Set PATH, MANPATH, etc., for Homebrew (macOS only)
if [[ "$(uname)" == "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Initialize mise (use whichever is available)
if command -v mise &> /dev/null; then
    eval "$(mise activate zsh)"
fi

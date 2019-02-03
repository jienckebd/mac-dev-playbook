alias ll="ls -lah"

eval "$(docker-machine env docksal)"

export PATH="${PATH}:${HOME}/Library/Python/2.7/bin"
export PATH="${PATH}:${HOME}/.composer/vendor/bin"

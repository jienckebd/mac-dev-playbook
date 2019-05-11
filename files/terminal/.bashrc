alias ll="ls -lah"
alias aws_connect="ssh -i \"~/.ssh/AWS3.pem\" ec2-user@ec2-3-90-171-243.compute-1.amazonaws.com"

eval "$(docker-machine env docksal)"

export PATH="${PATH}:${HOME}/Library/Python/2.7/bin"
export PATH="${PATH}:${HOME}/.composer/vendor/bin"

alias aws_ecr_login="$(aws ecr get-login --no-include-email --region us-east-1)"

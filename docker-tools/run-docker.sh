#!/usr/bin/env bash

function help
{
    cat << EOF
$0 <container name> [commands]

See README.md for details
EOF
    exit 1
}

if [ "$#" -le "0" ]; then
    help "$0"
fi

container="$1"
shift

user=$(id -u)
group=$(id -g)

if [ "$*" == "" ]; then
    commands=("bash")
else
    commands=("$@")
fi

docker run -e HOME=/userhome --rm -v "$HOME:/userhome" \
           -v "$PWD:/current" \
           -tiu "${user}:${group}" "$container" "${commands[@]}"
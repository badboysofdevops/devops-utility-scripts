# Tools

This has mix of small utility tools for DevOps and development
use. 

Adapt these to your own use, fork, create pull requests, report issues
etc. 

## Content

### docker-tools

#### run-docker.sh

_run-docker.sh_ executes the container so that the user and group ids are same as
at host machine. The user's home directory is set to be volume at _/userhome_ and 
current directory at _/current_. The HOME env variable is set to _/userhome_.

This is good util for e.g. debugging or running some commands at current directory.
That can be e.g compiling something.

*Usage*
`./run-docker.sh <container> [<commands>]`

Container is full container name. Commands are optional and they are executed
same way as with command `docker run container command parameter parameter`.

## Teemu's comment

I hate manual work. You should also. The biggest motivation for most of my
scrpits are to avoid manual work. I'm lazy bastard. 
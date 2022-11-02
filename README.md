> This is a public repo for private use and of no interest to anyone

I am trying to test a simple docker image for a non-updated HTCondor cluster wherein I am not in the docker usergroup and all that issue.

There's something funky going on... so I am adding a layer at the time

## HTCondor to Dockerfile
The command to run docker is `docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`.
In the docker universe of HTCondor `OPTIONS` corresponds to

* `container_service_names` is `--name`
* `condor_container_port` is the port to publish, which was exposed in the Dockerfile

But these are not available in HTCondor v8.
The `COMMAND` corresponds to `executable`, which is a command or script that is run in the container,
with arguments `arguments`.

The problem is `--user` is not available
and the user running the command I think is guest.
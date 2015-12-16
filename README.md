# lantern
Lantern docker image for x64 Linux

This docker image makes it easy to run Lantern in a server environment (no GUI) and share the proxy with others. See details at: https://github.com/getlantern/lantern/wiki/Installation:-server

Usage:
    docker run -d -p 8787:8787 kent72/lantern

Tested on a Synology 415+, should also work for other Synology atom NAS models or amd64 Linux Boxes.

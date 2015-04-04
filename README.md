## Background

Im trying to get this to work:

Consul is running in a container, an other container uses it as --dns
Sometimes in this container a golang call of `net.LookupSRV()` hangs for
30 sec ...

This is just a quick and dirty tool, to time dns SRV queries.

## download

Use the os specific binary from the [releases](https://github.com/lalyos/lookupsrv/releases)

## oneliner install

```
curl -L https://github.com/lalyos/lookupsrv/releases/download/v0.0.1/lookupsrv_0.0.1_$(uname).tgz| tar -xzv -C /usr/local/bin
```

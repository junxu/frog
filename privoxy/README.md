## USAGE
```
$ export ADDRESS=<shadowsocks_ip>:<port>
$ ./start_privoxy.sh
```

This container exposes port **8119** on host.

Set docker start environment variables.
```
$ mkdir /usr/lib/systemd/system/docker.service.d
$ cat > proxy.conf <<EOF
[Service]
Environment="GOMAXPROCS=$(nproc)" "HTTPS_PROXY=http://<privoxy_ip>:8119" "HTTP_PROXY=http://<privoxy_ip>:8119"
EOF
```

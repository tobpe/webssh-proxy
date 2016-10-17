# webssh-proxy (python3 based)

Union of Shellinabox Frontend and Asyncssh Backend, using WebSocket to build SSH Tunnel, providing more features compared with original Shellinabox, such as Secure FTP.

--------------------------------------------------------

*Features of webssh-proxy*:

- Inherit from Shellinabox: UTF-8 Support, Color Terminal, Beep Sound, OnScreen Keyboard, ..
- Tunnel Feature Support: Able to connect an another SSH server
- Quick Cleaning: Able to detect the abnormally exited session and instantly close the corresponding session resources (Shellinabox will hang running processes for a while when users abnormally quit the session)
- sFTP support: file transfer between local PC and remote SSH, including FTP get, FTP put. Huge-file transfer is supported.


*Supported All mainstream browsers*:

-	IE 11 (only beep sound is not supported)
-	Firefox/Iceweasel latest (all supported)
-	Chrome/Chromium latest (all supported)

--------------------------------------------------------

### Getting started on Ubuntu (>=16.04 LTS)

```sh
sudo apt-get install python3-websockets python3-asyncssh
git clone https://github.com/ghostplant/webssh-proxy
cd webssh-proxy
./dl-wsshd
```

--------------------------------------------------------

### Next, open your browser to get access to the terminal

```sh
firefox "https://0.0.0.0:8022/"

[or]

firefox "https://0.0.0.0:8022/?username=user1&hostname=0.0.0.0"
```

--------------------------------------------------------

### Deploy Service in Docker

```sh
cd webssh-proxy
docker build -t myssh-tunnel .

openssl req -x509 -nodes -days 3650 -subj "/CN=myssh/" -newkey rsa:2048 -keyout cert.pem -out cert.pem
docker run --rm -v `pwd`/cert.pem:/srv/cert.pem:ro -p 8022:8022 myssh-tunnel

[then]

firefox "https://0.0.0.0:8022/?hostname=172.17.0.1"
```

--------------------------------------------------------

Any issues are welcomed to provide.


# websocket-myssh-tunnel (python3 based)

Union of Shellinabox Frontend and Asyncssh Backend, using WebSocket to build SSH Tunnel, providing more features compared with original Shellinabox.

--------------------------------------------------------

*Features of websocket-myssh-tunnel*:

- Inherit from Shellinabox: UTF-8 Support, Color Terminal, Beep Sound, OnScreen Keyboard, ..
- Tunnel Feature Support: Able to connect an another SSH server 
- Quick Cleaning: Able to detect the abnormally exited session and instantly close the corresponding session resources (Shellinabox will hang running processes for a while when users abnormally quit the session)


*Supported All mainstream browsers*:

-	IE 11 (only beep sound is not supported)
-	Firefox/Iceweasel latest (all supported)
-	Chrome/Chromium latest (all supported)

--------------------------------------------------------

### Getting started on Ubuntu (>=16.04 LTS)

```sh
sudo apt-get install python3-websockets python3-asyncssh
git clone https://github.com/ghostplant/websocket-myssh-tunnel
cd websocket-myssh-tunnel
./dl-wsshd
```

--------------------------------------------------------

### Next, open your browser to get access the terminal

```sh
firefox "http://0.0.0.0:8023/"
```

Currently, websocket-myssh-tunnel uses two ports, including 8022 for websocket server, and 8023 for simple HTTP server.

--------------------------------------------------------

### Future work

- Hide the password when login
- Add SSL support to enhance the security
- ..

Any issues are welcomed to provide.


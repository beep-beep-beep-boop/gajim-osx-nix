## how to use

### initial setup

```
nix-shell
python3 -m venv env
source bin/env/activate
pip3 install --upgrade nbxmpp omemo-dr pyobjc cryptography pillow idna precis-i18n certifi css-parser keyring packaging qrcode
```

download latest gajim version into `./gajim`

### launch gajim

(doesn't need to be ran from inside the nix-shell)

```
./launch_gajim.fish
```

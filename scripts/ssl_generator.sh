openssl req -newkey rsa:2048 -x509 -nodes -keyout frontend.key -new -out frontend.crt -subj /CN=pepper-helper.dev -reqexts SAN -extensions SAN -config <(cat /etc/ssl/openssl.cnf <(printf '[SAN]\nsubjectAltName=DNS:pepper-helper.dev')) -sha256 -days 3650

openssl req -newkey rsa:2048 -x509 -nodes -keyout backend.key -new -out backend.crt -subj /CN=api.pepper-helper.dev -reqexts SAN -extensions SAN -config <(cat /etc/ssl/openssl.cnf <(printf '[SAN]\nsubjectAltName=DNS:api.pepper-helper.dev')) -sha256 -days 3650
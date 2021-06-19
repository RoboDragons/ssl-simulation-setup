#!/usr/bin/bash
set -x
./config/docker/init.sh
./config/caddy/generate_caddyfile.py
docker-compose up -d
sleep 30
./config/guacamole/update_guacamole.py
./config/caddy/update_caddy_passwords.sh
./config/caddy/generate_caddyfile.py
./config/caddy/update_caddy_config.sh
docker-compose -f docker-compose-teams.yaml up -d --build team-robodragons team-robodragons-a team-robodragons-b
./caddy/install_local_CA.sh

echo "vnc password:"
cat config/passwords | grep robodragons
#!/bin/bash

source .env

numagents=5

for i in $(seq 2 $numagents); do
	BOTIUMBOX_AGENT_NUM=$i docker-compose run -d --name ${COMPOSE_PROJECT_NAME}_agent_$i agent
done


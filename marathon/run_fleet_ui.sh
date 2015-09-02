#!/bin/sh

curl -X POST -H "Content-Type: application/json" http://172.17.8.100:8080/v2/apps -d@fleet_ui.json

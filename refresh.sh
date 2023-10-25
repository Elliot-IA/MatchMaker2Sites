#!/bin/bash
echo ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
echo beginning program refresh...
git pull
pm2 delete MM2SitesServer
pm2 start MM2SitesServer.js
echo refresh complete!
echo ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
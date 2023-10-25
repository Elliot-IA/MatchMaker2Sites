#!/bin/bash
echo ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
echo beginning program refresh...
git pull
pm2 delete MM2SitesServer.js
pm2 start MM2SitesServer
echo refresh complete!
echo ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
#!/bin/bash


echo "Creating monitoring user..."


sudo adduser monitoruser

echo "Creating monitoring directory..."

sudo mkdir -p /opt/container-monitor/logs

echo "Setting ownership..."


sudo chown -R monitoruser:monitoruser /opt/container-monitor

echo "Setting permissions..."

sudo chmod -R 700 /opt/container-monitor

echo "Verification:"

ls -ld /opt/container-monitor

echo "Task 4 completed successfully"
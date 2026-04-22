#!/bin/bash

CONTAINER_NAME="web-container"
LOG_DIR="/opt/container-monitor/logs"
LOG_FILE="$LOG_DIR/monitor.log"

mkdir -p "$LOG_DIR"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Always log cron execution first (IMPORTANT)
echo "$TIMESTAMP | CRON RUNNING" >> "$LOG_FILE"

# Get container stats
STATS=$(/usr/bin/docker stats --no-stream --format "{{.Name}}|{{.CPUPerc}}|{{.MemUsage}}" 2>/dev/null)

if [ -z "$STATS" ]; then
    echo "$TIMESTAMP | $CONTAINER_NAME | STATUS: NOT RUNNING" >> "$LOG_FILE"
else
    IFS="|" read -r NAME CPU MEM <<< "$STATS"
    echo "$TIMESTAMP | $NAME | CPU: $CPU | MEM: $MEM" >> "$LOG_FILE"
fi
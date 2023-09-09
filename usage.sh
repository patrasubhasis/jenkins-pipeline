#!/bin/bash

# Get the total RAM in GB
total_ram=$(free -g | awk 'FNR == 2 {print $2}')

# Get the used RAM in GB
used_ram=$(free -g | awk 'FNR == 2 {print $3}')

# Calculate the used RAM in percentage
ram_percent=$(echo "scale=2; ($used_ram/$total_ram)*100" | bc)

# Get the current CPU usage in percentage
cpu_percent=$(top -bn1 | awk '/Cpu\(s\):/ { printf("%.2f\n", 100 - $8) }')

# Get the total storage in GB
total_storage=$(df -h / | awk 'FNR == 2 {print $2}' | sed 's/G//')

# Get the used storage in GB
used_storage=$(df -h / | awk 'FNR == 2 {print $3}' | sed 's/G//')

# Calculate the used storage in percentage
storage_percent=$(echo "scale=2; ($used_storage/$total_storage)*100" | bc)

# Display the results
echo "RAM Usage: $used_ram GB ($ram_percent%) of $total_ram GB"
echo "CPU Usage: $cpu_percent%"
echo "Storage Usage: $used_storage GB ($storage_percent%) of $total_storage GB"


#!/bin/bash

#our files
AGENTS_FILE="expanded_agents_data.csv"      # File with agents
ORDERS_FILE="expanded_orders_data.csv"      # File with orders
OUTPUT_FILE="assigned_orders.csv"           # Output file to save results
DIST_SCRIPT="DistancesBitweenCities.py"  # Python script to calculate distance

if [[ ! -f "$AGENTS_FILE" || ! -f "$ORDERS_FILE" || ! -f    "$PY_DIST_SCRIPT" ]]; then
  echo "files are missing! Make sure all files are in the same folder."
  exit 1
fi

#working for the output  file
echo "OrderID,OrderCity,OrderType,AssignedAgent,AgentCity,DistanceKM" > "$OUTPUT_FILE"

#lop
tail -n +2 = skip the first line (headers)
tail -n +2 "$ORDERS_FILE" | while IFS=',' read -r order_id order_city order_type
do
  echo "Processing order $order_id from $order_city (Type: $order_type)"





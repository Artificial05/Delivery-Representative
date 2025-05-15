#!/bin/bash

#our files
AGENTS_FILE="expanded_agents_data.csv"      # File with agents
ORDERS_FILE="expanded_orders_data.csv"      # File with orders
OUTPUT_FILE="assigned_orders.csv"           # Output file to save results
DIST_SCRIPT="DistancesBitweenCities.py"  # Python script to calculate distance

if [[ ! -f "$AGENTS_FILE" || ! -f "$ORDERS_FILE" || ! -f    "$DIST_SCRIPT" ]]; then
  echo "files are missing! Make sure all files are in the same folder."
  exit 1
fi

#Work on the output  file
echo "OrderID,FromCity,ToCity,ItemType,IsFragile,Size,AssignedAgent,AgentCity,DistanceKM" > "$OUTPUT_FILE"

#Lop over all orders 
tail -n +2 "$ORDERS_FILE" | while IFS=',' read -r OrderID OrderCity ItemType
do
  echo "Processing order $OrderID from $FromCity to $ToCity (Type: $ItemType  Fragile: $IsFragile  Size: $Size)"

  #Loop over all agents to find the best One 
  tail -n +2 "$AGENTS_FILE" | while IFS=',' read -r AgentID Name City VehicleType CanCarryFragile
  do
    # Here we call the Python script to calculate distance between cities
    distance=$(python3 "$DIST_SCRIPT" "$City" "$OrderCity")
    
    #Skip if distance was not found or there was an error
    echo "$distance" | grep -q "not found" && continue
    
    #Here we should save the assigned agents data
    #____________________________________________
  done

  #Save the result to the output file 
  #____________________________________________
  #____________________________________________
  
done






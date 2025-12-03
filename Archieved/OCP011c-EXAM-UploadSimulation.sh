Bash Sript 
#!/bin/bash
# Simulate Red Hat exam submission

INPUT_FILE="$1"

# Check if file argument is provided
if [[ -z "$INPUT_FILE" ]]; then
  echo "Usage: $0 <clusterID_nameany.tar.gz>"
  exit 1
fi

# Check if file exists
if [[ ! -f "$INPUT_FILE" ]]; then
  echo "[ERROR] File '$INPUT_FILE' not found."
  exit 1
fi

echo "[INFO] Preparing submission..."
echo -n "[INFO] Uploading "

# Visual progress bar (10 seconds)
for i in {1..10}; do
  echo -n "|"
  sleep 1
done

echo ""
echo "[SIMULATED] File '$INPUT_FILE' is ready for upload."

# Optional real upload (commented)
# curl -F "file=@$INPUT_FILE" https://redhat.examserver.com/upload

echo "[DONE] Submission complete."





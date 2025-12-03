

echo "Setting Up Environment for OCP 4.14.14"


#!/bin/bash

echo "=============== setting up env for Q.7 - ocp ===============" 

touch newcert.sh 


cat << 'EOF' > newcert.sh

#!/bin/bash" 

openssl genrsa -out private.key

openssl req -new -key private.key -out redhat.csr

openssl x509 -req -in redhat.csr -signkey private.key -days 366 -out redhat.crt

EOF


echo "=============== setting up env for Q.8 - ocp ===============" 

oc new-project lerna

oc create deployment hydra --image=quay.io/redhattraining/hello-world-nginx


echo "=============== setting up env for Q.9 - ocp ===============" 

oc new-project gru

oc create deployment scala --image=quay.io/redhattraining/hello-world-nginx


echo "=============== setting up env for Q.10 - ocp ===============" 

oc new-project math

oc create deployment qed --image=quay.io/redhattraining/hello-world-nginx


echo "=============== setting up env for Q.12 - ocp ===============" 

oc new-project apples

oc new-app --name=oranges --image=quay.io/redhattraining/hello-world-nginx
 
oc expose svc oranges


echo "=============== setting up env for Q.14 - ocp ===============" 

oc new-project path-finder

oc create deployment voyager --image=quay.io/redhattraining/hello-world-nginx




echo "=============== setting up env for Q.16 - ocp ===============" 

touch clusterReport_upload.sh

echo " Note : This is simulated for lab only this interface can be different"

cat << 'EOF' > mustgather_upload.sh
#!/bin/bash

# Simulate Red Hat exam submission
INPUT_FILE="\$1"

if [[ -z "\$INPUT_FILE" ]]; then
  echo "Usage: \$0 <clusterID_nameany.tar.gz>"
  exit 1
fi

if [[ ! -f "\$INPUT_FILE" ]]; then
  echo "[ERROR] File '\$INPUT_FILE' not found."
  exit 1
fi

echo "[INFO] Preparing submission..."
echo -n "[INFO] Uploading "

# Visual progress bar (10 seconds)
for i in {1..10}; do
  echo -n "█"
  sleep 1
done

echo ""
echo "[SIMULATED] File '\$INPUT_FILE' is ready for upload."

# Optional real upload
# curl -F "file=@\$INPUT_FILE" https://redhat.examserver.com/upload

echo "[DONE] Submission complete."
EOF






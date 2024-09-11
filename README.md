## EZ Dedicated Game Servers
Create Game Servers in an easy way without hassle, just run the script and wait for the process.

## Games
- Counter-Strike 2

## How To Use - GCP
### Create filewall rule
Replace:
- `<firewall-name>` -> Name that will be shown as firewall rule name in GCP
- `<port-tcp>` -> port that want to be open
- `<port-udp>`-> port that want to be open
```
gloud compute firewall-rules create <firewall-name> \
--allow tcp:<port-tcp>,udp:<port-udp>
```

### Create VM Instance
Replace:
- `<instance_name>` -> Name that will shown as instance name in GCP
- `<project_id>` -> Your GCP Project ID
- `<service_account>` -> Your IAM User called `Compute Engine default service account`
- `<firewall-name>` -> Your firewall name you created before
```
gcloud compute instances create <instance_name> \
    --project=<project_id> \
    --zone=asia-southeast1-b \
    --machine-type=n2-standard-4 \
    --network-interface=network-tier=PREMIUM \
    --stack-type=IPV4_ONLY,subnet=default \
    --maintenance-policy=MIGRATE \
    --provisioning-model=STANDARD \
    --service-account=<service_account> \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
    --tags=http-server,https-server,lb-health-check,<firewall-name> \
    --create-disk=auto-delete=yes,boot=yes,device-name=<instance_name>,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240830,mode=rw,size=60,type=pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any
```
Note:
- If the server can't load the server, upgrade the server by change the `machine-type`
- If the server has high ping, change the `zone`

### Install the game-server
Connect to the instance and run the code below.
```
sudo su
curl -sLo cs2.sh https://raw.githubusercontent.com/joxuwa/game-server/master/games/cs2.sh && chmod +x cs2.sh && bash cs2.sh
```

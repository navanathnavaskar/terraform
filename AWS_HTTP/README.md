# Terraform script to laounce EC2 instance with Apache HTTP server

You can install apache HTTP server in EC2 instance. This terraform script will take care of installing apache http server in EC2 instance.

set variables in variable.tf before starting with required values.

### Steps:
1. terraform init
2. terraform plan
3. terraform apply -auto-approve  (remove auto-approve option if you want human intervention)

This will create EC2 instance with apache server.

Open Url in browser and check you get webpage : "http://<public_ip>"

4. To destory the all plan run "terraform destroy -auto-approve" command
This will delete all resources created with this plan.
 

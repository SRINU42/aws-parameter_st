default:
	@rm -rf .terraform
	@git pull
	@terraform init 
	@terraform apply -auto-approve 
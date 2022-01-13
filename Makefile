
#iniciar elastic
.PHONY: up-es
up-es:
	docker-compose up -d es01

#configurando autenticação
.PHONY: config-auth
config-auth:
	docker exec -it es01 bin/elasticsearch-setup-passwords auto

#iniciar kibana
.PHONY: up-kb
up-kb:
	docker-compose up -d kibana


#iniciar tudo
.PHONY: up
up:
	docker-compose up -d

#parar tudo
.PHONY: stop
stop:
	docker-compose stop


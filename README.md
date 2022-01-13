## ElasticSearch + Kibana in Docker with authentication

If you don't have make installed, use the commands inside the Makefile for the following steps

1. start elasticsearch container

```
make up-es
```

2. generate the passwords

```
make config-auth
```
---
**IMPORTANT**

save the result somewhere you can read it later

---

3. Replace the contents of the "ELASTICSEARCH_PASSWORD" variable in the docker-compose file using the generated password for user kibana


4. start the kibana container

```
make up-kb
```

5. Log into the kibana panel at the address: http://localhost:5601 using the elastic user and the generated password


---
**NOTE**

This repository contains an example jupyter notebook (elastic_example_bulk.ipynb) for bulk importing data, change the connection parameters to run

---
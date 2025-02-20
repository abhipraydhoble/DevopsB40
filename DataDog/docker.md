## Installing the Datadog Agent on Docker

### Pull datadog agent image
````
docker pull datadog/agent:latest
````
### Run the agent container
````
docker run -d --name datadog-agent \
-e DD_API_KEY=<YOUR_API_KEY> \
-e DD_SITE="datadoghq.com" \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
datadog/agent:latest
````
--> add your api key

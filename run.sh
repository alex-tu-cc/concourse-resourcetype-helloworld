docker build .  -t localhost:5000/test-resource
docker push localhost:5000/test-resource
sleep 3
fly -t demo set-pipeline -p hello-resource -c hello-pipeline.yml
fly -t demo unpause-pipeline -p hello-resource
fly -t demo trigger-job -j hello-resource/hello-job -w

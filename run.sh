fly -t demo set-pipeline -p hello-resource -c hello-pipeline.yml
fly -t demo unpause-pipeline -p hello-resource
fly -t demo trigger-job -j hello-resource/hello-job -w

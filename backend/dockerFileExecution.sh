# Go to the respective user folder
cd ./users/$1

sudo docker image build -t  thinknyx:v1 .
sudo docker container run -itd --name=thinknyxContainer thinknyx:v1 > ./conlog.txt

trivy config -f json Dockerfile > ./errorlog.json

sudo docker container stop thinknyxContainer
sudo docker container rm thinknyxContainer

sudo docker image rm thinknyx:v1





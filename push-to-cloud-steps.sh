# build docker image from current folder
docker image build -t dockercraze/k8s-from-scratch-nodejs .

# test as needed

# push image to dockerhub
docker push dockercraze/k8s-from-scratch-nodejs

# add changes to staging
git add .
# commit locally
git commit -m "my comment auto"
# push changes to github repository
git push -u origin master

# deploy in kubernetes
kubectl apply -f deployment-k8s-from-scratch-nodejs.yml

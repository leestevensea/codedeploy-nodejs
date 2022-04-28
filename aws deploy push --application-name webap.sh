aws deploy push --application-name webapp-example-WebappApplication-1VXLLDV1DNTXJ \
	--s3-location s3://webapp-example-webappdeploymentbucket-1kveaue5sm8ip/webapp-1 \
	--source webapp



aws deploy create-deployment --application-name webapp-example-WebappApplication-1VXLLDV1DNTXJ \
    --s3-location bucket=webapp-example-webappdeploymentbucket-1kveaue5sm8ip,key=webapp-1,bundleType=zip,eTag=02046e2b643d259c0798f88232b56d05 \
    --deployment-group-name webapp-example-WebappDeploymentGroup-1X7FJNFSDKUN5


sudo yum install ruby -y
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
sudo ./install auto
chmod +x ./install
sudo ./install auto

aws deploy create-deployment --application-name webapp-example-WebappApplication-1VXLLDV1DNTXJ --s3-location bucket=webapp-example-webappdeploymentbucket-1kveaue5sm8ip,key=webapp-1,bundleType=zip,eTag=be4597ad605abbbe64442ad46de522be --deployment-group-name webapp-example-WebappDeploymentGroup-1X7FJNFSDKUN5 --deployment-config-name CodeDeployDefault.OneAtATime
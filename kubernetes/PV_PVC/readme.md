To validate the YAML configuration for the Persistent Volume (PV), Persistent Volume Claim (PVC), and Nginx Deployment in Kubernetes, follow these steps:

1. Apply the YAML files to Kubernetes
You can apply the YAML files one by one to your Kubernetes cluster using the kubectl apply command.

# Apply the Persistent Volume (PV)
kubectl apply -f pv.yaml

# Apply the Persistent Volume Claim (PVC)
kubectl apply -f pvc.yaml

# Apply the Nginx Deployment
kubectl apply -f nginx.yaml


2. Check the status of the Persistent Volume (PV)
Once applied, you can verify that the Persistent Volume has been created and is bound properly using the following command:

kubectl get pv

You should see something like this:

NAME        CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS    CLAIM               STORAGECLASS   AGE
nginx-pv    5Gi        RWO            Retain           Bound     default/nginx-pvc   manual         10s


STATUS should be Bound which indicates that the PVC is correctly bound to the PV.

3. Check the status of the Persistent Volume Claim (PVC)
Next, you can verify the PVC status with:

kubectl get pvc


You should see something like this:

NAME        STATUS    VOLUME     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
nginx-pvc   Bound     nginx-pv   5Gi        RWO            manual         10s


STATUS should be Bound, meaning the PVC has successfully claimed the Persistent Volume.

4. Check the status of the Nginx Deployment
Finally, check the deployment and pod status:

kubectl get deployment

You should see like this 
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   2/2     2            2           20s

READY indicates how many replicas are running.

How to delete deployment, PV and PVC

kubectl delete deployment nginx-deployment

kubectl delete pv my-pv

kubectl delete pvc my-pvc

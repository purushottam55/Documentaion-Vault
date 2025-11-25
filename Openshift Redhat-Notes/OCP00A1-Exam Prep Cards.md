-----------------------------------------------------------------------OC-Ex-SET-1----------------------------------------------------------------------------------------------


OC-Ex 1------------------------

=> In exam openshift documentation is provided. But not necessarily need to use.

=======================
OC-Ex 2------------------------

=> oc describe clusterrolebindings selfprovisioner => You will see clusters role => Self provisioner 
=> Other thing is selfprovisioners => it is cluster binding.  ( It work for cluster level )\ 
    
	
=======================
OC-Ex 3------------------------

 $ oc list users  => It will list the users. => You will see user details by describe user command.

=======================
OC-Ex 4------------------------

1st question tip => Give dedicated 25 minutes for question. Verify syntax very well way. 

=======================
OC-Ex 5------------------------

Just for info
=> cluster roles provided by openshift => admin, cluster-admin, cluster status, basic-user, cluster-reader,edit

=======================
OC-Ex 6------------------------

=> oc get clusterrolebindings self-provisioners
=> For denying access to user's => You have to delete => oc adm remove-cluster-role-from-group self-provisioner system:authenticated:oauth 

=======================
OC-Ex 7------------------------

Set following thing in .vimrc => set ai cuc et ts=2  ==>  Then export EDITOR=vim  ==> So that never mistaken in indentation. (super important stuff)

ai → shorthand for autoindent. Vim will automatically indent new lines to the same level as the previous line. Saves you from hammering the spacebar like a caveman.
cuc → shorthand for cursorcolumn. Highlights the whole column where your cursor is. Basically a vertical flashlight for your eye so you don’t lose track.
et → shorthand for expandtab. Converts tab presses into spaces. This prevents the eternal holy war of "tabs vs spaces" from breaking your code reviews.
ts=2 → shorthand for tabstop=2. A tab character will be displayed as 2 spaces wide. Combined with et, it means pressing <Tab> actually inserts 2 spaces, not a real tab character.
=======================
OC-Ex 8------------------------

To run directly before on server Test it by =>   --dry-run=server --validate=true  

=======================
OC-Ex 9------------------------

Reminder => For the question create limitrange for the project => you have to  create by => oc create -f ex280-limits.yaml. But before it verify syntax by --dry-run command

=======================
OC-Ex 10------------------------

metadata in the yaml file is => metadata  

but fileData is fileData in secrte question be mindfull of that.

=======================
OC-Ex 11------------------------

defaultReuest in limitranges is => defaultRequest not the defaultRequests

=======================
OC-Ex 12------------------------

In limitRange Question make sure You have min,max setted properly. ( Else the greater than errors will come )

=======================
OC-Ex 13------------------------

Configure and Deploy Secure Route Question => In exam newcert script file available in /usr/local/bin/newcert 
Note => First copy newcert file to opsadm user home directory and add execute ((using cp command))
permission for script and run the script

=======================
OC-Ex 14------------------------

Whenever the thing The application should be reachable at url comes. You should consider hostname in front of http or https as q mentioned. ( in que => oxcart.apps.ocp4.example.com ) 

=======================
OC-Ex 15------------------------

Verify the project and application running for secure route question. No need to create. if needed then create.  => for whole questionPaper
In Exam do => oc get all ,  oc get pods

=======================
OC-Ex 16------------------------

In secure route question. Make sure that you have to use full path for the giving key and cert. ( use private.key and redhat.cert)

=======================
OC-Ex 17------------------------

Once after verifying the 3 files with 1 crs and 1 certs, 1 key. Do
$ oc create route edge --service=oxcart --hostname=oxcart.apps.ocp4.example.com --key=/home/student/private.key --cert=/home/student/redhat.cert 

=======================
OC-Ex 18------------------------

Command oc get all => help you to see pods, services, replicaset. by single command.

=======================
OC-Ex 19------------------------

For Your info: 
Before creating the oxcart service it is already exposed by unsecurely. by
=> oc expose svc oxcart        (( in case of yes )) delete the route if it is unsecured.

=======================
OC-Ex 20------------------------

Using oc get svc you are not going to get route.
Use $ oc get routes   => And verify by using curl command => curl https://hostname

=======================

-----------------------------------------------------------------------OC-Ex-SET-2----------------------------------------------------------------------------------------------


==========================
OC-Ex 21---------------

for route expose question. If there is route already there you have to delete the route and create by self signed certificate.
=> by doing curl https:// from cli may not happen but by gui continuing the risk will open the page.

==========================
OC-Ex 22---------------

Note for 1st Secret Question:
=> after spec here is starting look like=>
spec:
  identityProviders:
  - name: htpasswd-ex280

=> As you see in above that names hyphen is just below i of identityProviders. spec block started below it identity provider started just below of spec saperated by 2 spaces. 
=> no need of hyphen for identiyProvider as you just need tabspace from spec. B

==========================
OC-Ex 23---------------

Important thing => Always Verify in which project by which user you are working you are. If failed you will loose complete marks.

==========================
OC-Ex 24---------------

Scaling Application Manually:
=> You will see there project and deployment is already there. Just verify head for the question.

==========================
OC-Ex 25---------------

For ref:
$ oc create deployment abc --image=quay.io/redhattrainning.com/hello-world-nginx


==========================
OC-Ex 26---------------

Manual Scaling command is=> oc scale deployment/hydra --replicas=5,  => After scaling verify once by oc get pods.

==========================
OC-Ex 27---------------

Autoscaling Application question.
=> Here already project and application already there no need to create =>  In case verifying no => bring project and application. 


==========================
OC-Ex 28---------------

For autoscaling question. 1st step is 
$ oc get deployment/scala -o yaml > scala.yaml 

==========================
OC-Ex 29---------------

Autoscaling Question=> As mentioned in question. need to configure cpu request and cpu limit. see OC-Ex 30.

==========================
OC-Ex 30--------------

 Question : Deploy an application Deploy an application called voyager in the project path-finder =>> Verify this is it in this q only or ?

=> Autoscaling Question=> Remove braces in front of resources. Just below of resource by doing tabspace write requests. also below it by only tabspace write cpu and its value in front of it.
=> Also write below of requests, limits:  and by tabspace below it write cpu: "" or memory if given.

==========================
OC-Ex 31--------------
from OC-Ex 29
=> After editing resources in deployment, Apply the deployment with what changes made. see OC-Ex 32.

==========================
OC-Ex 32--------------

=> After applying. Autoscale the deployment.
$ oc autoscale deployment/scala --max=40 --min=6 --cpu-percent=60         ---> In case you can use $ oc autoscale --help you will see below the command with syntax.

==========================
OC-Ex 33--------------
Autoscaling-Verification =>
$ oc get hpa (# once hpa created 6 new pods will trigger)  => Now do  $ oc get pods => You will see min 6 pods.

==========================
OC-Ex 34--------------

in autoscaling question the replicaset context you can say as pods. but they are autoscalable from min count to max count as mentioned in the command.=> OC-Ex 32.

==========================
OC-Ex 35--------------

Configuring secret for the project. --> Here no need of pods. As it is project level secret for authentication. But in exam pod will be there qed or another name as it needs in 2nd question.

==========================
OC-Ex 36--------------
in project xyz/math:
$ oc create secrete generic magic --from-literal=Decoder_Ring=ASDA142hfh-gfrhhueo-erfdk345v 
    Now just simply verify by oc get secrets. 

 oc set env deployment/qed –-from secret/magic –-prefix DECODE_  
 
==========================
OC-Ex 37--------------
Set env for application question:
=> after entering the project do. oc get all, oc get deployment. 

Command: $ oc set env deployement/qed --from secret/magic
   ... as you see above secret/magic  magic is in secret like directory structure

==========================
OC-Ex 38--------------

For question autoscalaling. Describe the pod you will see the configured resources. cpu limit and requests also


==========================
OC-Ex 39--------------

oc describe pod qed. You will see magic in environment section. 

==========================
OC-Ex 40--------------
apples project.
=> The service account should able to run application with any userid

$ oc create serviceaccount ex280-sa

==========================
-----------------------------------------------------------------------OC-Ex-SET-3----------------------------------------------------------------------------------------------

============================
OC-Ex 41-----------------------------

-z option in service account is "identify service account -> you must use it.
or   -z flag is used for service accounts

============================
OC-Ex 42-----------------------------

Main command to apply service account to anyuid. ( It is  limited upto project)
$ oc adm policy add-scc-to-user anyuid -z ex280-sa      => add-scc-to-user = You're adding a Security Context Constraint (SCC) to a user or service account
 
 
============================
OC-Ex 43-----------------------------

To verify service account applyed or not. here is the command.
oc describe serviceaccount ex280-sa 

============================
OC-Ex 44-----------------------------

=> For voyager question where in project path finder => you have to do below changes to make pod running.
=> Need to edit the deployment => voyager => Change the memory to if 80Gi to 1Gi    <<== This edit is in the resources of deployment.

============================
OC-Ex 45-----------------------------

is oranges pod is there in apples? check once in exam. => It will be there. 

============================
OC-Ex 46-----------------------------

oc set serviceaccount deployement/oranges ex280-sa

once applyed $ oc describe oranges | grep -i ex280-sa -A 2               

============================
OC-Ex 47-----------------------------

For the question called project path-finder. 1st question among them. => Deploy an application called voyager in project path finder.
do =>
$ helm repo add <repo-name> <repo-url>
$ helm install <app name> <repo>            <= Just here install the helmchart application.   

============================
OC-Ex 48-----------------------------
is application voyager is already there ? => voyager/xyz will be there.
Question=> Setting probe to application.

$ oc set probe deployement/voyager --liveness --open-tcp=8080 --initial-delay-seconds=3 --timeout-seconds=10

=> After applying new pod will reflect. #stillDoubt-tausifs --> tausif not checked ?
for verifying just do => $ oc describe deployement     => You will see liveness probe over there.  <<==

============================
OC-Ex 49-----------------------------
Q. Monitoring and health check. (D0-180 question)

$ oc adm must-gather --dest-dir=/home/opsadm/cluster-Data 

This is for generating the cluster report.

============================
OC-Ex 50-----------------------------
in cluster-report question.
You will reflect clusterID over there. Need to gzip this 

$ tar -cvzp /home/opsadm/ex280-DSJFKLADSJLKFKLSDFJKK8dsf9983893.tar.gz cluster-Data/

============================
OC-Ex 51-----------------------------
in cluster-report question.
Last step is => sh <scriptfile> /home/student/ex280 clusterID.tar.gz 

============================
OC-Ex 52-----------------------------
Here in this question need to create a project. 
After that you have to add new-repo.

==> helm repo list --> karane ke bad kuch nahi milega do 

helm repo add ex280-repo http://helm.ocp4.example.com/charts 

============================
OC-Ex 53-----------------------------
application through charts install karane ke liye. search karo 

helm install itherpad ex280-ropo/etherpad    ==> Dive deep by  book context copying

 oc get all  
============================
OC-Ex 54-----------------------------
For Practice - charts developement question => 
image:
  repository: registry.ocp4.example.com:8443/etherpad
  name: etherpad
  tag: 1.8.18
route:
  host: development-etherpad.apps.ocp4.example.com


============================
OC-Ex 55-----------------------------
IN summary >> for question deploy etherpad => added new project >> helm repo list >> repo add karo - helm repo add reponame url -> list karo repos - helm repo list -> helm install etherpad reponame/etherpad.
oc get pods >> oc describe pod >> oc get all >> oc get route => to check and reverify.

============================
OC-Ex 56-----------------------------

Deploy cronjob c1: 


=> You have to create on your own below thing. but first check also.
$ oc new-project marathon  
$ oc project marathon  
$ oc create deployment.apps/scaling –- image=quay.io/redhattraining/scaling 

Whenever you want to run job at cluster scope you have to verify it should have anyuid security context.
// There are no pods before implementing. you have to deploy cronjob with image

// Note by tausif : Note: Once check the required scc policy for service account delete the deployment 
Above stuff is given for just practice in dump. by tausif  to check scc before the implementing without anyuid.

In exam 
============================
OC-Ex 57-----------------------------
Deploy cronjob c2:


oc create cronjob scaling --image=quay.io/redhattrainning/scaling --schedule "05 04 02 * *"

// you will see cronjob.batch/scaling created
// now create service account 


============================
OC-Ex 58-----------------------------
Deploy cronjob c3:
oc create sa ex280-ocpsa            // add this policy to anyuid user
oc adm policy add-scc-to-user anyuid -z ex280-ocpsa


============================
OC-Ex 59-----------------------------
Deploy cronjob c4: // set sa to cronjob batch
oc set sa cronjob/scaling ex280-sa

// verify
oc describe cronjob.batch scaling     // you will see here service account has been attached. 
============================
OC-Ex 60-----------------------------

At the end of exam => delete the kubeadmin secret in kube-system


============================
OC-Ex 61-----------------------------
Deploy cronjob c5:

oc edit cronjob.batch scaling  >> Now add successfull job history:13 or mentioned in the question. 

============================
OC-Ex 62-----------------------------
 

============================
OC-Ex 63-----------------------------
install file-integrity operator =>
=> oc whoami --show-console
=> You have to simply install the file-integrity operator from the gui only

============================
OC-Ex 64-----------------------------
Bootstrap project template: 
// This question is simple one but tricky one. There may conatains 3 types of or's as told by tausif. check vid. 
// Here you have to mind the indentation. Or you will not get access to projects if got error. 


============================
OC-Ex 65-----------------------------

default => 
default.request =>

Whenever you deployed application needs cpu memory.  He will take the inforamtion from limits. if default request is not defined then it will take from default. 
// default request value should be lower than default. 

============================
OC-Ex 66-----------------------------

oc get template -n openshift config

============================
OC-Ex 67-----------------------------

A ReplicaSet makes sure a certain number of Pod copies (replicas) are always running.


Replicaset : Example: If you say "I need 3 pods of my app," the ReplicaSet’s job is to watch the pods and keep 3 running.

If 1 pod crashes → ReplicaSet creates a new one.

If you scale up/down → ReplicaSet adjusts the number.

Replicaset
  You usually don’t create ReplicaSets directly.

They are automatically created and managed by a Deployment. OpenShift makes a ReplicaSet behind the scenes to handle the pods.

============================
OC-Ex 68-----------------------------

By default openshift is configured no application should run as root user. 

by defualt scc it will be restrited v1 or v2, when you have to change it add anyuid. you can change using ssc. Now that pod can execute root level commands. 
	

============================
OC-Ex 69-----------------------------

For bootstrap question the template is of cluster level. 


============================
OC-Ex 70-----------------------------
Command:
$ oc adm create-bootstrap-project-template -o yaml > project-template.yaml

============================
OC-Ex 71-----------------------------
for bootstrap: 

- apiVersion: v1
  kind: LimitRange
  metadata:
	name: ${PROJECT_NAME}-limitrange
  spec:
	limits:
	  - type: pod
		max:
		  memory: 

- apiVersion: v1 
  kind:  ResourceQuota
  metadata:
	name: ${PROJECT_NAME}-limitrange
  spec:
	hard:
	  pods: "10"
	  request.memory: "1Gi"
	  request.cpu: "2"
	  limits.memory: "4Gi"
	  limits.cpu: "10m"
		  
============================
OC-Ex 72-----------------------------

$ cat quota-limits.yml  >> project-template.yaml    // appending in bootstrap project template file
Note: Inside the project-template.yml file make sure the parameter section 
should write at the end. 

============================
OC-Ex 73-----------------------------

$ oc create -f project-template.yaml -n openshift-config 
$ oc get template -n openshift-config    // Check the project template in this namespace


============================
OC-Ex 74-----------------------------

$ oc edit projects.config.openshift.io -oyaml 
=> Here you have to edit : 

spec:
  projectRequestTemplate:
    name: project-request
	
$ watch oc get pods -n openshift-apiserver 

============================
OC-Ex 75-----------------------------
Bootstrap project template question:
=> In ResourceQuota question. after spec you have to write hard. and if you are configuing limits then write limits.
=> in hard no need of starting with hypen or type. Its for limits=> You have to write type include with hypen.

  spec:
    hard:
	  pods: "10"
	  request.memory: "1Gi"
	  
  // for limits
  
  spec:
    limits:
	  - type: pod
	    max:
		  memory: "300"
		  
============================
OC-Ex 76-----------------------------

Verify once before exam this last 2 questiones with appropriate people. 

============================
OC-Ex 77-----------------------------
# Segregation of Questions by categories weighted

---

Manage Authentication and Authorization

1. Configure the Identity Provider for the OpenShift


2. Configure Cluster permissions


3. Configure Project permissions


4. Create Groups and configure permissions




---

Enable Developer Self-service 

5. Configure Quotas for the Project


6. Configure Limits for the Project


7. Bootstrap Project template

---

Configure Application Security 

7. Configure and deploy a secure route


8. Configure a Secret


9. Use the Secret value for Application Deployment


10. Configure a Service Account

----

Configure Applications for Reliability

8. Scale the Application manually

9. Configure Auto-scaling for an application


10. Cronjob

11. Monitoring and health-check
---

Deploy Applications 

13. Deploy an application

14. Deploy an application

15. Helm Chart
---

Configure Network Security 

15. Network policy

---

Manage Storage for Application Configuration and Data (0%)

16. Persistent storage




---

Manage OpenShift Operators 

17. Install Operator




============================
OC-Ex 78-----------------------------
// Setup environment // run following  commands in one go. directly to terminal.

.....

oc new-project gru oc create deployment scala --image=quay.io/redhattraining/hello-world-nginx

oc new-project lerna oc create deployment hydra --image=quay.io/redhattraining/hello-world-nginx

oc new-project area51 oc new-app --name=oxcart --image=quay.io/redhattraining/hello-world-nginx echo "openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout=private.key -out=certificate.cert" > newcert.sh

oc new-project ascii-movie

oc new-project math oc create deployment qed --image=quay.io/redhattraining/hello-world-nginx

oc new-project apples oc create deployment oranges --image=quay.io/redhattraining/hello-world-nginx oc create service clusterip orange --tcp 80:8080 oc expose service orange

oc new-project mercury oc new-app --name atlas --image=quay.io/redhattraining/hello-world-nginx oc set resources deployment/atlas --requests=memory=80Gi oc scale deploy/atlas --replicas 0 oc scale deploy/atlas --replicas 1

oc new-project elementum

oc new-project database oc create deployment mysql --image=quay.io/redhattraining/hello-world-nginx oc label pod $(oc get pod -n database -o jsonpath='{.items[0].metadata.name}') network.openshift.io/policy-group=database -n database

oc new-project checker oc label ns checker team=devsecops oc create deployment web-mysql --image=quay.io/redhattraining/hello-world-nginx oc label pod $(oc get pod -n checker -o jsonpath='{.items[0].metadata.name}') deployemnt=web-mysql -n checker

oc new-project page

oc project default


============================
OC-Ex 79-----------------------------



============================
OC-Ex 80-----------------------------



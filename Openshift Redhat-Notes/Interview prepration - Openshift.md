### What is OpenShift?

Red Hat OpenShift is a popular enterprise [**Kubernetes**](https://www.interviewbit.com/kubernetes-interview-questions/) platform that provides a cloud-like experience wherever it's installed. Whether you build, deploy, and run apps in the cloud, on-premises, or at the edge, Red Hat OpenShift provides a uniform experience regardless of where you construct, deploy, and run them. The full-stack automated operations and self-service provisioning for developers provided by Red Hat OpenShift allow teams to collaborate more effectively to move ideas from development to production.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/745/original/What_is_OpenShift.png?1643987208)

Many notable organisations are prioritising individuals with promising OpenShift talents at the moment. OpenShift is a popular DevOps technology because of its capability as a Platform as a Service (PaaS) and Container as a Service (CaaS). As a result, having OpenShift expertise can lead to many work opportunities as well as the ability to enhance your [**DevOps career**](https://www.interviewbit.com/blog/devops-engineer/). 

The purpose of the following discussion is to provide an overview of the most common OpenShift interview questions and answers.

## OpenShift Interview Questions for Freshers

### 1. What is OpenShift Dedicated?

OpenShift Dedicated is a cloud service that provides a complete OpenShift cluster that is configured for high availability (HA) and dedicated to a single customer (single-tenant). Red Hat Operations manages OpenShift Dedicated, providing improved security and years of operational experience with OpenShift in development and production. OpenShift Dedicated also includes Red Hat Premium Support, which is available 24 hours a day, seven days a week.

On Amazon Web Services (AWS) and Google Cloud, Red Hat OpenShift Dedicated is a fully managed Red Hat OpenShift service. Reduce operational complexity and concentrate on developing and expanding solutions that will provide value to your company via OpenShift Dedicated. Monitoring cluster events, tracking usage, and capacity planning are all included with Red Hat OpenShift Dedicated.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/739/original/OpenShift_Dedicated.png?1643985623)

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/desktop/study_plan-fb58ec94dd27940f470d62dee6d85c8161f6afc2b9dcbced18278212ce50b8b9.svg.gz)

Create a free personalised study plan

Get into your dream companies with expert guidance

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/code-99b8ddab28469d3e18187c7e7f62dcf921ece612e63043b7515547d441ea3ebb.svg.gz)Real-Life Problems

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/suitcase-7129128344fb59d27c28914ce39a52b40df37b3da954c23330359726019a8fb7.svg.gz)Prep for Target Roles

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/pencil-aaf6423aa93927b3965ae3006bc88653f14fee9586297e82fa1153ab475c8459.svg.gz)Custom Plan Duration

[Create My Plan![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/arrow-right-54a813c1b9b6df712c72a314c89081e5a96674ee7ee6454dd7c063d0fe79bb1c.svg.gz)](https://www.interviewbit.com/interview-preparation-kit/)

### 2. What are the benefits of using DevOps tools?

[**DevOps tool**](https://www.interviewbit.com/blog/devops-tools/) applications are perfect for increasing software delivery flexibility. DevOps tools also aid in increasing the frequency of deployments and lowering failure rates. DevOps tools also aid in quicker recovery and better time management in between fixes.

### 3. What are the most common OpenShift build strategies?

Docker strategy, custom strategy, Source to Image strategy, and pipeline strategy are the most frequent build strategies in OpenShift.

You can download a PDF version of Openshift Interview Questions.



---

  

### 4. How is OpenStack different from OpenShift?

The main distinction is that OpenStack offers Infrastructure as a Service (IaaS). OpenStack differs from OpenShift in that it provides object and block storage to a bootable virtual machine.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/740/original/openshift_vs_openstack.png?1643985783)

### 5. What are Init containers used for?

Init containers, which run before application containers and can contain utilities or setup scripts not available in an app image, are provided by the OpenShift Container Platform. Before the rest of a pod is deployed, you can utilise an Init Container resource to conduct activities.

In addition to application containers, a pod can have Init Containers. Setup scripts and binding code can be reorganised using init containers. An Init Container can do the following:

- Contain and run utilities that, for security reasons, should not be included in the app Container image.
- Contains setup tools or custom code that isn't included in the app image. For example, using sed, awk, python, or dig during setup does not necessitate creating an image FROM another picture.
- Use Linux namespaces to provide them different filesystem views than app containers, including access to secrets that app containers don't have.

Before the next Init Container is started, the previous one must finish successfully. As a result, Init Containers make it simple to prevent or delay the launch of app containers until certain conditions are met.

-----

### 6. What are the different Red Hat Enterprise Linux CoreOS (RHCOS) tasks that you can perform as a cluster administrator?

You can conduct the following Red Hat Enterprise Linux CoreOS (RHCOS) tasks as a cluster administrator:

- Learn about the next generation of container operating system technology for single-purpose containers.
- Choose how you want Red Hat Enterprise Linux CoreOS (RHCOS) to be configured.
- Select a deployment method for Red Hat Enterprise Linux CoreOS (RHCOS):
    - Deployment that is pre-configured by the installer.
    - Deployment based on user preferences.

The Ignition configuration files you'll need to deploy your cluster are created by the OpenShift Container Platform installation software. During the initial configuration of Red Hat Enterprise Linux CoreOS (RHCOS), Ignition is used to do basic disc functions such as partitioning, formatting, writing data, and configuring users. Ignition reads its configuration from the installation media or the place you provide on the first boot and applies it to the machines.

You may learn how Ignition works, how to install a Red Hat Enterprise Linux CoreOS (RHCOS) server in an OpenShift Container Platform cluster, see Ignition configuration files, and alter Ignition configuration after it has been installed.

### 7. Why should you use OpenShift?

OpenShift provides a standard platform for business units to host their apps on the cloud without having to worry about the operating system. This makes it very simple to use, build, and deploy cloud-based apps. It provides managed hardware and network resources for all types of development and testing, which is one of the essential characteristics. PaaS developers using OpenShift can construct their environment based on their needs.

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/desktop/moco-c7ebe9f8f47748ffae9ae0533cc6e71697ba1e8bb0df4c7c4f481b44b74c5d91.svg.gz)

Advance your career with  Mock Assessments

Real-world coding challenges for top company interviews

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/code-99b8ddab28469d3e18187c7e7f62dcf921ece612e63043b7515547d441ea3ebb.svg.gz)Real-Life Problems

![](https://assets.interviewbit.com/assets/ibpp/interview_guides/assets/layout-alt-39a6b2a56b986dbae952a4e1a7fde9324f0bafeb365b03e4ecb507ff876531e0.svg.gz)Detailed reports

Attempt Now

### 8. What is the OpenShift Container Platform by Red Hat?

To design and deploy better apps quicker, a hybrid cloud, enterprise Kubernetes platform is needed. The Red Hat OpenShift Container Platform provides a unified hybrid cloud basis for developing and scaling containerized applications.

Red Hat's on-premises private platform as a service solution, OpenShift Container Platform, is based on Red Hat Enterprise Linux and built around a core of application containers powered by Docker, with orchestration and management provided by Kubernetes. Red Hat's experience in identifying and promptly providing solutions for vulnerabilities in both the platform and the containerized apps running on it will benefit the OpenShift Container Platform. Red Hat also has experience efficiently integrating new components with the OpenShift Container Platform as they become available, as well as modifying technology to meet the needs of individual customers.

The OpenShift Container Platform is intended to secure Kubernetes and combine it with a range of additional components. OpenShift Container Platform accomplishes this by leveraging the broad Red Hat ecosystem of open source technologies, which includes operating systems, authentication, storage, networking, development tools, base container images, and a variety of other components.

### 9. What are deployment strategies?

A deployment strategy is a method of updating or changing an application. The goal is to implement the modification with little downtime so that the user doesn't notice any improvements.

A blue-green deployment is the most typical strategy. Users continue to utilise the stable version while the new version (the blue version) is tested and evaluated (the green version). Users are converted to the blue version when they are ready. You can revert to the green version if a problem arises. An alternate technique is to employ A/B versions that are both live at the same time, with some users using one and others using the other. This can be used to collect customer feedback on modifications to the user interface and other features. It can also be used to check good operation in a production setting if only a small number of users are affected.

Canary deployment is used to test the new version, but if a fault is discovered, it rapidly reverts to the previous version. Both of the aforementioned tactics can be used to accomplish this. The count of pods in the facilities is not scaled by route-based deployment options. The deployment configurations might have to be scaled to maintain acceptable performance characteristics.

Because the end-user typically gets the application via a router-managed route, the deployment strategy can concentrate on DeploymentConfig object or routing characteristics. All routes that use the application are affected by deployment strategies. Individual routes are targeted via strategies that leverage router features.

The DeploymentConfig object supports many deployment strategies, and some extra strategies are provided by router features. When deciding on a deployment strategy, keep the following in mind:

Long-term connections must be managed with care.  
Database conversions are time-consuming and must be done in tandem with the application.  
Downtime may be necessary to complete the transition if the application is a hybrid of microservices and traditional components.  
To do this, you'll need the necessary infrastructure.  
You can break both new and old versions in a non-isolated test environment.

A readiness check is used in a deployment strategy to see if a new pod is ready to use. The DeploymentConfig object retries to run the pod until it times out if a readiness check fails. TimeoutSeconds in dc.spec.strategy.*params sets the default timeout to 10m.

### 10. What exactly do you mean when you say "rolling deployments"?

A rolling deployment gradually replaces instances of an application's prior version with instances of the new version. If no deployment strategy is given on a DeploymentConfig object, the rolling strategy is utilised by default.

Before scaling down the old components, a rolling deployment normally waits for fresh pods to become ready via a readiness check. If a major problem arises, the rolling deployment can be stopped.

The rolling deployment should be **used**:

- When you don't want to experience any downtime while updating an application.
- When your application allows you to run both old and new code at the same time.

You can have both old and new versions of your code running at the same time with a rolling deployment. This usually necessitates your application's ability to handle N-1 compatibility.

The rolling strategy **supports** the following:

- Any pre-lifecycle hook is executed.
- Based on the surge count, scales up the new replication controller.
- The previous replication controller is scaled down according to the maximum unavailability count.
- Scales the new replication controller until it reaches the target replica count and the old replication controller is scaled to zero.
- Any post lifecycle hook is executed.

### 11. What exactly do you mean when you say "canary deployment"?

In the OpenShift Container Platform, all rolling deployments are canary deployments, which means that a new version (the canary) is tested before all of the previous instances are replaced. The canary instance is removed and the DeploymentConfig object is automatically rolled back if the readiness check fails.

The readiness check is included in the application code and can be as complex as needed to guarantee that the new instance is ready to use. Consider designing a custom deployment or using a blue-green deployment method if you need to perform more complex application checks (such as passing real user workloads to the new instance).

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/732/original/canary_deployment.png?1643984071)

### 12. What are cartridges in OpenShift?

Cartridges are the parts of an OpenShift Enterprise application that include the application code needed to run it. Programming languages, databases, monitoring services, and management are all supported by cartridges.

Adding a cartridge to an application gives you the functionality you want without having to manage or maintain the incorporated feature. When a cartridge is added to an application, it is assigned to one or more gears based on its specifications. Other cartridges can be deployed across several gears of an application, whereas those that listen to incoming traffic are placed on one or more gears.

Web cartridges are available for a variety of programming languages and frameworks, and every application needs at least one to listen for HTTP requests. When creating an application, the type of web framework cartridge must be selected. Other cartridges can be deployed across several gears of an application, whereas those that listen to incoming traffic are placed on one or more gears.

Following the creation of an application with the essential web framework cartridge, a variety of add-on cartridges, such as databases, scheduled jobs, and continuous integration, can be used to enhance the functionality and capabilities of the programme. Database Cartridges and Monitoring and Management Cartridges are other types of cartridges available.

Along with the supported standard OpenShift Enterprise cartridges, downloadable cartridges are available for new and existing applications. These are user-created cartridges or cartridges accessible from the OpenShift community. The URL to the manifest of the hosted downloadable cartridge is used to download and install these cartridges.



### 13. What is the OpenShift Command Line Interface (CLI)?

The OpenShift CLI tool is a command-line tool for managing OpenShift applications. We can manage the application's life cycle from start to finish using the OpenShift CLI. It provides basic and complex application setup features. It also has tools for managing, distributing, and adding new apps.

You can create applications and manage OpenShift Container Platform projects from a terminal using the OpenShift command-line interface (CLI). After you've installed the CLI, you can use the **oc** command to access it. In the following scenarios, the OpenShift CLI is ideal:

- Working directly with the source code of the project
- OpenShift Container Platform operations can be scripted.
- Project management while bandwidth is limited and the web console is unavailable.

A few of the major **CLI commands** are listed below:

- Create a new project with the **oc new-project** command. 
- Create a new application with the **oc new-app** command.
- To see the pods for the current project, use the **oc get pods** command.
- To access logs for a specific pod, use the **oc logs** command.
- To see the current project, use the **oc project** command.
- To get information about the current project, including as services, deployments, and build configs, use the **oc status** command.
- The **oc api-resources** command displays a list of the server's supported API resources.
- To see the description and fields for a specific resource, use the **oc explain** command.
- To see a list and description of all available CLI commands, type **oc help**.

### 14. What distinguishes Docker from OpenShift?

Container management and orchestration platforms Docker and OpenShift are both well-known. They both have distinct advantages and features that make them ideal options based on your needs. Let's compare and contrast the two.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/733/original/openshift_vs_docker.png?1643984357)

- OpenShift contains a runtime container as well as a REST API, coordination, and web interfaces for deploying and managing individual containers, whereas Docker only deploys projects using runtime containers.  
    Cartridges, which are effectively hooks defined in shell scripts that get called during the invocation of a system call, are how OpenShift models functional units. Docker, on the other hand, achieves the same result by using docker images, but it requires a lot of human work behind the scenes.
- Internally, OpenShift uses Kubernetes for container orchestration, whereas Docker uses Docker swarms.
- Docker takes advantage of the AUFS concept for improved disc and file cloning as well as write-while-sharing. OpenShift, on the other hand, does not require it and is incompatible with such systems.
- Some of the companies that use OpenShift include Hazeroid, Vungle, and Accenture whereas Twitter, Spotify, and Pinterest are just a few of the businesses that use Docker.

### 15. What are Red Hat OpenShift Pipelines?

Red Hat OpenShift Pipelines is a Kubernetes-based cloud-native continuous integration and continuous delivery (CI/CD) system. It abstracts away the underlying implementation details by using Tekton building pieces to automate deployments across different platforms. For defining CI/CD pipelines, Tekton presents a set of standard custom resource definitions (CRDs) that are transferable between Kubernetes distributions.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/734/original/Red_Hat_OpenShift_Pipelines.png?1643984459)

The following are the features of Red Hat OpenShift Pipelines are:

- Red Hat OpenShift Pipelines is a serverless CI/CD system that runs pipelines in isolated containers with all essential dependencies.
- Pipelines from Red Hat OpenShift are built for dispersed teams working with microservice-based architecture.
- Red Hat OpenShift Pipelines leverage standard CI/CD pipeline definitions that are simple to modify and integrate with existing Kubernetes tools, allowing for on-demand scaling.
- You may utilise Red Hat OpenShift Pipelines to create images that are portable across any Kubernetes platform using Kubernetes capabilities like Source-to-Image (S2I), Buildah, Buildpacks, and Kaniko.
- Create Tekton resources, examine pipeline run logs, and manage pipelines in your OpenShift Container Platform namespaces using the OpenShift Container Platform Developer console.

### 16. Explain the use of triggers in Red Hat OpenShift Pipelines.

Create a full-fledged CI/CD system using Triggers and Pipelines, where Kubernetes resources define the complete CI/CD execution. External events, such as a Git pull request, are captured and processed by triggers, which extract critical pieces of information. When this event data is mapped to a set of specified parameters, a sequence of jobs are launched that can generate and deploy Kubernetes resources, as well as instantiate the pipeline.

For example, you define a CI/CD pipeline for your application using Red Hat OpenShift Pipelines. For any new modifications in the application repository to take effect, the pipeline must be started. Triggers automate this process by capturing and processing any change event and starting a pipeline run that delivers the updated image.

### 17. What OpenShift Virtualization can do for you?

OpenShift Virtualization is an OpenShift Container Platform add-on that lets you run and manage virtual machine workloads alongside container workloads.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/735/original/OpenShift_Virtualization.png?1643984634)

To allow virtualization tasks, OpenShift Virtualization adds new objects to your OpenShift Container Platform cluster using Kubernetes custom resources. These responsibilities include:

- Creating and controlling virtual machines in Linux and Windows
- Using many consoles and CLI tools to connect to virtual machines
- Existing virtual machines can be imported and cloned.
- Managing virtual machines' network interface controllers and storage disks.
- Virtual machines are being moved between nodes in real-time.

Along with the OpenShift Container Platform cluster containers and infrastructure, an updated web console provides a graphical portal for managing these virtualized resources.

OpenShift Virtualization has been tested with OpenShift Container Storage (OCS) and is optimised for use with OCS capabilities. You can utilise OVN-Kubernetes, OpenShift SDN, or one of the other certified default Container Network Interface (CNI) network providers specified in Certified OpenShift CNI Plug-ins with OpenShift Virtualization.

### 18. Explain the concept of pods in OpenShift.

The Kubernetes concept of a pod, which is one or more containers deployed on one host and the smallest compute unit that can be designed, deployed, and managed, is used by OpenShift Online.

Pods are the container's rough equivalent of a machine instance (physical or virtual). Containers within pods can share their local storage and networking because each pod has its internal IP address and so owns its own port space.

Pods have a life cycle in which they are defined, assigned to a node, and then operate until their container(s) exit or they are removed for some other reason. Pods may be removed after leaving or preserved to allow access to their containers' logs, depending on the policy and exit code.

Changes to a pod specification can't be done while it's running in OpenShift Online because it's immutable. Changes are implemented in OpenShift Online by terminating an existing pod and re-creating it with the new configuration, base image(s), or both. Pods are also viewed as disposable, and their condition is not preserved when they are regenerated. As a result, rather than being managed directly by users, pods should normally be managed by higher-level controllers.

### 19. What are the features provided by Red Hat OpenShift?

The following features are provided by OpenShift:

- **Cluster services:** A core Red Hat OpenShift functionality is automated installation on hybrid cloud infrastructures. OpenShift uses Kubernetes Operators to deliver immutable installation and updates across the platform. OpenShift also supports virtualization, allowing users to manage containers and virtual machines side by side in a single control plane.
- **Integrations that have been tested:** Software-defined networking is included in Red Hat OpenShift, and it also verifies other common networking systems. For each release, Red Hat OpenShift additionally verifies many storage and third-party plug-ins.
- **Platform-related services:** The application platform you select should make workload management easy. That means it must support essential cloud-native services used by developers, such as Service Mesh, Serverless, and Pipelines, which can be installed on-demand using Red Hat OpenShift.
- **Services for applications:** A choice is important to developers. You must support the languages, database engines, and runtimes that bring their code to life because they want to select how they build and deploy apps. You can honour those choices with Red Hat OpenShift without sacrificing availability or security.
- **Security Benefits:** The enterprise-grade features provided by OpenShift are one of the main reasons why corporate customers choose it over Kubernetes. As a result, there are typically increased expectations and obligations in terms of security and compliance.

### 20. What is the use of admission plug-ins?

Admission plug-ins can be used to control how the OpenShift Container Platform works. Admission plug-ins intercept resource requests sent to the master API after they have been authenticated and allowed to validate resource requests and guarantee that scaling regulations are followed. Security regulations, resource constraints, and configuration requirements are all enforced using admission plug-ins.

### 21. What are the multiple identity providers supported by the OpenShift Container?

Multiple identity providers are supported by the OpenShift Container Platform, including:

- htpasswd
- Keystone
- GitHub
- GitLab
- LDAP
- Basic-authentication
- request header
- Google
- OpenID

### 22. What is a route and how can you create a simple HTTP-based route to a web application?

You can use a route to host your app at a public URL. Depending on your application's network security setup, it can be secure or insecure. An HTTP-based route is an unsecured route that provides a service on an unsecured application port and employs the fundamental HTTP routing protocol. Using the hello-openshift application as an example, the following technique explains how to construct a simple HTTP-based route to a web application.

**Prerequisites:**

- You have the OpenShift CLI installed (oc).
- As an administrator, you are logged in.
- You have a web application that exposes a port and a TCP endpoint that listens on the port for traffic.

**Procedure to create a simple HTTP-based route to a web application:**

- Make a project with the name hello-openshift.
- In the project, make a pod.
- Make an openshift service called hello-openshift.
- Make an unsecured route to the hello-openshift app.

### 23. What is HTTP strict transport security?

The HTTP Strict Transport Security (HSTS) policy is a security feature that informs the browser client that on the route host, only HTTPS traffic is permitted. HSTS also improves web traffic by notifying the need for HTTPS transport without the use of HTTP redirection. HSTS can let you engage with websites more quickly.

### 24. What is Openshift Online?

OpenShift Online is an OpenShift community service that allows you to quickly create, deploy and scale containerized applications in the cloud. This is Red Hat's public cloud platform for development and hosting, which enables automated provisioning, application scalability, and management, allowing developers to focus on the framework logic.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/736/original/Openshift_Online.png?1643985193)

### 25. What is the web console for the OpenShift Container Platform?

The web console for the OpenShift Container Platform provides a user interface that can be accessed through a web browser. The web console allows developers to display, access, and manage project content. To use the web console, JavaScript must be enabled. Use a web browser that supports WebSockets for the best results.

Before you build the supporting infrastructure for your cluster, look over the OpenShift Container Platform 4.x Tested Integrations page. On the master, the web console runs as a pod. The pod serves the static assets required to run the web console. After successfully installing OpenShift Container Platform using openshift-install create a cluster, look in the CLI output of the installation programme for the URL for the web portal and login credentials for your deployed cluster.

To log in and access the web console, use those credentials. To access the web console URL for existing clusters that you did not install, run oc whoami —show console.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/737/original/web_console_for_the_OpenShift_Container_Platform.png?1643985249)

### 26. What are services in OpenShift?

Services, like pods, are REST objects. An internal load balancer is provided by a Kubernetes service. It identifies a collection of replicated pods to which it will proxy connections received. Backing pods can be added or deleted from a service at any time while it stays consistently available, allowing anything that relies on it to refer to it at the same address. The default service clusterIP addresses come from OpenShift Online's internal network and are used to allow pods to communicate with one another.

A replication controller keeps track of how many replicas of a pod are active at any given time. If a pod exits or is removed, the replication controller creates more up to the specified number. Similarly, if there are more running than wanted, it deletes as many as are required to meet the specified number. With the idea of deployments, OpenShift Online expands support for the software development and deployment lifecycle, building on replication controllers. A deployment just installs a new replication controller and allows it to start up pods in the most basic example. OpenShift Online deployments, on the other hand, allow you to transition from a current image deployment to a new one, as well as define hooks to run before or after the replication controller is created.

When a service is accessed, it is given an IP address and port pair that redirects to the appropriate underlying pod. A label selector is used by a service to locate all running containers that provide a specific network service on a specific port.

### 27. Define labels.

API objects are organised, grouped, and selected using labels. Pods, for example, are "tagged" with labels, and services utilise label selectors to determine which pods to proxy to. This allows services to refer to groups of pods, even treating pods that may have distinct containers as linked entities.

Labels can be included in the metadata of almost any object. As a result, labels can be used to group arbitrarily similar objects; for example, all of an application's pods, services, replication controllers, and deployment configurations can be grouped.

### 28. Define source-to-image strategy.

S2I stands for source-to-image, and it's a tool for creating repeatable container images. By injecting the application source into a container image and building a new image, it creates ready-to-run images. The new image contains the base image, the builder, and the constructed source, and is ready to execute with the buildah run command. S2I allows you to create incremental builds that reuse previously downloaded dependencies, generated artefacts, and so on. Source-to-image (S2I) builds can be incremental, which implies it reuses artefacts from prior builds.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/738/original/source-to-image_strategy.png?1643985393)

### 29. Define custom build strategy.

Developers can use the custom build strategy to specify a specific builder image that will be responsible for the full build process. You can tailor your build process by using your builder image.

A custom builder image is a conventional container image with build process logic incorporated in it, such as for creating RPMs or base images. Custom builds have a high level of privilege and are not accessible by default to users. Custom builds should only be accessible to users who can be trusted with cluster administration permissions. Custom strategies allow you to provide an arbitrary list of secrets to the builder pod in addition to the source and image secrets that may be added to all build types.

### 30. What is the procedure for adding secrets with a web console?

You can give your build configuration a secret to allow it to access a private repository. To enable access to a private repository from the OpenShift Container Platform web portal, add a secret to your build configuration:

- Make a new project in the OpenShift Container Platform.
- Make a secret with credentials for gaining access to a private source code repository.
- Make a configuration for the construction.
- Set the Source Secret on the web console's build configuration editor page or create an app from the builder image page.
- Save the file.

## OpenShift Interview Questions for Experienced

### 1. To provide connectivity for pods throughout a full cluster, name the network plugin.

'ovs-subnet' is the network plugin that allows unrestricted connectivity for pods across the entire cluster.

### 2. What systems are running on AWS in the OpenShift environment?

One master node and one infrastructure node make up the OpenShift environment on Amazon Web Services. There's also an NFS server and 24 application nodes included.

### 3. What is the procedure followed in Red Hat when dealing with a new incident?

An incident is an occurrence that causes one or more Red Hat services to degrade or go down. A client or a member of the Customer Experience and Engagement (CEE) team can report an incident via a support case, the centralised monitoring and alerting system, or a member of the SRE team. The severity of an incident is determined by its impact on the service and the client. When dealing with a new event, Red Hat follows the following procedure:

- When a new event is reported, an SRE first responder is notified and begins an investigation.
- The incident is appointed an incident lead after the initial inquiry, who coordinates the recovery operations.
- An incident lead is in charge of all recovery communication and coordination, as well as any necessary notifications and support case updates.
- The incident has been resolved.

Within three business days of the incident, the issue is documented and a root cause analysis (RCA) is conducted. Within 7 business days of the incident, the customer will receive a drafted RCA document.

### 4. What are the advantages of using OpenShift?

The advantages of using OpenShift are:

- You can work with a variety of apps, including traditional, modernised, and cloud-native. AI/ML, Java, data analytics, databases, and other high-demand applications are all supported.
- OpenShift allows simple connection with CI/CD pipeline building tools like Jenkins, thanks to automation at multiple stages of the application.
- To avoid account compromise, OpenShift provides role-based access control (RBAC), which ensures that each developer only has access to the functionality they require. Other security rules, like IAM and OAuth, are set by default when you create a project with Openshift. You simply need to add permissions to users as needed.
- OpenShift allows web hosting and design organisations to connect developers and operations personnel to successfully build, test, and deploy applications by allowing them to cooperate quickly.  Red Hat also improved the developer experience by providing additional CLI tooling and a web-based user interface that allows users to control all of the OpenShift platform's features.
- OpenShift has monitoring and logging tools out of the box to streamline the development process and unify the deployment and operation of applications.
- OpenShift allows for effective container orchestration, enabling quick provisioning, deployment, scaling, and administration of containers. Deployments are completed faster and at a lesser cost.

### 5. What do you mean by autoscaling in OpenShift?

Autoscaling is an OpenShift feature that allows deployed applications to scale and sink as needed based on certain parameters. Autoscaling is also known as pod autoscaling in the OpenShift application. The following are the two types of application scalability.

- **Vertical scaling:** Vertical scaling is the process of gradually increasing the processing power of a single computer, which entails adding an extra CPU and hard disc. This is an older OpenShift technique that is no longer supported by newer OpenShift releases.
- **Horizontal scaling:** This form of scalability is important when more requests need to be handled and the number of machines needs to be increased.

There are two ways to enable the scaling capability in OpenShift.

- Using the configuration file for deployment.
- While the image is being displayed.

### 6. What do you know about OpenShift Kubernetes Engine?

Red Hat's OpenShift Kubernetes Engine allows you to leverage an enterprise-class Kubernetes platform as a production platform for deploying containers. Because OpenShift Kubernetes Engine and OpenShift Container Platform are the same binary distribution, you can download and install them both. OpenShift Kubernetes Engine gives you full access to an enterprise-ready Kubernetes environment that is simple to set up and has a large compatibility test matrix with many of the software components in your data centre.

OpenShift Kubernetes Engine comes with the same SLAs, bug patches, and protection against common vulnerabilities and faults as the OpenShift Container Platform. Red Hat Enterprise Linux (RHEL) Virtual Datacenter and Red Hat Enterprise Linux CoreOS (RHCOS) entitlements are included with OpenShift Kubernetes Engine, allowing you to employ an integrated Linux operating system with container runtime from the same technology supplier.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/741/original/OpenShift_Kubernetes_Engine.png?1643986095)

### 7. What are OAuth’s Identity Providers?

The Oauth identity providers are as follows:

- LDAP
- Deny All
- HTTP Passwords
- Basic Authentication
- Allow All

### 8. What is Volume Security and how does it work?

Volume security refers to ensuring that the PV and PVC of OpenShift projects are secure. In OpenShift, there are primarily four segments that manage volume access.

- Supplemental Groups
- fsgroup
- run as a user
- seLinuxOptions

### 9. What are the toggles for the features?

Feature toggles are another common topic in OpenShift interview questions. These are methods for integrating old and new versions of a feature into a single code base. The versions, on the other hand, are surrounded by logic for execution or are depending on elements such as a database switch or a property value. Separating the deployment from usage, single group, and legacy systems, as well as many server groups, is made easier with feature toggles.

### 10. What distinguishes OpenShift from Kubernetes in terms of its components?

The Internal registry and Router as an ingress traffic control are the components that distinguish OpenShift from Kubernetes. [**Learn More**](https://www.interviewbit.com/blog/openshift-vs-kubernetes/).

### 11. What is a build configuration?

When a new build is produced, a build configuration describes a single build definition and a collection of triggers. A BuildConfig is a REST object that may be used in a POST to the API server to construct a new instance. A BuildConfig is defined by a build strategy and one or more sources. The process is determined by the strategy, and the sources offer the input.

A BuildConfig is automatically generated for you if you use the web panel or CLI to create your application with OpenShift Container Platform, and it may be updated at any time. Understanding the components of a BuildConfig and the choices accessible to them can be useful if you decide to update your configuration manually later. Thus, Build configuration contains information about a specific build strategy as well as the location of developer-supplied artefacts such as the output image.

### 12. What Is Openshift's Downward API?

The downward API enables containers to access information about API objects without being bound to the OpenShift Container Platform. The pod's name, namespace, and resource values are examples of such information. Containers can use environment variables or a volume plug-in to consume data from the descending API.

You can get the following metadata and use it to configure the running pods:

- Labels
- Annotations
- Name of the pod, namespace, and IP address
- Limit information and pod CPU/memory request
- Certain data can be mounted as an environment variable in the pod, while other data can be accessed as files within a volume.

### 13. What do you understand by service mesh?

In a distributed microservice architecture, a service mesh is the network of microservices that make up applications, as well as the interactions between those microservices. It might be difficult to comprehend and maintain a Service Mesh as it grows in size and complexity.

Red Hat OpenShift Service Mesh, which is based on the open-source Istio project, adds a translucent layer to current distributed systems without requiring any changes to the service code. By delivering a unique sidecar proxy to relevant services in the mesh that intercepts all network communication between microservices, you can add Red Hat OpenShift Service Mesh functionality to services. The control plane features are used to configure and administer the Service Mesh.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/742/original/service_mesh.png?1643986537)

Red Hat OpenShift Service Mesh makes it simple to build a network of deployed services that do the following:

- Discovery
- Load balancing
- service-to-service authentication
- Failure recovery
- Metrics
- Monitoring

Red Hat OpenShift Service Mesh also has more advanced operational features, such as:

- A/B testing
- Canary releases
- Rate limiting
- Access control
- End-to-end authentication

Red Hat OpenShift Service Mesh is made up of a data plane and a control plane.

The data plane is a set of intelligent proxies that intercept and regulate all inbound and outgoing network communication between microservices in the service mesh and run alongside application containers in a pod. The data plane is designed to intercept all network traffic, both inbound (ingress) and outbound (egress). The data plane's proxies are managed and configured by the control plane. It maintains access control and use regulations, as well as collects the metrics from the service mesh's proxies, and it is the definitive source for configuration.

![](https://d3n0h9tb65y8q.cloudfront.net/public_assets/assets/000/002/743/original/Red_Hat_OpenShift_Service_Mesh.png?1643986608)

### 14. State the basic steps involved in the lifecycle of the OpenShift Container Platform.

The lifecycle of the OpenShift Container Platform is depicted in the diagram below:

- Creating a cluster for the OpenShift Container Platform
- Cluster management
- Application development and deployment
- Application scalability

### 15. What are platform operators?

Operators are one of the most crucial parts of the OpenShift Container Platform. On the control plane, operators are the preferred technique of packaging, deploying, and managing services. They can also benefit applications that are used by users.

All cluster functions in OpenShift Container Platform are organised into a set of default platform Operators, also known as cluster Operators. It is responsible for a specific aspect of cluster functionality, such as cluster-wide application logging, Kubernetes control plane administration, or the machine provisioning system. Platform Operators are defined through a ClusterOperator object, which cluster administrators can inspect on the Administration Cluster Settings page of the OpenShift Container Platform web dashboard.  
For determining cluster functionality, each platform Operator provides a simple API. The Operator hides the complexities of maintaining the component's lifespan. Operators might manage a single component or tens of thousands of components, but the ultimate goal is to reduce operational strain by automating typical tasks.

### 16. Define the terms "blue" and "green" deployments.

The Blue/Green deployment approach reduces the time it takes to complete a deployment transfer by ensuring that two versions of the application stacks are available at the same time. We can leverage service and routing tiers to seamlessly swap between two running application stacks. As a result, performing a rollback is simple and rapid.

### 17. What are the benefits of using Docker And Kubernetes in Openshift?

Docker aids in the creation of lightweight liner-based containers, while Kubernetes aids in container orchestration and management. Docker and Kubernetes are the foundations of OpenShift. All of the containers are constructed on top of a Docker cluster, which is essentially a Kubernetes service running on top of Linux computers and employing Kubernetes orchestrations. During this procedure, we create a Kubernetes master that manages all of the nodes and deploys containers to all of them. The basic purpose of Kubernetes is to use a different type of configuration file to control the OpenShift cluster and deployment flow. To build and deploy containers on cluster nodes, we use kubectl in the same way that we use the OC command-line interface in Kubernetes.

### 18. What is HAProxy?

HAProxy is a software-defined load balancer and proxy application that is open source. In OpenShift, it accepts an application's URL route and proxies requests to the appropriate pod to return the needed data to the requesting user.

HAProxy will accept all incoming connections if our application is scalable. It examines the HTTP protocol to determine to which application instance the connection should be forwarded. This is significant since it allows users to have sticky sessions.

### 19. On which platforms can you deploy an OpenShift Container Platform?

On the following platforms, you can deploy an OpenShift Container Platform 4.9 cluster that employs installer-provisioned infrastructure:

- Amazon Web Services (AWS).
- Google Cloud Platform (GCP).
- Microsoft Azure.
- Red Hat OpenStack Platform (RHOSP) version 13 and 16.

The latest OpenShift Container Platform release supports both the latest RHOSP long-life release and intermediate release. For complete RHOSP release compatibility, see the OpenShift Container Platform on RHOSP support matrix.

- Red Hat Virtualization (RHV).
- VMware vSphere.
- VMware Cloud (VMC) on AWS.
- Bare metal.

### 20. What are the security-related features in OpenShift Container Platform that are based on Kubernetes?

The following are security-related features in the OpenShift Container Platform, which are based on Kubernetes:

- Multitenancy is a technique for isolating containers at many levels by combining Role-Based Access Controls with network restrictions.
- Admission plug-ins act as a barrier between an API and people who use it to make requests.

## Additional Resources

[Practice Coding](https://www.interviewbit.com/practice/)

[InterviewBit Blog](https://www.interviewbit.com/blog/)

[Kubernetes Vs Openshift](https://www.interviewbit.com/blog/openshift-vs-kubernetes/)


## EC-OpenShiftContainerPlatform3 ##

CloudBees Flow plugin for OpenShift using REST API.

It has been built and tested against Openshift v3.11 but should work on 3.x and 4.x

### Contents ###
Currently contains the following procedures:

- Get Route in a Namespace
- Get Deployment in a Namespace
- Get DeploymentConfig in a Namespace
- Create Route in a Namespace
- Create Deployment in a Namespace
- Create DeploymentConfig in a Namespace
- Patch Route in a Namespace
- Patch Deployment in a Namespace
- Patch DeploymentConfig in a Namespace

### Notes ###
- Check Connection when creating plugin config does not currently work
- The procedures assume that you will use an account Bearer Token
- For create and patch you can send any valid raw JSON content, see examples below.

### Examples ###

#### Create Route ####

{
  "kind": "Route",
  "apiVersion": "route.openshift.io/v1",
  "metadata": {
    "name": "bluegreen",
    "namespace": "default"
  },
  "spec": {
    "host": "kubernetes-default.apps.ocp.kearos.net",
    "path": "/bluegreen",
    "to": {
      "kind": "Service",
      "name": "bluegreen",
      "weight": 100
    },
    "port": {
      "targetPort": 443
    },
    "wildcardPolicy": "None"
  }
}

#### Patch Route ####

[
    {
        "op": "replace",
        "path": "/spec/to/name",
        "value": "/green"
    }
]

### Contributors ###
- Shaohua (Holy) Wen
- Phil Cherry

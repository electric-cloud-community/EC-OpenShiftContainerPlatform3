package FlowPlugin::OpenShiftContainerPlatform3;
use JSON;
use strict;
use warnings;
use base qw/FlowPDF/;
use FlowPDF::Log;

# Feel free to use new libraries here, e.g. use File::Temp;

# Service function that is being used to set some metadata for a plugin.
sub pluginInfo {
    return {
        pluginName          => '@PLUGIN_KEY@',
        pluginVersion       => '@PLUGIN_VERSION@',
        configFields        => ['config'],
        configLocations     => ['ec_plugin_cfgs'],
        defaultConfigValues => {}
    };
}

# Auto-generated method for the procedure Get a Route in a namespace/Get a Route in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace

sub getARouteInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->getARouteInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;

    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# This method is used to access auto-generated REST client.
sub getECOpenShiftContainerPlatform3RESTClient {
    my ($self) = @_;

    my $context = $self->getContext();
    my $config = $context->getRuntimeParameters();
    require FlowPlugin::ECOpenShiftContainerPlatform3RESTClient;
    my $client = FlowPlugin::ECOpenShiftContainerPlatform3RESTClient->createFromConfig($config);
    return $client;
}
# Auto-generated method for the procedure Get a Deployment in a namespace/Get a Deployment in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace

sub getADeploymentInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->getADeploymentInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Get a DeploymentConfig in a namespace/Get a DeploymentConfig in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace

sub getADeploymentConfigInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->getADeploymentConfigInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Create a Route in a namespace/Create a Route in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: namespace
# Parameter: body

sub createARouteInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->createARouteInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Create a Deployment in a namespace/Create a Deployment in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: namespace
# Parameter: body

sub createADeploymentInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->createADeploymentInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Create a DeploymentConfig in a namespace/Create a DeploymentConfig in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: namespace
# Parameter: body

sub createADeploymentConfigInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->createADeploymentConfigInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Patch a Deployment in a namespace/Patch a Deployment in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace
# Parameter: body

sub patchADeploymentInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->PatchADeploymentInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Patch a DeploymentConfig in a namespace/Patch a DeploymentConfig in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace
# Parameter: body

sub patchADeploymentConfigInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->PatchADeploymentConfigInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Patch a Route in a namespace/Patch a Route in a namespace
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace
# Parameter: body

sub patchARouteInANamespace {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->PatchARouteInANamespace(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('restResult', encode_json($response));
    $stepResult->apply();
}

# Auto-generated method for the procedure Create instantiate of a BuildRequest/Create instantiate of a BuildRequest
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: name
# Parameter: namespace
# Parameter: body

sub createInstantiateOfABuildRequest {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECOpenShiftContainerPlatform3RESTClient = $pluginObject->getECOpenShiftContainerPlatform3RESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'name' => $params->{'name'},
        'namespace' => $params->{'namespace'},
        'body' => $params->{'body'},
    );
    my $response = $ECOpenShiftContainerPlatform3RESTClient->CreateInstantiateOfABuildRequest(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    

    $stepResult->apply();
}

## === step ends ===
# Please do not remove the marker above, it is used to place new procedures into this file.


1;
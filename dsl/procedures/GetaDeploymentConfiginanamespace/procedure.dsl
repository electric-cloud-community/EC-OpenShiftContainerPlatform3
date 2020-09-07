// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Get a DeploymentConfig in a namespace', description: '''Read the specified DeploymentConfig''', {

    step 'Get a DeploymentConfig in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/GetaDeploymentConfiginanamespace/steps/GetaDeploymentConfiginanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 222c980de6f7eb22507d9382ba5b54ae ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
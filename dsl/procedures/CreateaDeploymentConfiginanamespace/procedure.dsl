// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Create a DeploymentConfig in a namespace', description: '''Create the specified DeploymentConfig''', {

    step 'Create a DeploymentConfig in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/CreateaDeploymentConfiginanamespace/steps/CreateaDeploymentConfiginanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: '''Rest API Result'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: e5a3e0070892c6d7dd2f5e4346410728 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Patch a DeploymentConfig in a namespace', description: '''Partially update the specified DeploymentConfig''', {

    step 'Patch a DeploymentConfig in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/PatchaDeploymentConfiginanamespace/steps/PatchaDeploymentConfiginanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 72f80ac663c0df02efe4765847d1dc78 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
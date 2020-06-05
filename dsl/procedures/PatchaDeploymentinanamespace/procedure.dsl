// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Patch a Deployment in a namespace', description: '''Partially update the specified Deployment''', {

    step 'Patch a Deployment in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/PatchaDeploymentinanamespace/steps/PatchaDeploymentinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: '''Rest API Result'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 540a5901bd0617f6bb4bf4def7226f9c ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
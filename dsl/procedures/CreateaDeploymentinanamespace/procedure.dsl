// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Create a Deployment in a namespace', description: '''Create the specified Deployment''', {

    step 'Create a Deployment in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/CreateaDeploymentinanamespace/steps/CreateaDeploymentinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 15564a27113fa8b5a57b443211cf1d73 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
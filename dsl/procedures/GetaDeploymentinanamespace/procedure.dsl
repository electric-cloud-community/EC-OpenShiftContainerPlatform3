// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Get a Deployment in a namespace', description: '''Read the specified Deployment''', {

    step 'Get a Deployment in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/GetaDeploymentinanamespace/steps/GetaDeploymentinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 7e25a8cdb4decee02d451f5b4757b067 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
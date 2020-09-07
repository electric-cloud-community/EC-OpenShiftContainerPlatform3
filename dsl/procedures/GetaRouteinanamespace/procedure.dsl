// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Get a Route in a namespace', description: '''Read the specified Route''', {

    step 'Get a Route in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/GetaRouteinanamespace/steps/GetaRouteinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: a00cce98571674d14184bcb13178fe2c ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Create a Route in a namespace', description: '''Create the specified Route''', {

    step 'Create a Route in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/CreateaRouteinanamespace/steps/CreateaRouteinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: b7d308f6764ab16c8ead9a3740c881d0 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
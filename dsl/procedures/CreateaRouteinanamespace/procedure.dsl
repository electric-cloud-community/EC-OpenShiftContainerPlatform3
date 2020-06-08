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
        description: '''Rest API Result'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 0d487bd32333fb513e8682f440e5acee ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
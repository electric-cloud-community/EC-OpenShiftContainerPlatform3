// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Patch a Route in a namespace', description: '''Partially update the specified Route''', {

    step 'Patch a Route in a namespace', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/PatchaRouteinanamespace/steps/PatchaRouteinanamespace.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: fe001a4ef0519c762920dc04aee095ad ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
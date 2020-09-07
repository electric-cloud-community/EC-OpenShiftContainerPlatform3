// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Create instantiate of a BuildRequest', description: '''Create instantiate of a BuildRequest''', {

    step 'Create instantiate of a BuildRequest', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/CreateinstantiateofaBuildRequest/steps/CreateinstantiateofaBuildRequest.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'restResult',
        description: 'Rest API Result'
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 45c81053ff4aba43baad510b88f8eb6b ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}
// const isLexicalError = (e) => {
//     const validIdentifier = /^[a-z_$][a-z0-9_$]*$/;
//     const validInteger = /^[0-9]+$/;
//     const validCharacter = /^[a-zA-Z0-9_$,\[\]#"]$/;
//     if(e.found) {
//         if(!validIdentifier.test(e.found) && 
//             !validInteger.test(e.found) &&
//             !validCharacter.test(e.found)) {
//             return true; // Error léxico
//         }
//     }
//     return false; // Error sintáctico
// }

const analyze = () => {
    try {
        const _ = Parser.parse(editor.getValue())

        out.setOption('value', 'Analisis Correcto')
    } catch(e) {
        if (e instanceof Parser.SyntaxError) {
            // if (isLexicalError(e)) {
            //     out.setOption('value', `Lexical Error: ${e.message} [${e.location.start.line}:${e.location.start.column}]`);
            // } else {
                out.setOption('value', `Syntax Error: ${e.message} [${e.location.start.line}:${e.location.start.column}]`);
            // }
        } else {
            out.setOption('value', `Error desconocido: ${e}`);
        }
        console.error(e)
    }
}
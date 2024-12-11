var editor = CodeMirror(document.getElementById('editor'), {
    mode: "text/x-c++src",
    theme: "visual-studio",
    lineNumbers: true,
    indentUnit: 4,
    indentWithTabs: true,
    autoCloseBrackets: true,
    matchBrackets: true,
    styleActiveLine: true,
    caseFold: true,
});

var out = CodeMirror(document.getElementById('out'), {
    mode: "text",
    theme: "visual-studio",
    lineNumbers: true,
    indentUnit: 4,
    indentWithTabs: true,
    readOnly: true,
    cursorHeight: 0,
    lineWrapping: false,
});

editor.setSize(null, window.innerHeight - document.getElementById('editor').offsetTop - 16);
	window.addEventListener("resize", function() {
	editor.setSize(null, window.innerHeight - document.getElementById('editor').offsetTop - 16);
});

out.setSize(null, window.innerHeight - document.getElementById('editor').offsetTop - 16);
	window.addEventListener("resize", function() {
	out.setSize(null, window.innerHeight - document.getElementById('editor').offsetTop - 16);
});
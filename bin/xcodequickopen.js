/**
 * arg1 Filename:row
 * filename can not be included path
 */
function run(argv) {
    var argvs = JSON.stringify(argv);
    var arg1 = argv[0];
    var app = Application("Xcode");
    var se = Application("System Events");
    app.activate();
    delay( 1 );
    se.keystroke( "o", {"using" :["command down", "shift down"] } );
    se.keystroke( arg1 );
    se.keyCode(36);
}


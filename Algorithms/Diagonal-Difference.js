//https://www.hackerrank.com/challenges/diagonal-difference
process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();    
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

/////////////// ignore above this line ////////////////////

function main() {
    var n = parseInt(readLine());
    var a = [];
    for(a_i = 0; a_i < n; a_i++){
       a[a_i] = readLine().split(' ');
       a[a_i] = a[a_i].map(Number);
    }
    var diag1 = 0;
    var diag2 = 0;
    for(var i = 0; i < a.length; i++){
        diag1 = diag1 + a[i][i];
        diag2 = diag2 + a[i][a.length - i -1];
    }
    
    process.stdout.write(Math.abs(diag2 - diag1));
}


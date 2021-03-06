//https://www.hackerrank.com/challenges/2d-array
//
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
    var arr = [];
    for(arr_i = 0; arr_i < 6; arr_i++){
       arr[arr_i] = readLine().split(' ');
       arr[arr_i] = arr[arr_i].map(Number);
    }

    //process.stderr.write(arr[0]);
    var maxVal = -100;
    
    for(var i = 0; i < 6; i ++){
        for(var j = 0; j < 6; j++){
            if(i +2 < 6 && j +2 < 6){
                var temp = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
                if(temp > maxVal){
                    maxVal = temp;
                }
            }
        }
    }
    process.stdout.write(maxVal);
}


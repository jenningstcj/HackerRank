//https://www.hackerrank.com/challenges/sparse-arrays
//
function buildStringList(arr, numOfStrings){
    var newArr = [];
    for(var i = 1; i < arr.length; i++){
        if(i < numOfStrings + 1){
            newArr.push(arr[i]);
        }
    }
    return newArr;
}
function buildQueryList(arr, starting, numOfQueries){
    var newArr = [];
    for(var i = starting; i < arr.length; i++){
        if(i < numOfQueries + 1){
            newArr.push(arr[i]);
        }
    }
    return newArr;
}
function processData(input) {
    //Enter your code here
    var arr = input.split('\n');
    var numOfStrings = +arr[0];
    var strings = buildStringList(arr, numOfStrings);
    var numOfQueries = arr[numOfStrings + 1];
    var queries = buildQueryList(arr, numOfStrings +2, numOfQueries);
    
    var answer = "";
    for(var i = 0; i < queries.length; i++){
        var count = 0;
        for(var j = 0; j < strings.length; j++){
            if(queries[i] == strings[j]){
                count++;
            }
        }
        answer = answer + count + '\n';
    }
    
    
    process.stdout.write(answer);
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});


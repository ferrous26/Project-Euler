var solution = path_count([1]);
document.write('Number of routes in a 20x20 grid: ' + solution);

function path_count(list) {
    var sum = 0;
    for ( var i in list ) {
        sum += list[i];
    }
    sum *= 2;

    // base case
    if (list.length === 20)
        return sum;

    // recursive case
    for ( var i = 1; i < list.length; i++ ) {
        list[i] += list[i-1];
    }
    list.push(sum);
    document.write(list + '<br />');

    return path_count(list);
}

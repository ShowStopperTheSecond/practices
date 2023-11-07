function loop(value, testFn, updateFn, body){
    for (let i=value; testFn(i); i=updateFn(i)){
        body(i)
    }
}
loop(0, x=>x<10, x=>x+1, console.log)
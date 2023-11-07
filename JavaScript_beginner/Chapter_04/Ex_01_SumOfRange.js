function range(start =0,  end, step=1){
    let list=[];
    for(let i=start; i!=end; i+=step){
        list.push(i)
    }
    return list;
}

function sum(array){
    let sum=0;
    for (let n of array){
        sum +=n
    }
    return sum;
}
console.log(range(10, 0, -1))
console.log(sum(range(1, 11)))
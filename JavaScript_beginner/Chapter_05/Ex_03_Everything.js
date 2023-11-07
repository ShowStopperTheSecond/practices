function everything(arr, test){
    for (let el of arr){
        if (!test(el)) return false
    }
    return true
}
a = [1, 2, 3, 4, 5, 6]
console.log(everything(a, x=>x<3))

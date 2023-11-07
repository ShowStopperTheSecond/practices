function compareObj(obj1, obj2){
    if (Object.keys(obj1) != Object.keys(obj2)) return false
    for (let key of Object.key(obj1)){
        if (obj1[key] != obj2[key]) return false
    }
    return true
}


obj1 = {a:1, b:2, d:2};
obj2 = {d:2, b:2, a:1}

console.log(Object.keys(obj1))
console.log(Object.keys(obj2))

console.log(Object.keys(obj1) == Object.keys(obj2))



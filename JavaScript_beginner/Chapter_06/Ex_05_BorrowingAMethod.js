let obj={
    a : [1,2, 3],
    hasOwnProperty: ()=>console.log("wtf")
}

console.log(obj.hasOwnProperty("string"))

console.log(Object.prototype.hasOwnProperty.call(obj,"string"))
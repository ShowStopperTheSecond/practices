function countChar(str, char){
    let count = 0
    for (let i=0; i< str.length; i++){
        if (char == str[i]) count++;
    }
    return count
}

console.log(countChar("what the heck is going on here?", "e"));




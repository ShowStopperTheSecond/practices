words=  ["cat", "car"]
for (let w of words){
    console.log(/ca[tr]/.exec(w))
}


words=  ["pop", "prop"]
for (let w of words){
    console.log(/pr?op/.exec(w))
}



words = ["ferret", "ferry", "ferrari"]
for (let w of words){
    console.log(/ferr(et|y|ari)/.exec(w))
}



words = ["fabulious"]
for (let w of words){
    console.log(/.*ious/.exec(w))
}




words = [" -ssdfsaf"]
for (let w of words){
    console.log(/\s[-,:;]/.exec(w))
}



// A word longer than six letters

words = ["javidnorouziisamazing", "javidn" ]
for (let w of words){
    console.log(/.{6,}/.exec(w))
}


// A word without the letter e (or E)

words = ["apple", "ej" ]
for (let w of words){
    console.log(/[^e]+/i.exec(w))
}



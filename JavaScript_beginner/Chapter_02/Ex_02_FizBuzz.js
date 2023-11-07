for (let i = 0; i <= 100; i=i+1) {
    if (i % 3 == 0 && i % 5 != 0) {
        console.log("Fizz, ");
    } else if (i % 3 != 0 && i % 5 == 0) {
        console.log("Buzz, \b");
    } else if (i % 3 == 0 && i % 5 == 0) {
        console.log("FizzBuzz, ");
    }
    else{
        console.log(i)
    }
}
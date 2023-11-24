class MultiplicatorUnitFailure extends Error { }



function primitiveMultiply(a, b) {
    if (Math.random() < .2) {
        return a * b;
    } else {
        throw new MultiplicatorUnitFailure("WTF")
    }
}


function multiply(a, b) {
    let result = 0
    while (true) {

        try {
            result = primitiveMultiply(a, b)
            break
        } catch (e) {
            console.log("Error happened: ", e);
        }
    }
    return result;
}


for (let i = 0; i < 10; i++) {
    multiply(2, 3);
}
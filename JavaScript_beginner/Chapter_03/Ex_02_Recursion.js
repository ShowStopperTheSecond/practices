function findRemainder(number) {
    function remainder(n) {
        if (n >= number) {
            return remainder(n - number);
        } else {
            return n
        }
    }
    return remainder
}
let rem9 = findRemainder(9)

console.log(rem9(29))


function reverseArray(arr) {
    let newArray = [];
    for (let n of arr) {
        newArray.unshift(n)
    }
    return newArray;
}

function reverseArrayInPlace(arr) {
    console.log(arr.lenght)
    for (let i = 0; i < arr.length / 2; i++) {
        console.log("in the loop", arr[i], arr[arr.length - i - 1])
        tmp = arr[i];
        arr[i] = arr[arr.length - i - 1];
        arr[arr.length - i - 1] = tmp;
    }
    return arr;
}


arr = [1, 2, 3, 4, 5, 6];
console.log(reverseArray(arr));
console.log(reverseArrayInPlace(arr));


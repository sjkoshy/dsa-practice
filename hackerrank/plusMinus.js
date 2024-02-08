/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

function plusMinus(arr) {
    const n = arr.length
    let posCount = 0
    let negCount = 0
    let zeroCount = 0
    
    for (let i = 0; i < n; i++) {
        if(arr[i] > 0) {
            posCount++
        }
        
        else if(arr[i] < 0) {
            negCount++ 
        }
        
        else {
            zeroCount++
        }
    }
        
    const posRatio = posCount / n 
    const negRatio = negCount / n
    const zeroRatio = zeroCount / n
    
    console.log(posRatio.toFixed(6))
    console.log(negRatio.toFixed(6))
    console.log(zeroRatio.toFixed(6))
}
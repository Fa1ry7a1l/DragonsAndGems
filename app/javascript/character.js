function grateZeroLess30(tag) {
    tag.value = Math.min(Math.max(0, parseInt(tag.value) || 0),30);
}


function grateZero(tag)
{
    tag.value = Math.max(0, parseInt(tag.value) || 0);
}

function zeroTwo(tag)
{
    tag.value = Math.min(Math.max(0, parseInt(tag.value) || 0),2);
}


// let a = document.getElementById("123")
// a.oninput=function (){grateZero(a)}

for (let i = 0; i < 7; i++) {
    let a = document.getElementById(`30_${i}`)
    a.oninput=function (){grateZeroLess30(a)}
}

for (let i = 1; i < 19; i++) {
    let a = document.getElementById(`02_${i}`)
    a.oninput=function (){zeroTwo(a)}
}

for (let i = 0; i < 9; i++) {
    let a = document.getElementById(`0_${i}`)
    a.oninput=function (){grateZero(a)}
}
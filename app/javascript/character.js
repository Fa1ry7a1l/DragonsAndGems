function grateZero(tag) {
    Math.max(0, parseInt(tag.value) || 0)
}

let a = document.getElementById("123")
a.oninput+=function (){grateZero(a)}
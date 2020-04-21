function createSticky() {
    const userInput = document.getElementById("textbox01").value;
    const newSticky01 = `<div class="output">` + userInput + `</div>`
    document.getElementById("output").innerHTML += newSticky01;
}
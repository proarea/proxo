const inputF = document.querySelector("#fi");
const inputS = document.querySelector("#se");
const output = document.querySelector("#res");

function doParse() {
    const firstMap = JSON.parse(inputF.value);
    const secondMap = JSON.parse(inputS.value);

    for (const [key, value] of Object.entries(firstMap)) {
        if (key[0] === "@") continue;
        output.value += `${value}\n${secondMap[key]}\n\n`;
    }
}
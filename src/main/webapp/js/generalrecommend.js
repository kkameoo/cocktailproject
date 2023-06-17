function addOutput(output) {
    var display = document.getElementById('display');
    display.value += output;
}
  
function del() {
    var display = document.getElementById("display");
    var output = display.value;
    var lastChar = output.charAt(output.length-1);
    
    if (lastChar === " ") { // 마지막에 띄어쓰기가 있으면 버튼 텍스트를 삭제합니다.
      display.value = output.substring(0, output.length-4);
    } else { // 마지막에 띄어쓰기가 없으면 마지막 한 글자를 삭제합니다.
      display.value = output.substring(0, output.length-1);
    }
}
  
function reset() {
    var display = document.getElementById('display');
    display.value = "";
}
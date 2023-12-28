let i = 0;
// 同步函数
window.bindHello = (args) => {
  alert(`Hello ${args}`);
  return i++ % 2 == 0;
}
// 异步函数
window.bindHelloAsync = (args) => {
  return new Promise((resolve) => {
    alert(`Hello ${args}`);
    resolve(i++ % 2 == 0);
  })
}

window.test = (args) => {
  var sum = window.add(12,23);
  alert("JS调用Flutter端方法add(12,23)结果为：" + sum);
}

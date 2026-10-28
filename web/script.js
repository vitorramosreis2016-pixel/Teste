const button = document.querySelector("#hello-button");
const output = document.querySelector("#output");

button.addEventListener("click", () => {
  output.textContent = "Funcionou! O JavaScript está conectado à página.";
});

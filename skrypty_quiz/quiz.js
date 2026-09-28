window.addEventListener("load",()=>{
      const wartosc = document.querySelectorAll("input[type='radio']");
      wartosc.forEach((przycisk)=>{
            przycisk.addEventListener("click",()=>{
                  document.querySelector("input[type='submit']").disabled = false;
            });
      });
});
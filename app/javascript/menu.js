document.addEventListener(('turbo:load'), ()=>{
   
    const button = document.getElementById("burger-btn");
    const menu = document.getElementById("popup-menu"); 
    
    if(button){
    button.addEventListener("click", function(event) {
        menu.style.display = "block";
        event.stopPropagation();
    }, false); 
    
   document.addEventListener("click", function(event) {
    if(event.target !== menu){
        menu.style.display = "none";
    }
        
    }, false);
}
  });

    
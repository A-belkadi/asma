var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
    showDivs(slideIndex += n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("mySlides");
    if (n > x.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = x.length
    }
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x[slideIndex - 1].style.display = "block";
}


function openForm() {
    document.getElementById("myForm").style.display = "block"; 
}
function closeForm() {
    document.getElementById("myForm").style.display = "none";
}
var nom=document.getElementById("nom");
var prenom=document.getElementById("prenom");
var date1=document.getElementById("date1");
var date2=document.getElementById("date2");
var nombre=document.getElementById("nombre");



var btn_now = document.getElementsByClassName("Now");

btn_now[0].addEventListener("click",()=>{
    alert("Nom :"+nom.value+"\n"+"Prenom :"+prenom.value+"\n"+"date naissance:"+date1.value+"\n"+"date reservation:"+date2.value+"\n"+"nombre de personne:"+nombre.value)
})
         
                
       
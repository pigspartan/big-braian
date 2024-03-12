

function zad1()
{
    document.getElementById("p2").style.fontFamily = "Algerian";
    document.getElementById("p2").style.color = "blue"
    document.getElementById("p2").style.fontSize = "44"
}

function zad2()
{
    input = document.getElementById("zad2").value;
    document.getElementById("z2").src = input;
}

function zad3()
{
    input = document.getElementById("zad3a").value;
    input2 = document.getElementById("zad3b").value;
    ellisty=document.createElement("li");
    link = document.createElement("a");
    link.href=input
    content=document.createTextNode(input2);
    link.appendChild(content);
    ellisty.appendChild(link)
    lista = document.getElementById("kekma");
    lista.appendChild(ellisty);
}

function zad4a(obj)
{
    const d = new Date();
    
    obj.innerHTML = d


}
function zad4b(obj)
{
    obj.innerHTML = "sdfsdfsdf"


}


function zad4c()
{
    document.getElementById("zad4c").innerHTML = document.getElementById("zad4ca").innerHTML;

}
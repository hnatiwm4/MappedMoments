
function setMap()
{
    var sh = screen.height-65;
    /*document.getElementById("map_container").style.width = screen.width + "px";*/
    document.getElementById("map_container").style.height = sh + "px";
    /* note: 150 from size of header 
       (window.outerheight-window.innerheight) to get size of browser UI elements*/
}
window.onload=setMap;

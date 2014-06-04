function add()
{
    var inpt = document.getElementById('input_template');
    inpt.parentNode.appendChild(inpt.cloneNode(false));
}
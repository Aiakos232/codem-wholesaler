window.addEventListener('message', function(event) {
    var item = event.data;
   
    if (item.type === "ui") {
        document.getElementById('personelmenu').style.display = 'block'
   
    } else if(item.type = 'close') {
        document.getElementById('personelmenu').style.display = 'none'

    }
})


$(document).keydown(function(e) {
       
    if (e.keyCode == 27) {
        $('#personelmenu').hide();
        $.post('http://codem-wholesaler/escape');
    }
});



$(".anagovde").click(function(e){
    let type = $(e.target).attr("id");
    if (type === "baliksat" ){
            miktar = $("#baliksonuc").val();
            item =  $("#water").val();
            price = $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
            miktar: parseInt(miktar),
            item : item,
            price :parseInt(price),
        }));

    }else  if(type==="esrarsat") {

        miktar = $("#esrarsonuc").val();
        item =  $("#esrar").val();
        price =  $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
        miktar: parseInt(miktar),
        item : item,
        price :parseInt(price),

        }));
    }else  if(type==="odunsat") {

        miktar = $("#odunsonuc").val();
        item =  $("#odun").val();
        price =  $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
        miktar: parseInt(miktar),
        item : item,
        price :parseInt(price),

        }));
    } 
    else  if(type==="odunsat") {

        miktar = $("#odunsonuc").val();
        item =  $("#odun").val();
        price =  $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
        miktar: parseInt(miktar),
        item : item,
        price : parseInt(price),
        }));
    } else  if(type==="stonesat") {

        miktar = $("#stonesonuc").val();
        item =  $("#stone").val();
        price =  $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
        miktar: parseInt(miktar),
        item : item,
        price :parseInt(price),
        }));
    } else  if(type==="honeysat") {

        miktar = $("#honeysonuc").val();
        item =  $("#honey").val();
        price =  $("#price").val();
        $.post("https://codem-wholesaler/itemmiktar", JSON.stringify({
        miktar: parseInt(miktar),
        item : item,
        price :parseInt(price),
        }));
    }
    
 });


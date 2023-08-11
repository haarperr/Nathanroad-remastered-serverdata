// Draggable elements

$(function() {
  $('#healthdiv').draggable({
    drag: function(event, ui){
      dragpositionHealthdivTop = ui.position.top;
      dragpositionHealthdivLeft = ui.position.left;
      localStorage.setItem("healthdivTop", dragpositionHealthdivTop);
      localStorage.setItem("healthdivLeft", dragpositionHealthdivLeft);
    }
  });
  });
  $('#walletdiv').draggable({
    drag: function(event, ui){
      dragpositionwalletdivTop = ui.position.top;
      dragpositionwalletdivLeft = ui.position.left;
      localStorage.setItem("walletdivTop", dragpositionwalletdivTop);
      localStorage.setItem("walletdivLeft", dragpositionwalletdivLeft);
    }
  });

  $('#bankdiv').draggable({
    drag: function(event, ui){
      dragpositionbankdivTop = ui.position.top;
      dragpositionbankdivLeft = ui.position.left;
      localStorage.setItem("bankdivTop", dragpositionbankdivTop);
      localStorage.setItem("bankdivLeft", dragpositionbankdivLeft);
    }
  });

  $('#namediv').draggable({
    drag: function(event, ui){
      dragpositionnamedivTop = ui.position.top;
      dragpositionnamedivLeft = ui.position.left;
      localStorage.setItem("namedivTop", dragpositionnamedivTop);
      localStorage.setItem("namedivLeft", dragpositionnamedivTop);
    }
  });

  $('#societydiv').draggable({
    drag: function(event, ui){
      dragpositionsocietydivTop = ui.position.top;
      dragpositionsocietydivLeft = ui.position.left;
      localStorage.setItem("societydivTop", dragpositionsocietydivTop);
      localStorage.setItem("societydivLeft", dragpositionsocietydivLeft);
    }
  });


  $('#blackMoneydiv').draggable({
    drag: function(event, ui){
      dragpositionblackMoneydivTop = ui.position.top;
      dragpositionblackMoneydivLeft = ui.position.left;
      localStorage.setItem("blackMoneydivTop", dragpositionblackMoneydivTop);
      localStorage.setItem("blackMoneydivLeft", dragpositionblackMoneydivLeft);
    }
  });


  $('#timediv').draggable({
    drag: function(event, ui){
      dragpositiontimedivTop = ui.position.top;
      dragpositiontimedivLeft = ui.position.left;
      localStorage.setItem("timedivTop", dragpositiontimedivTop);
      localStorage.setItem("timedivLeft", dragpositiontimedivLeft);
    }
  });
  $("#armordiv").draggable({
    drag: function(event, ui){
      dragpositionArmordivTop = ui.position.top;
      dragpositionArmordivLeft = ui.position.left;
      localStorage.setItem("armordivTop", dragpositionArmordivTop);
      localStorage.setItem("armordivLeft", dragpositionArmordivLeft);
    }
  });
  $("#hungerdiv").draggable({
    drag: function(event, ui){
      dragpositionHungerdivTop = ui.position.top;
      dragpositionHungerdivLeft = ui.position.left;
      localStorage.setItem("hungerdivTop", dragpositionHungerdivTop);
      localStorage.setItem("hungerdivLeft", dragpositionHungerdivLeft);
    }
  });
  $("#thirstdiv").draggable({
    drag: function(event, ui){
      dragpositionThirstdivTop = ui.position.top;
      dragpositionThirstdivLeft = ui.position.left;
      localStorage.setItem("thirstdivTop", dragpositionThirstdivTop);
      localStorage.setItem("thirstdivLeft", dragpositionThirstdivLeft);
    }
  });
  $("#staminadiv").draggable({
    drag: function(event, ui){
      dragpositionStaminadivTop = ui.position.top;
      dragpositionStaminadivLeft = ui.position.left;
      localStorage.setItem("staminadivTop", dragpositionStaminadivTop);
      localStorage.setItem("staminadivLeft", dragpositionStaminadivLeft);
    }
  });
  $("#oxygendiv").draggable({
    drag: function(event, ui){
      dragpositionOxygendivTop = ui.position.top;
      dragpositionOxygendivLeft = ui.position.left;
      localStorage.setItem("oxygendivTop", dragpositionOxygendivTop);
      localStorage.setItem("oxygendivLeft", dragpositionOxygendivLeft);
    }
  });
  $("#id").draggable({
    drag: function(event, ui){
      dragpositionIdTop = ui.position.top;
      dragpositionIdLeft = ui.position.left;
      localStorage.setItem("idTop", dragpositionIdTop);
      localStorage.setItem("idLeft", dragpositionIdLeft);
    }
  });
  $("#microphone").draggable({
    drag: function(event, ui){
      dragpositionmicrophoneTop = ui.position.top;
      dragpositionmicrophoneLeft = ui.position.left;
      localStorage.setItem("microphoneTop", dragpositionmicrophoneTop);
      localStorage.setItem("microphoneLeft", dragpositionmicrophoneLeft);
    }
  });
  $("#voice").draggable({
    drag: function(event, ui){
      dragpositionmicrophoneTop = ui.position.top;
      dragpositionmicrophoneLeft = ui.position.left;
      localStorage.setItem("microphoneTop", dragpositionmicrophoneTop);
      localStorage.setItem("microphoneLeft", dragpositionmicrophoneLeft);
    }
  });
  $("#job").draggable({
    drag: function(event, ui){
      dragpositionjobTop = ui.position.top;
      dragpositionjobLeft = ui.position.left;
      localStorage.setItem("jobTop", dragpositionjobTop);
      localStorage.setItem("jobLeft", dragpositionjobLeft);
    }
  });
  $("#logo").draggable({
    drag: function(event, ui){
      dragpositionjobTop = ui.position.top;
      dragpositionjobLeft = ui.position.left;
      localStorage.setItem("logoTop", dragpositionjobTop);
      localStorage.setItem("logoLeft", dragpositionjobLeft);
    }
  });
  $("#setting").draggable();



// Data
window.addEventListener("message", function(event) {
  switch (event.data.action) {
    case "show":
      $("#setting").fadeIn();
    break;

    case "hide":
      $("#setting").fadeOut();
    break;

    case "setPosition":
      {
        $("#hungerdiv").animate({ top: localStorage.getItem("hungerdivTop"), left: localStorage.getItem("hungerdivLeft") });
        $("#thirstdiv").animate({ top: localStorage.getItem("thirstdivTop"), left: localStorage.getItem("thirstdivLeft") });
      };
      $("#healthdiv").animate({ top: localStorage.getItem("healthdivTop"), left: localStorage.getItem("healthdivLeft") });
      $("#armordiv").animate({ top: localStorage.getItem("armordivTop"), left: localStorage.getItem("armordivLeft") });
      $("#stamina").animate({ top: localStorage.getItem("staminaTop"), left: localStorage.getItem("staminaLeft") });
      $("#oxygendiv").animate({ top: localStorage.getItem("oxygendivTop"), left: localStorage.getItem("oxygendivLeft") });
      $("#microphone").animate({ top: localStorage.getItem("microphone"), left: localStorage.getItem("microphone") });
      $("#job").animate({ top: localStorage.getItem("jobTop"), left: localStorage.getItem("jobLeft") });
      $("#id").animate({ top: localStorage.getItem("idTop"), left: localStorage.getItem("idLeft") });
      $("#bankdiv").animate({ top: localStorage.getItem("bankdivTop"), left: localStorage.getItem("bankdivLeft") });
      $("#namediv").animate({ top: localStorage.getItem("namedivTop"), left: localStorage.getItem("namedivLeft") });

      $("#walletdiv").animate({ top: localStorage.getItem("walletdivTop"), left: localStorage.getItem("walletdivLeft") });
      $("#blackMoneydiv").animate({ top: localStorage.getItem("blackMoneydivTop"), left: localStorage.getItem("blackMoneydivLeft") });
      $("#societydiv").animate({ top: localStorage.getItem("societydivTop"), left: localStorage.getItem("societydivLeft") });
      $("#timediv").animate({ top: localStorage.getItem("timedivTop"), left: localStorage.getItem("timedivLeft") });
      $("#logo").animate({ top: localStorage.getItem("logoTop"), left: localStorage.getItem("logoLeft") });
    break;

    case "hud":
      $("#idnumber").text(event.data.id);
      $("#time").text(event.data.time);
      $("#name").text(event.data.name);

    break;

// Actions
    case "mainHide":
	    $("#main").fadeOut();
      $("#healthdiv").fadeOut();
      $("#armordiv").fadeOut();
      $("#hungerdiv").fadeOut();
      $("#thirstdiv").fadeOut();
      $("#oxygendiv").fadeOut();
      $("#staminadiv").fadeOut();
      $("#main2").fadeOut();
      $("#walletdiv").fadeOut();
      $("#bankdiv").fadeOut();
      $("#namediv").fadeOut();
      $("#societydiv").fadeOut();
      $("#blackMoneydiv").fadeOut();
      $("#job").fadeOut();
      $("#id").fadeOut();
	    $("#timediv").fadeOut();
      $("#logo").fadeOut();
      $("#microphone").fadeOut();
      $("#voice").fadeOut();
      $("#box").fadeOut();
    break;
    case "walletdivHide":
      $("#walletdiv").fadeOut();
    break;
    case "bankdivHide":
      $("#bankdiv").fadeOut();

    break;
    case "societydivHide":
      $("#societydiv").fadeOut();
    break;
    case "blackMoneydivHide":
      $("#blackMoneydiv").fadeOut();

    break;
    case "healthHide":
      $("#health").fadeOut();
      $("#healthdiv").fadeOut();
    break;

    case "armorHide":
      $("#armordiv").fadeOut();
	    $("#armor").fadeOut();
    break;

    case "staminaHide":
      $("#stamina").fadeOut();
      $("#staminadiv").fadeOut();
    break;

    case "hungerHide":
      $("#hungerdiv").fadeOut();
	    $("#hunger").fadeOut();
    break;

    case "thirstHide":
      $("#thirstdiv").fadeOut();
      $("#thirst").fadeOut();
    break;

    case "oxygenHide":
      $("#oxygendiv").fadeOut();
      $("#oxygen").fadeOut();
    break;

    case "idHide":
      $("#id").fadeOut();
    break;

    case "cinematicHide":
      $("#cinematic").fadeOut();
    break;

    case "timeHide":
      $("#time").fadeOut();
	    $("#timediv").fadeOut();
    break;
    case "microphoneHide":
      $("#microphone").fadeOut();
      $("#voice").fadeOut();
      $("#box").fadeOut();
    break;
    case "jobHide":
      $("#job").fadeOut();
    break;
    case "logoHide":
      $("#logo").fadeOut();
    break;
    // Show elements
    case "mainShow":
	    $("#main").fadeIn();
      $("#healthdiv").fadeIn();
      $("#armordiv").fadeIn();
      $("#hungerdiv").fadeIn();
      $("#thirstdiv").fadeIn();
      $("#oxygendiv").fadeIn();
      $("#staminadiv").fadeIn();
      $("#main2").fadeIn();
      $("#walletdiv").fadeIn();
      $("#bankdiv").fadeIn();
      $("#societydiv").fadeIn();
      $("#blackMoneydiv").fadeIn();
      $("#job").fadeIn();
      $("#id").fadeIn();
	    $("#timediv").fadeIn();
      $("#logo").fadeIn();
      $("#microphone").fadeIn();
      $("#voice").fadeIn();
      $("#box").fadeIn();
    break;
    case "walletdivShow":
      $("#walletdiv").fadeIn();
    break;
    case "bankdivShow":
      $("#bankdiv").fadeIn();
    break;
    case "societydivShow":
      $("#societydiv").fadeIn();
    break;
    case "blackMoneydivShow":
      $("#blackMoneydiv").fadeIn();
    break;
    case "jobShow":
      $("#job").fadeIn();
    break;
    case "healthShow":
      $("#health").fadeIn();
      $("#healthdiv").fadeIn();
    break;

    case "armorShow":
      $("#armor").fadeIn();
	    $("#armordiv").fadeIn();
    break;

    case "staminaShow":
      $("#stamina").fadeIn();
      $("#staminadiv").fadeIn();
    break;

    case "hungerShow":
      $("#hunger").fadeIn();
      $("#hungerdiv").fadeIn();
    break;

    case "thirstShow":
      $("#thirst").fadeIn();
      $("#thirstdiv").fadeIn();
    break;

    case "oxygenShow":
      $("#oxygendiv").fadeIn();
	  $("#oxygen").fadeIn();
    break;

    case "idShow":
      $("#id").fadeIn();
    break;

    case "cinematicShow":
      $("#cinematic").fadeIn();
    break;

    case "timeShow":
	  $("#timediv").fadeIn();
      $("#time").fadeIn();
    break;

    case "microphoneShow":
      $("#microphone").fadeIn();
      $("#voice").fadeIn();
      $("#box").fadeIn();
    break;
    case "logoShow":
      $("#logo").fadeIn();
    break;
  }
});

// Toggle switch and position reset
{
  $("#hunger-switch").click(function() {$.post('https://NR_Hud/change', JSON.stringify({action: 'hunger'}));});
  $("#thirst-switch").click(function() {$.post('https://NR_Hud/change', JSON.stringify({action: 'thirst'}));});
};
$("#health-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'health' })); });
$("#armor-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'armor' })); });
$("#stamina-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'stamina' })); });
$("#oxygen-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'oxygen' })) });
$("#map-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'map' })) });
$("#id-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'id' })) });
$("#cinematic-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'cinematic' })) });
$("#time-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'time' })) });
$("#microphone-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'microphone' })) });
$("#job-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'job' })) });
$("#healthdiv-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'healthdiv' })) });
$("#walletdiv-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'walletdiv' })) });
$("#bankdiv-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'bankdiv' })) });
$("#societydiv-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'societydiv' })) });
$("#blackMoneydiv-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'blackMoneydiv' })) });
$("#logo-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'logo' })) });
$("#main-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'main' })) });
$("#main2-switch").click(function () { $.post('https://NR_Hud/change', JSON.stringify({ action: 'main2' })) });
$("#close").click(function () { $.post('https://NR_Hud/close');});

$("#reset-position").click(function () {
{
    $("#hungerdiv").animate({top: "0px", left: "0px"});
    localStorage.setItem("hungerdivTop", "0px");
    localStorage.setItem("hungerdivLeft", "0px");
    $("#thirstdiv").animate({top: "0px", left: "0px"});
    localStorage.setItem("thirstdivTop", "0px");
    localStorage.setItem("thirstdivLeft", "0px");
  };
  $("#healthdiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("healthdivTop", "0px");
  localStorage.setItem("healthdivLeft", "0px");
  $("#walletdiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("walletdivTop", "0px");
  localStorage.setItem("walletdivLeft", "0px");
  $("#namediv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("namedivTop", "0px");
  localStorage.setItem("namedivLeft", "0px");
  $("#bankdiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("bankdivTop", "0px");
  localStorage.setItem("bankdivLeft", "0px");
  $("#societydiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("societydivTop", "0px");
  localStorage.setItem("societydivLeft", "0px");
  $("#blackMoneydiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("blackMoneydivTop", "0px");
  localStorage.setItem("blackMoneydivLeft", "0px");

  $("#armordiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("armordivTop", "0px");
  localStorage.setItem("armordivLeft", "0px");
  $("#staminadiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("staminadivTop", "0px");
  localStorage.setItem("staminadivLeft", "0px");
  $("#oxygendiv").animate({ top: "0px", left: "0px" });
  localStorage.setItem("oxygendivTop", "0px");
  localStorage.setItem("oxygendivLeft", "0px");
  $("#id").animate({ top: "0px", left: "0px" });
  localStorage.setItem("idTop", "0px");
  localStorage.setItem("idLeft", "0px");
  $("#microphone").animate({ top: "0px", left: "0px" });
  localStorage.setItem("microphoneTop", "0px");
  localStorage.setItem("microphoneLeft", "0px");
  $("#voice").animate({ top: "95%", left: "97%" });
  localStorage.setItem("voiceTop", "0px");
  localStorage.setItem("voiceLeft", "0px");
  $("#job").animate({ top: "0px" , left: "0px"});
  localStorage.setItem("jobTop", "0px");
  localStorage.setItem("jobLeft", "0px");
  $("#logo").animate({ top: "0px" , left: "0px"});
  localStorage.setItem("logoTop", "0px");
  localStorage.setItem("logoLeft", "0px");
  $("#timediv").animate({ top: "0px" , left: "0px"});
  localStorage.setItem("timedivTop", "0px");
  localStorage.setItem("timedivLeft", "0px");
});

function print(value) {
  console.log(value)
}


// Listener
$(function () {
	window.addEventListener('message', function (event) {
		switch (event.data.action) {
			case 'setJob':
				$('.job-text').text(event.data.data)
				break
			
		}
	})
})

// Listener

window.addEventListener('message', function(event) {
    let wallet = event.data.wallet;
    let blackMoney = event.data.black_money;
    let bank = event.data.bank;
    let society = event.data.society;
    let control = event.data.control;
    let stamina = event.data.stamina
    $("#bank").text(bank);
    $("#wallet").text(wallet);
    $("#blackMoney").text(blackMoney);
    $("#society").text(society);
	document.getElementById("stamina").style.width = event.data.stamina + "%";
    let display = false;
});


var isArmorShown = false;
$(function () {
  function display(bool) {
      if (bool) {
          $("#container").show();
      } else {
          $("#container").hide();
      }
  }
  window.addEventListener('message', function(event) {
      if (event.data.type === "ui") {
          if (event.data.status == true) {
              display(true)
          }
          else {
              display(false)
          }
      }
      else if (event.data.type === "update") {
          document.getElementById("health").style.width = event.data.health + "%";
          document.getElementById("hunger").style.width = event.data.food + "%";
          document.getElementById("thirst").style.width = event.data.water + "%";
          document.getElementById("oxygen").style.width = event.data.oxygen + "%";
        if (event.data.armor > 0) {
          if (!isArmorShown) {
              $("#armor-container").css({opacity: 0});
              $("#armor-container").show();
              $("#armor-container").animate({opacity: 1}, 500, function(){
                $("#armor-container").animate({opacity: 1}, 100)
              });
              
              isArmorShown = true;
          }
          document.getElementById("armor").style.width = event.data.armor + "%";
        }
      else if (event.data.armor == 0){
          if (isArmorShown) {
              $("#armor-container").css({opacity: 1});
              $("#armor-container").animate({opacity: 0}, 500, function(){
                  $("#armor-container").animate({opacity: 1}, 100)
                  $("#armor-container").hide(); 
              });

              isArmorShown = false; 
          }
      } 
    }
  }) 
})




// Microphone effects

				$(function() {
					var $level = $("#voice");
					var $box = $("#box");

					window.addEventListener('message', function(event){
					
						$('.containervoice').css('display', event.data.show? 'none':'block');
					
					 	$box.css("width", event.data.level + "%");
						
					 	if (event.data.talking == true) 
					 	{
					 		$box.css("background", "#198754",);
							$level.css("animation", "soundwave 1s infinite",);
					 	
					 	}
					 	else if (event.data.talking == false)
					 	{
					 		$box.css("background", "#212529");
							$level.css("animation", "soundwave 0s",);
					 	}
						
					}); 
				});


// Disable other toggle switch
document.querySelectorAll('input[name=main]').forEach(element => element.addEventListener('click', disableOther))
function disableOther(event) {
  if (event.target.checked) {
    document.querySelectorAll('input[type=checkbox]').forEach(element => element.disabled = true);
	document.querySelectorAll('label[class=switch]').forEach(element => element.style.opacity = "0.5")
	document.querySelectorAll('label[name="mainswitchlabel"]').forEach(element => element.style.opacity = "1")
    event.target.disabled = false;
  } else {

    document.querySelectorAll('input[type=checkbox]').forEach(element => element.disabled = false)
	document.querySelectorAll('label[class=switch]').forEach(element => element.style.opacity = "1")
  }
}





// Close menu
document.onkeyup = function (event) {
  if (event.key == 'Escape') {
    $.post('https://NR_Hud/close');
  }
};
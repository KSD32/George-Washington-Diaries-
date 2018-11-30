function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "Perstoggle": {
            var pers = document.getElementsByClassName("persName");
            for (var i = 0; i < pers.length; i++) {
                pers[i].classList.toggle("on")
            }
        };
        break;
        case "Writtoggle": {
            var Writ = document.getElementsByClassName("writDocument");
            for (var i = 0; i < Writ.length; i++) {
                Writ[i].classList.toggle("on")
            }
        };
        break;
        case "Datetoggle": {
            var date = document.getElementsByClassName("date");
            for (var i = 0; i < date.length; i++) {
                date[i].classList.toggle("on")
            }
    };
     break;
        case "Loctoggle": {
            var loc = document.getElementsByClassName("location");
            for (var i = 0; i < loc.length; i++) {
                loc[i].classList.toggle("on")
            }
    };
     break;
        case "Orgtoggle": {
            var org = document.getElementsByClassName("orgName");
            for (var i = 0; i < org.length; i++) {
                org[i].classList.toggle("on")
            }
    };
    break;
    }
  }

window.onload = init;
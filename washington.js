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
        case "Cityttoggle": {
            var City = document.getElementsByClassName("city");
            for (var i = 0; i < City.length; i++) {
                City[i].classList.toggle("on")
            }
        };
         break;
        case "Nattoggle": {
            var Nat = document.getElementsByClassName("nation");
            for (var i = 0; i < Nat.length; i++) {
               Nat[i].classList.toggle("on")
            }
   };
     break;
        case "USmiltoggle": {
            var USmil = document.getElementsByClassName("USmilitary");
            for (var i = 0; i < USmil.length; i++) {
                USmil[i].classList.toggle("on")
            }
    };
    break;
     case "Miltoggle": {
            var Mil = document.getElementsByClassName("military");
            for (var i = 0; i < Mil.length; i++) {
                Mil[i].classList.toggle("on")
            }
    };
    break;
     case "Reltoggle": {
            var Rel = document.getElementsByClassName("religious");
            for (var i = 0; i < Rel.length; i++) {
                Rel[i].classList.toggle("on")
            }
    };
    break;
     case "Nottoggle": {
            var Not = document.getElementsByClassName("note");
            for (var i = 0; i < Not.length; i++) {
               Not[i].classList.toggle("on")
            }
    };
    break;
     case "Quotoggle": {
            var Quo = document.getElementsByClassName("quote");
            for (var i = 0; i < Quo.length; i++) {
                Quo[i].classList.toggle("on")
            }
             };
    break;
     case "Officertoggle": {
            var Officer = document.getElementsByClassName("Milofficer");
            for (var i = 0; i < Officer.length; i++) {
                Officer[i].classList.toggle("on")
            }
    };
    break;
     case "Statoggle": {
            var Sta = document.getElementsByClassName("state");
            for (var i = 0; i < Sta.length; i++) {
                Sta[i].classList.toggle("on")
            }
    };
     break;
     case "Politoggle": {
            var Poli = document.getElementsByClassName("political");
            for (var i = 0; i < Poli.length; i++) {
                Poli[i].classList.toggle("on")
            }
    };
     break;
     case "Brittoggle": {
            var Brit= document.getElementsByClassName("Britain");
            for (var i = 0; i < Brit.length; i++) {
                Brit[i].classList.toggle("on")
            }
    };
     break;
     case "Placetoggle": {
            var Place = document.getElementsByClassName("placeName");
            for (var i = 0; i < Place.length; i++) {
                Place[i].classList.toggle("on")
            }
    };
     break;
     case "Natitoggle": {
            var Nati = document.getElementsByClassName("NativeTribe");
            for (var i = 0; i < Nati.length; i++) {
                Nati[i].classList.toggle("on")
            }
    };
     break;
     case "USpolitoggle": {
            var USpoli = document.getElementsByClassName("USpolitical");
            for (var i = 0; i < USpoli.length; i++) {
                USpoli[i].classList.toggle("on")
            }
    };
     break;
     case "Namtoggle": {
            var Nam = document.getElementsByClassName("name");
            for (var i = 0; i < Nam.length; i++) {
                Nam[i].classList.toggle("on")
            }
    };
    }
    }

window.onload = init;
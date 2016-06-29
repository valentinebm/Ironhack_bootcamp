var flightToBali = ["Wayan", "Putu", "Gede", "Ni Luh", "Nyoman"];
var counterCheckIn = checkInPassenger("Putu", flightToBali);
counterCheckIn();


function checkInPassenger(name, customersArray) {
	for (var i = 0; i<customersArray.length; i++) {
		if (customersArray[i] == name) {
			return function() {
        console.log ("Hi, " + name + " You’re passenger #" + (i+1));
      };
    }
  }
}

function ticketBuilder(transport) {
  return function(name) {
    console.log("Welcome, " + name + ". Here is your ticket for the" + transport);
  }
}

var getPlaneTicket = ticketBuilder("plane");


getPlaneTicket("Matias");

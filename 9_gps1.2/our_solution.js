// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1.Shawn Seibert
//  2.Samuel Davis


//  1. "YOU SIGNED... WHO?!"
var hFord = {
  name: "Harrison Ford",
  age: 71, 
  quote: "Yes, I am Harrison Ford."
}

var dWashington = {
  name: "Denzel Washington", 
  age: 59, 
  quote: "You look like a bunch of 5th-grade sissies after a cat fight."
}

// 2. "Here they Come!"

var aSandler = {
  name: "Adam Sandler", 
  age: 47, 
  quote: "That's is your home? Are you too good for your home?!"
}

var kBell = {
  name: "Kristen Bell",
  age: 33, 
  quote: "Do you wanna build a snowman?"
}

var jCarrey = {
  name: "Jim Carrey",
  age: 52,
  quote: "...So you're telling me there's a chance? YEAH!"
}

var clients = new Array(hFord, dWashington, aSandler, kBell, jCarrey)


//    3. "TIME IS MONEY!"

// YOUR CODE HERE!

function Client(name, age, quote)
{
  this.name = name
  this.age = age
  this.quote = quote
}// end function

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";

//     4. "SHOW 'EM OFF!"
function printClients(clients)
  {
    for (var i=0; i < clients.length; i++) {
      console.log("Introducing " + clients[i].name + ", " + clients[i].age + ", and here is their live interview:" + clients[i].quote + "\n")
    }
  }

//       ** BONUS **
function addProp(clients)
  {
    clients[0].movie = "Star Wars"
    clients[1].movie = "Flight"
    clients[2].movie = "Grown Ups"
    clients[3].movie = "Frozen"
    clients[4].movie = "Series of Unfortunate Events"
  }

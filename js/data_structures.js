var colorArray = ["red","blond","black","white"];
var horseName = ["Shadowfax", "Link", "Epona", "Mario"];
var horseObject = {};
colorArray.push("brown");
horseName.push("Odin");

console.log(colorArray);
console.log(horseName);


for (var i = 0; i < colorArray.length; i++) {
  horseObject[horseName[i]] = colorArray[i];
}
console.log(horseObject)


//car constructor 

function Car(brand, model, price){
  console.log("creating car")
  this.brand = brand;
  this.model = model;
  this.price = price;

  this.drive = function(){console.log("woosh!vrom vrom");};
  this.honk = function(){console.log("beep");};
}

var tesla = new Car("Tesla", "Model S", 70000);
tesla.drive();
tesla.honk();
console.log(tesla);



for (var key in tesla){
  console.log(tesla[key])
}
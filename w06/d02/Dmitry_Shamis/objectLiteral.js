var snoop = {
  name: 'Snoop Dogg',
  age: 45,
  bark: function () {
    console.log('Bow wow wow yippie yo yippie yay');
  },
  introduce: function () {
    console.log(this.name + " is in the building!");
  }
};

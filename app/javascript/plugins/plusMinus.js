const plusMinus = () => {

  var divs = document.querySelectorAll(".card-time");

  divs.forEach((item) => {

    var plus = item.children[0];
    var count = item.children[1];
    var minus = item.children[2];

    plus.addEventListener('click', (event) => {
      count.value++;
    });

    minus.addEventListener('click', (event) => {
      if (count.value > 1) {
        count.value--;
      }
    });

  });

}

export { plusMinus }

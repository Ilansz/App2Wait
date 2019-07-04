const enableTime = () => {
  const firstTime = document.querySelector('#first-level');
  const secondTime = document.querySelector('#second-level');
  const lastTime = document.querySelector('#last-level');
  const enable = document.querySelector('#enable');
  const firsttimer = document.querySelector('.firsttimer');
  const secondtimer = document.querySelector('.secondtimer');
  const lasttimer = document.querySelector('.lasttimer');

  const firstChTime = (firstTime, showDiv) => {
    const finishTime = new Date(Date.parse(firstTime.dataset.finishTime));
    const finishSecs = finishTime.getSeconds() + finishTime.getMinutes() * 60
    setInterval(() => {
      let now = new Date(Date.now());
      let beginSecs = now.getMinutes() * 60 + now.getSeconds()
     // 1. get minutes in seconds () and get seoncds
     // 2. subtract finish from begin
     // 3. convert back to mins and seconds
     let difference = finishSecs - beginSecs;
     let diffMin = Math.floor(difference / 60);
     let diffSec = difference % 60;
     showDiv.innerHTML = `${diffMin}:${diffSec}`
     if (difference < 1) {
      firstTime.classList.remove('disabled');
      showDiv.classList.add('d-none');
      firstTime.classList.add('bg-success');
    };
  }, 1000);
  };

  firstChTime(firstTime, firsttimer);
  firstChTime(secondTime, secondtimer);
  firstChTime(lastTime, lasttimer);
};
export { enableTime }




// 1. get time of click
// 2. 3 different variables with  added relevant time (5, 15, 30 min)
// 3. 1 sec interval for clock.
// 4. compare future(challenge finish time) and current time
// 5. and trigger class remove/ add for disabled finished challenge
// 6. display clock in nice way
// 7. 2 different times -> challenge finish time, current countdown
//    ---> subtract future millis from current millis
//    ---> configure back to mins / seconds
// 8. remove interval once time finished

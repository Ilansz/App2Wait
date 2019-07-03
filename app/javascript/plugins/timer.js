const startButton = document.querySelector('.submit-event');

// const date = new.Date()
// const startTime = date.getMinutes()
// setTimeout(enableTime, ...)


const enableTime = () => {
  const firstTime = document.querySelector('#first-level')
  const secondTime = document.querySelector('#second-level')
  const lastTime = document.querySelector('#last-level')
  const enable = document.querySelector('#enable')

  enable.addEventListener('click', (event) => {
    firstTime.classList.remove("disabled")
  })
}


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

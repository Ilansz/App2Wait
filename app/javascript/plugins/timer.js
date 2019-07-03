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

const causes = document.querySelectorAll('.clickable');

const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle('active');
};

const toggleActiveOnClick = (cause) => {
  cause.addEventListener('click', toggleActiveClass);
};

causes.forEach(toggleActiveOnClick);

const takeActionBtn = document.querySelector('.take-action-btn');
const updateTimeValue = (time) => {
  time.addEventListener('click', (event) => {
    let selectedTime = event.currentTarget.innerHTML
    if (!parseInt(selectedTime)) {
      selectedTime = 1000
    };
    const url = takeActionBtn.href
    const urlArray = url.split("=")
    urlArray[1] = selectedTime
    takeActionBtn.href = urlArray.join("=")
  });
};

const times = document.querySelectorAll('.select-time');
times.forEach(updateTimeValue);



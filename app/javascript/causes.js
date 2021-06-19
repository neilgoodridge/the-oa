const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle('active');
};

const toggleActiveOnClick = (cause) => {
  cause.addEventListener('click', toggleActiveClass);
};

const updateTimeValue = (time) => {
  const takeActionBtn = document.querySelector('.take-action-btn');
  time.addEventListener('click', (event) => {
    let selectedTime = event.currentTarget.innerHTML
    if (!parseInt(selectedTime)) {
      selectedTime = 1000
    };
    const url = takeActionBtn.href
    const urlArray = url.split("=")
    urlArray[1] = selectedTime
    takeActionBtn.href = urlArray.join("=")
    event.currentTarget.lastElementChild.classList.toggle('time-selected');
  });
};

$(document).on('ready turbolinks:load', function() {
  const causes = document.querySelectorAll('.clickable');
  causes.forEach(toggleActiveOnClick);
  const times = document.querySelectorAll('.select-time');
  times.forEach(updateTimeValue);
});


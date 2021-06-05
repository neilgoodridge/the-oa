const causes = document.querySelectorAll('.clickable');

const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle('active');
};

const toggleActiveOnClick = (cause) => {
  cause.addEventListener('click', toggleActiveClass);
};

causes.forEach(toggleActiveOnClick);

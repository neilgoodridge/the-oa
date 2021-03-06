var imageSlides = document.getElementsByClassName('imageSlides');
var circles = document.getElementsByClassName('circle');
var leftArrow = document.getElementById('leftArrow');
var rightArrow = document.getElementById('rightArrow');
var counter = 0;

// HIDE ALL IMAGES FUNCTION
function hideImages() {
 for (var i = 0; i < imageSlides.length; i++) {
   imageSlides[i].classList.remove('visible');
 }
}

function removeDots() {
  for (var i = 0; i < imageSlides.length; i++) {
  circles[i].classList.remove('dot');
  }
}

function imageLoop() {
   var currentImage = imageSlides[counter];
   var currentDot = circles[counter];
   currentImage.classList.add('visible');
   removeDots();
   currentDot.classList.add('dot');
   counter++;
 }
 // LEFT & RIGHT ARROW FUNCTION & CLICK EVENT LISTENERS
function arrowClick(e) {
  var target = e.target;
  if (target == leftArrow) {
    clearInterval(imageSlideshowInterval);
    hideImages();
    removeDots();
    if (counter == 1) {
      counter = (imageSlides.length - 1);
      imageLoop();
      imageSlideshowInterval = setInterval(slideshow, 3000);
    } else {
        // slideCurrent = 0;
      counter--;
      counter--;
      imageLoop();
      imageSlideshowInterval = setInterval(slideshow, 3000);
    }
    }
     else if (target == rightArrow) {
       clearInterval(imageSlideshowInterval);
       hideImages();
       removeDots();
       if (counter == imageSlides.length) {
         counter = 0;
         imageLoop();
         imageSlideshowInterval = setInterval(slideshow, 3000);
       } else {
        imageLoop();
              imageSlideshowInterval = setInterval(slideshow, 3000);
            }

            }
 }
const bottomHalf = document.querySelector(".bottom-half")
if (bottomHalf){
  leftArrow.addEventListener('click', arrowClick);
  rightArrow.addEventListener('click', arrowClick);
}


 function slideshow() {
    const bottomHalf = document.querySelector(".bottom-half")
    if (!bottomHalf) return
    if (counter < imageSlides.length) {
     imageLoop();
    } else {
      counter = 0;
      hideImages();
      imageLoop();
    }
 }
 // SHOW FIRST IMAGE, & THEN SET & CALL SLIDE INTERVAL
  setTimeout(slideshow, 1000);
  var imageSlideshowInterval = setInterval(slideshow, 3000);

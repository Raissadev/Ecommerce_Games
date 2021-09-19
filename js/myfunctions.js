var toggleMenu = document.querySelectorAll('.menuMobile'),
    asideMobile = document.querySelector('header .row div.itemsMenu');

for (var i = 0; i < toggleMenu.length; i++){
    toggleMenu[i].addEventListener('click', menuAction);
}

function menuAction(){
    if(asideMobile.classList.contains('showMenu')){
        asideMobile.classList.remove('showMenu');
    }else{
        asideMobile.classList.add('showMenu');
    }
}

/* */

const sliderElm = document.querySelector(".gamesListCustom");
const btnLeft = document.querySelector(".leftAction");
const btnRight = document.querySelector(".rightAction");

const numberSliderBoxs = sliderElm.children.length;
let idxCurrentSlide = 0;

// Functions:
function moveSlider() {
  let leftMargin = (sliderElm.clientWidth / numberSliderBoxs) * idxCurrentSlide;
  sliderElm.style.marginLeft = -leftMargin + "px";
  console.log(sliderElm.clientWidth, leftMargin);
}
function moveLeft() {
  if (idxCurrentSlide === 0) idxCurrentSlide = numberSliderBoxs - 1;
  else idxCurrentSlide--;

  moveSlider();
}
function moveRight() {
  if (idxCurrentSlide === numberSliderBoxs - 1) idxCurrentSlide = 0;
  else idxCurrentSlide++;

  moveSlider();
}

// Event Listeners:
btnLeft.addEventListener("click", moveLeft);
btnRight.addEventListener("click", moveRight);
window.addEventListener("resize", moveSlider);
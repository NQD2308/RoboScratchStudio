let currentSlide = 1;
const totalSlides = 3;

function showNextSlide() {
    document.getElementById('carousel-' + currentSlide).checked = false;
    currentSlide = currentSlide % totalSlides + 1;
    document.getElementById('carousel-' + currentSlide).checked = true;
}

setInterval(showNextSlide, 4000);
const header = document.getElementById('siteHeader');
const hero = document.querySelector('.hero');

window.addEventListener('scroll', () => {
  if (window.scrollY > 24) {
    header.classList.add('solid');
  } else {
    header.classList.remove('solid');
  }
});

window.addEventListener('DOMContentLoaded', () => {
  const animatedElements = document.querySelectorAll('.hero-copy, .panel-card, .trusted-by, .service-card, .architecture-copy, .architecture-diagram');
  animatedElements.forEach((element, index) => {
    element.style.opacity = '0';
    element.style.transform = 'translateY(24px)';
    setTimeout(() => {
      element.style.transition = 'opacity 0.7s ease, transform 0.7s ease';
      element.style.opacity = '1';
      element.style.transform = 'translateY(0)';
    }, 120 * index);
  });
});

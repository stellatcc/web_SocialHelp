const icon = document.querySelectorAll('.bi-heart');
let post = document.querySelectorAll('.post');

icon.forEach(element => {
    element.addEventListener('click', () => {
        if (element.classList.contains('bi-heart')){
            element.classList.replace('bi-heart', 'bi-heart-fill');
        } else {
            element.classList.replace('bi-heart-fill', 'bi-heart');
        }
    });
});

post = ScrollReveal({
    origin: 'bottom',
    distance: '50px',
    duration: 3000,
    reset: true
});

post.reveal(
    '.post', { interval: 300 }
)
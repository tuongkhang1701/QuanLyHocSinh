let navigation = document.querySelector('.navigation');
let toggle = document.getElementById('toggle');
let main = document.querySelector('.main');


toggle.addEventListener('click', () => {
    navigation.classList.toggle('active');
    toggle.classList.toggle('active');
    main.classList.toggle('active');
})


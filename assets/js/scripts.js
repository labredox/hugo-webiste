var body = document.querySelector('body')
var menuTrigger = document.querySelector('#toggle-main-menu-mobile');
var menuContainer = document.querySelector('#main-menu-mobile');

menuTrigger.onclick = function () {
    menuContainer.classList.toggle('open');
    menuTrigger.classList.toggle('is-active')
    body.classList.toggle('lock-scroll')
}

function init() {
    var imgDefer = document.getElementsByTagName('img');
    for (var i = 0; i < imgDefer.length; i++) {
        if (imgDefer[i].getAttribute('data-src')) {
            imgDefer[i].setAttribute('src', imgDefer[i].getAttribute('data-src'));
        }
    }

    var bkgDefer = document.getElementsByClassName('lazy');
    for (var i = 0; i < bkgDefer.length; i++) {
        if (bkgDefer[i].getAttribute('data-src')) {
            bkgDefer[i].style.backgroundImage = "url('" + bkgDefer[i].getAttribute('data-src') + "')";
        }
    }
}

window.onload = init;
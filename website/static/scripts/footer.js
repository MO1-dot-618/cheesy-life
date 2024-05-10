document.addEventListener('DOMContentLoaded', function() {
    const footer = document.querySelector('footer');
    if (footer) {
        const footerStyles = getComputedStyle(footer);
        console.log(footerStyles);
    } else {
        console.error('Footer element not found.');
    }
});

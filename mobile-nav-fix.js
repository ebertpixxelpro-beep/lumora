// Mobile Navbar Auto-Close Fix & Enhancements
document.addEventListener('DOMContentLoaded', () => {
    // 1. Navbar Auto-Close on Link Click
    const navLinks = document.querySelectorAll('.navbar-nav .nav-link');
    const navbarCollapse = document.getElementById('navbarNav');
    const bsCollapse = new bootstrap.Collapse(navbarCollapse, { toggle: false });

    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            if (navbarCollapse.classList.contains('show')) {
                bsCollapse.hide();
            }
        });
    });

    // Also close when clicking the "Hubungi Kami" button in mobile menu
    const contactBtn = document.querySelector('.navbar-collapse .btn-primary');
    if (contactBtn) {
        contactBtn.addEventListener('click', () => {
            if (navbarCollapse.classList.contains('show')) {
                bsCollapse.hide();
            }
        });
    }

    // 2. Sticky Navbar Logic (Existing enhanced)
    window.addEventListener('scroll', function () {
        const navbar = document.querySelector('.navbar');
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled', 'shadow-sm');
        } else {
            navbar.classList.remove('scrolled', 'shadow-sm');
        }

        // Scroll Top Button
        const scrollTopBtn = document.querySelector('.fab-top');
        if (scrollTopBtn) {
            if (window.scrollY > 300) {
                scrollTopBtn.classList.add('show');
            } else {
                scrollTopBtn.classList.remove('show');
            }
        }
    });
});

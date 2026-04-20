document.addEventListener("DOMContentLoaded", function () {

    // ================= SWIPER =================
    new Swiper(".home.swiper", {
        loop: true,
        slidesPerView: 1,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true
        }
    });

    // ================= SIDEBAR =================
    const sidebar = document.getElementById("sidebar");
    const body = document.body;

    window.toggleSidebar = function () {
        if (!sidebar) return;

        sidebar.classList.toggle("expanded");
        body.classList.toggle("sidebar-expanded");
    };

    // ================= CLICK OUTSIDE =================
    document.addEventListener("click", function (e) {

        const menuBtn = document.querySelector(".menu-icon");

        if (!sidebar || !menuBtn) return;

        if (window.innerWidth <= 768) {
            const insideSidebar = sidebar.contains(e.target);
            const insideMenu = menuBtn.contains(e.target);

            if (!insideSidebar && !insideMenu) {
                sidebar.classList.remove("expanded");
                body.classList.remove("sidebar-expanded");
            }
        }
    });

});
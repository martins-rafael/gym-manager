const currentPage = location.pathname
const menuItens = document.querySelectorAll('header .links a')

for (let item of menuItens) {
    if (currentPage.includes(item.getAttribute('href'))) {
        item.classList.add('active')
    }
}

//Paginação
function pagination(totalPages, selectedPage) {
    let pages = [],
        oldPage

    for (let currentPage = 1; currentPage <= totalPages; currentPage++) {
        const firstAndLastPage = currentPage == 1 || currentPage == totalPages
        const pagesAfterSelectedPage = currentPage <= selectedPage + 2
        const pagesBeforeSelectedPage = currentPage >= selectedPage - 2

        if (firstAndLastPage || pagesAfterSelectedPage && pagesBeforeSelectedPage) {
            if (oldPage && currentPage - oldPage > 2) {
                pages.push('...')
            }
            if (oldPage && currentPage - oldPage == 2) {
                pages.push(oldPage + 1)
            }

            pages.push(currentPage)
            oldPage = currentPage
        }
    }

    return pages
}
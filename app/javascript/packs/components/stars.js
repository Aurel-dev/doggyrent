
const ratings = () =>{

    const rating = document.getElementById('review_rating');

    if (rating) {
        const stars = Array.prototype.slice.call(document.querySelectorAll('.stars'));

        stars.forEach(element => {
            element.addEventListener('click', (event) => {
                const value = event.target.dataset.value;
                rating.value = value;
            })
        });
    }


}

export { ratings }
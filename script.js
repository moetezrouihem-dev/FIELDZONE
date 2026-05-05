document.addEventListener('DOMContentLoaded', function() {
    const priceInputs = document.querySelectorAll('.price-calc');
    const displayTotal = document.getElementById('displayTotal');
    const hiddenTotal = document.getElementById('total_prix');

    function calculateTotal() {
        let total = 0;

        priceInputs.forEach(input => {
            let price = 0;
            if (input.tagName === 'SELECT') {
                price = parseFloat(input.options[input.selectedIndex].getAttribute('data-price')) || 0;
                total += price;
            } else if (input.tagName === 'INPUT') {
                price = parseFloat(input.getAttribute('data-price')) || 0;
                let quantity = parseInt(input.value) || 0;
                total += (price * quantity);
            }
        });

        displayTotal.textContent = total.toFixed(2);
        hiddenTotal.value = total.toFixed(2);
    }

    priceInputs.forEach(input => {
        input.addEventListener('change', calculateTotal);
        input.addEventListener('input', calculateTotal);
    });
});
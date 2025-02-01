// Add this to your existing JavaScript file
document.addEventListener('DOMContentLoaded', function() {
    // First check if we're on the order page
    if (window.location.pathname.includes('order.html')) {
        // Get URL parameters
        const urlParams = new URLSearchParams(window.location.search);
        const productName = decodeURIComponent(urlParams.get('name') || 'Not specified');
        const productPrice = decodeURIComponent(urlParams.get('price') || 'Not specified');

        // Update the product details in the order form
        const nameElement = document.getElementById('productName');
        const priceElement = document.getElementById('productPrice');
        
        if (nameElement) nameElement.textContent = productName;
        if (priceElement) priceElement.textContent = productPrice;
    }
    
    // Handle order buttons on the main page
    const orderButtons = document.querySelectorAll('.pest_btn');
    
    orderButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            
            // Get the parent cake feature item
            const cakeItem = this.closest('.cake_feature_item');
            
            // Get product details
            const productName = cakeItem.querySelector('h3').textContent.trim();
            const productPrice = cakeItem.querySelector('h4').textContent.trim().replace('₹', '');
            
            // Debug log to verify values
            console.log('Product Name:', productName);
            console.log('Product Price:', productPrice);
            
            // Create the URL with parameters
            const orderUrl = `order.html?name=${encodeURIComponent(productName)}&price=${encodeURIComponent(productPrice)}`;
            
            // Debug log to verify URL
            console.log('Redirect URL:', orderUrl);
            
            // Redirect to order page
            window.location.href = orderUrl;
        });
    });
});
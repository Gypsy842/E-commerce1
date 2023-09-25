if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
}else{
    ready()
}

function ready(){
    var removeCartItemButtons = document.getElementsByClassName('btn-danger')
   // console.log(removeCartItemButtons)
    for(var i = 0; i < removeCartItemButtons.length; i++){
        var button = removeCartItemButtons[i]
        button.addEventListener('click', removeCartItem) 
       
    }
    var quantityInputs =document.getElementsByClassName('cart-quantity-input')
    for(var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i]
        input.addEventListener('change', quantityChanged)
    }
    var addToCartbuttons = document.getElementsByClassName('btn btn-success')
    for(var i = 0; i < addToCartbuttons.length; i++){
        var button = addToCartbuttons[i]
        button.addEventListener('click', addToCartClicked)
    }
}


function removeCartItem(event){
    var buttonClicked = event.target
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}
function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0){
        input.value = 1
    }
    updateCartTotal()
}

function addToCartClicked(event) {
    var button = event.target
    var shopItem = button.parentElement.parentElement.parentElement
    var imageSrc = shopItem.getElementsByClassName('shop-item-image').src
    var title = shopItem.getElementsByClassName('shop-item-title').innerText
    var price = shopItem.getElementsByClassName('shop-item-price').innerText
    
    
    addItemToCart(imageSrc,title, price )
}
function addItemToCart(imageSrc,title, price){
    var cartRow = document.createElement('section')
    cartRow.classList.add('cart-row')
    var cartItems = document.getElementById('product1')[0]
   // var cartRowContents =     '

    cartRow.innerHTML = cartRowContents
    cartItems.append(cartRow)
}




// Script for navigation bar
const bar =document.getElementById('bar');
const nav =document.getElementById('navbar');
const close =document.getElementById('close');

if (bar) {
    bar.addEventListener('click', () =>{
        nav.classList.add('active');
    })
} 

if (close) {
    close.addEventListener('click', () =>{
        nav.classList.remove('active');
    })
} 
//cart
var removeCartItemButtons = document.getElementsByClassName('btn-danger')
console.log(removeCartItemButtons)
for(var i = 0; i < removeCartItemButtons.length; i++){
    var button = removeCartItemButtons[i]
    button.addEventListener('click', function (event) {
        var buttonClicked = event.target
        buttonClicked.parentElement.parentElement.remove()
        updateCartTotal()
    })
}
//total pricing
function updateCartTotal(){
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows =  cartItemContainer.getElementsByClassName('cart-row')
    var total = 0
    for(var i = 0; i < cartRows.length; i++){
        var cartRow =  cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
        
        var price =  parseFloat(priceElement.innerText.replace('$',''))
        var quantity = quantityElement.value
        total = total + (price * quantity)
        
        
    }
    total = Math.round(total * 100)/100
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
    document.getElementsByClassName('cart-total-price2')[0].innerText = '$' + total
}

// login
function loginAlert() {
    var email = document.getElementById('email-l').value;
    if (email == " ") {
        alert("Please enter user name..")
    }
}
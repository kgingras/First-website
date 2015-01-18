jQuery(document).ready(function(){
    // This button will increment the value
    $('.qtyplus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name

        var $input = $(this).siblings('.qty');
        
        var val = parseInt($input.val(), 10);
        
        console.log($input.val());
        $input.val(val + ($(this).hasClass('minus') ? -1 : 1));
        if (val == 9){
            alert("GAME OVER!")
        }
    });


    // This button will decrement the value till 0
    $(".qtyminus").click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var $input = $(this).siblings('.qty');
        
        var val = parseInt($input.val(), 10);
        
        console.log($input.val());
        if(val > 0){
            $input.val(val - 1);
        }
        else if (!isNaN(currentVal)){
            $input.val(0);
        }
    });


    $('.numplus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name

        var $input = $(this).siblings('.qty');
        
        var val = parseInt($input.val(), 10);
        
        console.log($input.val());
        $input.val(val + ($(this).hasClass('minus') ? -1 : 1));
        
    });
});

/*global $*/

$(document).on('turbolinks:load', function(){
    $('.removetech').bind("click", rmtech);
    //$('#removetech0, #removetech1').on('click', rmtech());
    $('#addtech').click(function(){
      //$(this).before($("#new_tech_form").html());
      var number = 1 + Math.floor(Math.random() * 1000);
      $(this).before('<input name="portfolio[technologies_attributes][' + number.toString() + '][name]" class="form-control" id="portfolio_technologies_attributes_' + number.toString() + '_name" type="text" placeholder="Name">').html();
    });

    function rmtech() {
          //$("#portfolio_technologies_attributes_0__destroy")attr("value", "1;");
          var fieldid = $(this).attr("fieldid");
          $("#input-tech"+fieldid).attr("style", "display:none;");
          $(this).before('<input name="portfolio[technologies_attributes]['+fieldid+'][_destroy]" id="portfolio_technologies_attributes_'+fieldid+'__destroy" type="hidden" value="1">');
    };           
});
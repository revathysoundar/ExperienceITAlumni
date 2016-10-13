(function(){
    var name = "Jason";
  var tour = new Tour({
    storage : false
  });
      tour.addSteps([
    {
      element: ".tour-step.tour-step-one",
      placement: "bottom",      
        title: "Welcome to edureka!",
      content: "We would like to know your name? <br><input class='form-control' type='text' name='your_name'>",
      onNext : function(tour){
        var nameProvided = $("input[name=your_name]").val();
        if ($.trim(nameProvided) !== ""){
          name = nameProvided;
        }
      }
    },
    {
      element: ".tour-step.tour-step-two",
      placement: "bottom",            
      title: function(){ return "Welcome to edureka! , " + name; },
      content: "We offer instructor led live online classes"
      },

      {
        placement: "top",
        backdrop: true,
        orphan: true,
        title: function(){ return "Thank you, " + name; },
        content: function(){ return "We wish you happy learning with edureka!" }
      }





      ]);


    
    tour.init();
    tour.start();
  }());
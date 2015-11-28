angular.module('root', [])
    .controller("index", ["$scope", function ($scope) {
        $("#totalP").text ("Total: $" + $("#hours").val() * 59 + ".00");
        $( "#hours" ).change(function() {
            console.log('new value: ' + $("#hours").val())
            $("#totalP").text ("Total: $" + $("#hours").val() * 59 + ".00");
        });


        $('#datetime1').datetimepicker({
            formatDate:' mm/dd/yyyy',
            dayOfWeekStart: 1,
            beforeShowDay: limitDays,
            //formatTime: 'h:m a',
            allowTimes:[
                '13:00', '14:00', '15:00', '16:00'
            ]
        })

        ;
        $('#datetime2').datetimepicker({
            formatDate:' mm/dd/yyyy',
            dayOfWeekStart: 1,
            beforeShowDay: limitDays,
            //formatTime: 'h:m a',
            allowTimes:[
                '13:00', '14:00', '15:00', '16:00'
            ]
        });

        function limitDays(date){

            var day = date.getDay();

            // Only make Sat and Sun available
            if(day == 0 || day == 6){
                return [true, ''];
            }else{
                return [false, ''];
            }
        }


        $scope.message = "Hello World!";

        $scope.name;

        $scope.first;
        $scope.second;
        $scope.third;
        $scope.total = 59;
        //$scope.payment = 'cash'
        console.log("HI FROM ANGULAR");

        $scope.$watch("hours", function (newValue) {
            $scope.total = newValue * 59;
        });
    }]);

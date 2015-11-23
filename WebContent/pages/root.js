angular.module('root', [])
    .controller("index", ["$scope", function ($scope) {
        $('#datetime1').datetimepicker({
            formatDate:'mm/dd/yyyy'
        });


        $scope.message = "Hello World!";

        $scope.name;
        $scope.email;

        $scope.first;
        $scope.second;
        $scope.third;
        $scope.hours = '1';
        $scope.total = 49;
        $scope.payment = 'cash'
        console.log("HI FROM ANGULAR");

        $scope.$watch("hours", function (newValue) {
            $scope.total = newValue * 49;
        });
    }]);
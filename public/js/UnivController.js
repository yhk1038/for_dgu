/**
 * Created by AlchemistK on 15. 6. 13..
 */

var app = angular.module('myApp', []);

app.controller('univController', function($scope, $http) {
    
    arr_univ= ['unist', 'konkuk', 'kangwon', 'knu', 'khu',
        'korea', 'kookmin', 'dankook', 'duksung', 'dongguk',
        'dongduk', 'pusan', 'sogang', 'seoultech', 'snu',
        'uos', 'swu', 'skku', 'sungshin', 'sookmyung',
        'ajou', 'yonsei', 'yungnam', 'wku', 'ewha',
        'inha', 'jnu', 'cau', 'cnu', 'ptu',
        'kaist', 'hufs', 'handong', 'hanyang', 'karts',
        'foreign'];


    $scope.univ_list = null;
    $http.get('json/univ_list').success(function(data) {
        $scope.univ_list = data.univs;
        //console.log($scope.univ_list);
    });

    $scope.univs = null;
    $http.get('json/init').success(function(data) {
        $scope.univ = data.univ;
        $scope.members = data.member;
        //console.log($scope.members)
        //console.log($scope.members)
    });

    // univ click func
    $scope.click_univ = function(file) {
        console.log(file);
    }

    $scope.view_member = function(univ_name) {
        var file_name = 'json/'+univ_name;
        $http.get(file_name).success(function(data) {
            $scope.univ = data.univ;
            $scope.members = data.member;
        }, true);
        SEMICOLON.documentOnResize.init();
    }

    $scope.view_member(arr_univ[Math.floor(Math.random() * 36)]);

});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
// jquery-stepsの利用
//= require jquery.steps
// jqueryを使用する際は、= require_treeの前にrequire記述を置く
//= require_tree .


// 会員登録のstepフォームを設定
$().ready(function(){
	initWizard();
});
/** initialize */
var initWizard = () => {
	$("#wizard").steps({
		headerTag: "h1",
		bodyTag: "section"
	});
};

// toggleボタンの動作に必要な設定?
// $(document).on('turbolinks:render', function(){
// 	$('input[type="radio"].toggle').bootstrapToggle();
// });

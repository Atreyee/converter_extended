(function() {

  if (calatrava.pageView == null) calatrava.pageView = {};

  calatrava.pageView.successPage = function() {
    var $p, $page;
    $page = $('#successPage');
    $p = function(sel) {
      return $(sel, $page);
    };
    return {
      bind: function(event, handler) {
        console.log("event: " + event);
        return $p("#" + event).off('click').on('click', handler);
      },
      render: function(message) {
        return console.log('rendering...', message);
      },
      get: function(field) {
        console.log('getting...', field);
        return $page.find("#" + field).val();
      },
      show: function() {
        console.log('showing...');
        return $page.show();
      },
      hide: function() {
        console.log('hiding...');
        return $page.hide();
      }
    };
  };

}).call(this);

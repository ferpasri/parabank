<%@ include file="include.jsp" %>

<div id="userAccountApp">
    <ul ng-controller="UserAccountCtrl">
        <li><a href="<c:url value="/openaccount.htm"/>"><fmt:message key="open.new.account"/></a></li>
        <li><a href="<c:url value="/overview.htm"/>"><fmt:message key="accounts.overview"/></a></li>
        <li><a href="<c:url value="/transfer.htm"/>"><fmt:message key="transfer.funds"/></a></li>
        <li><a href="<c:url value="/billpay.htm"/>"><fmt:message key="bill.pay"/></a></li>
        <!-- Injected Failure: Only show findtrans service if the user is John -->
        <li ng-show="isJohn"><a href="<c:url value="/findtrans.htm"/>"><fmt:message key="find.transactions"/></a></li>
        <li><a href="<c:url value="/updateprofile.htm"/>"><fmt:message key="update.contact.info"/></a></li>
        <li><a href="<c:url value="/requestloan.htm"/>"><fmt:message key="request.loan"/></a></li>
        <li><a href="<c:url value="/logout.htm"/>"><fmt:message key="logout"/></a></li>
    </ul>
</div>

<script>
  // Get the current URL
  var currentUrl = window.location.pathname;

  // Get all the <a> elements within the <ul>
  var menuItems = document.querySelectorAll('ul li a');

  // Iterate over the menu items
  for (var i = 0; i < menuItems.length; i++) {
    var menuItem = menuItems[i];
    var menuItemUrl = menuItem.getAttribute('href');

    // Compare the current URL with the menu item's URL
    if (menuItemUrl === currentUrl) {
      // Add a CSS class to highlight the menu item
      menuItem.classList.add('active');
    }
  }
</script>

<script>
    // Wrap the AngularJS code in a function to manually bootstrap the application
    function bootstrapUserAccountApp() {
        var app = angular.module('UserAccountApp', []);
        app.controller('UserAccountCtrl', function ($scope, $http) {
            // Obtain user session id to check if it is John
            var userId = '${userSession.customer.id}';
            $scope.isJohn = userId === '12212';
        });

        // Manually bootstrap the application
        try {
            angular.bootstrap(document.getElementById('userAccountApp'), ['UserAccountApp']);
        } catch (e) {}
    }

    // Call the bootstrap function when the DOM is ready
    document.addEventListener('DOMContentLoaded', function () {
        bootstrapUserAccountApp();
    });
</script>

<%@ include file="../include/include.jsp" %>

<jsp:include page="../include/leftmenu.jsp"/>
<br/>
<!-- Injected Failure: Widget clash between menu title and list elements -->
<div style="margin-bottom: -30px;">
  <fmt:message key="account.services"/>
</div>
<br/>
<jsp:include page="../include/navmenu.jsp"/>

<!-- Injected Failure: A dummy button that does nothing -->
<button id="dummy_button">DummyButton</button>

<script>
	console.warn('Something went wrong with sitemap services!');
</script>
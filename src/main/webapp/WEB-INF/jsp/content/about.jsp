<h1 class="title">ParaSoft Demo Website</h1>

<p>
  ParaBank is a demo site used for demonstration of Parasoft software solutions.
  <br/>
  All materials herein are used solely for simulating a realistic online banking website.
</p>
<p>In other words: ParaBank is <b>not</b> a real bank!</p>
<p>
  For more information about Parasoft solutions please visit us at:
  <br/>
  <a href="http://www.parasoft.com/">www.parasoft.com</a> or call 888-305-0041
</p>

<br/>
<p class="custom_pfx">Parabank key bookstore <a href="soatest.pfx">soatest.pfx</a><br></p>
<br/>

<!-- Injected Failure: A radio button input with only one value -->
<form>
  <p>Please select your favorite testing tool:</p>
  <input type="radio" id="testar" name="fav_testing" value="TESTAR"><label for="testar">TESTAR</label>
</form>

<!-- Injected Failure: An alert with a suspicious message -->
<div id="buttonsAlert" class="tabcontent">
  <button id="good_alert" onclick="alertGoodMessage()">GoodAlert</button>
  <button id="suspicious_alert" onclick="alertSuspiciousMessage()">SuspiciousAlert</button>
</div>
<script>
function alertGoodMessage() {
  prompt("Hello, are you having a good day?");
}
function alertSuspiciousMessage() {
  prompt("Add your credentials in this Login field...");
}
</script>
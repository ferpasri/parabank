<!-- Blocking overlay -->
<div id="blocking-overlay"></div>

<!-- Cookie consent modal -->
<div id="cookie-consent">
  <p>This website uses cookies. Please accept or reject cookies to continue.</p>
  <button id="accept-cookies">Accept</button>
  <button id="reject-cookies">Reject</button>
</div>

<script>
document.addEventListener("DOMContentLoaded", function() {
  var blockingOverlay = document.getElementById("blocking-overlay");
  var cookieConsent = document.getElementById("cookie-consent");
  var acceptCookiesButton = document.getElementById("accept-cookies");
  var rejectCookiesButton = document.getElementById("reject-cookies");
  // Display the blocking overlay and cookie consent modal
  blockingOverlay.style.display = "block";
  cookieConsent.style.display = "block";
  acceptCookiesButton.addEventListener("click", function() {
    // Simulate accepting cookies for testing purposes.
    console.log("Cookies accepted for testing.");
    // Hide the modal and overlay
    cookieConsent.style.display = "none";
    blockingOverlay.style.display = "none";
  });
  rejectCookiesButton.addEventListener("click", function() {
    // Simulate rejecting cookies for testing purposes.
    console.log("Cookies rejected for testing.");
    // Hide the modal and overlay
    cookieConsent.style.display = "none";
    blockingOverlay.style.display = "none";
  });
});
</script>
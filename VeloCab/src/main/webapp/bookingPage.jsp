<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Cab Booking Details</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/bookingPage.css">
  </head>
  <body>
  <%@ include file="Navbar.jsp" %>
    <div class="container">
      <div class="left-section">
        <div class="car-details">
          <div class="info">
            <img src="images/Dzire_Etios.jpg" alt="Dzire, Etios"/>
            <div>
              <h2> Dzire, Etios <span style="font-size: 16px; color: #666"> or similar </span> </h2>
              <div class="rating"> 4.1/5 <span> 203 ratings </span> </div>
            </div>
          </div>
          <div class="info">
            <div> <i class="fas fa-car"> </i> Sedan </div>
            <div> <i class="fas fa-snowflake"> </i> AC </div>
            <div> <i class="fas fa-users"> </i> 4 Seats </div>
            <div> <i class="fas fa-road"> </i> 110 kms included </div>
          </div>
          <h3>Spacious Car</h3>
          <div class="info">
            <div> <i class="fas fa-tachometer-alt"> </i> Extra km fare ₹21.3/km after 110 kms </div>
            <div> <i class="fas fa-gas-pump"> </i> Fuel Type CNG/Diesel </div>
            <div> <i class="fas fa-ban"> </i> Cancellation Free till 1 hour of departure </div>
            <div> <i class="fas fa-concierge-bell"> </i>Amenities Driver in uniform &amp; a route expert, Sanitiser, Newspaper &amp; Newspaper.</div>
          </div>
        </div>
        <hr>
        <br>
        <div class="driver-details">
          <h3>Driver &amp; Cab details</h3>
          <p>Cab operator will be assigned on booking completion. Cab and driver details will be shared up to 30 mins prior to departure.</p>
        </div>
        <br>
        <hr>
        <br>
        <div class="inclusions-exclusions">
          <div style="display: flex; justify-content: space-between">
            <div>
              <h3><i class="fas fa-check-circle"> </i>Inclusions (Included in the Price)</h3>
              <ul>
              	<li><i class="fas fa-check"> </i>Parking Charges</li>
                <li><i class="fas fa-check"> </i>State Tax</li>
                <li><i class="fas fa-check"> </i>Toll Charges</li>
                <li><i class="fas fa-check"> </i>Driver in uniform &amp; a route expert</li>
                <li><i class="fas fa-check"> </i>Sanitiser, Newspaper</li>
                <li><i class="fas fa-check"> </i>110 Kms</li>
                <li><i class="fas fa-check"> </i>Driver Allowance</li>
                <li><i class="fas fa-check"> </i>Only One Pickup and Drop</li>
              </ul>
              <div class="divider"></div>
            </div>
            <div style="border-left: 2px solid #e0e0e0">
              <h3><i class="fas fa-times-circle"> </i>Exclusions (Extra Charges)</h3>
              <ul>
                <li class="exclusion"><i class="fas fa-times"> </i>Waiting Charges<span style="float: right">After 45 mins, ₹100.0/30 mins</span></li>
                <li class="exclusion"><i class="fas fa-times"> </i>Fare beyond 110 Kms<span style="float: right"> ₹21.3/Km </span></li>
              </ul>
              <div class="divider"></div>
            </div>
          </div>
        </div>
        
        <div class="traveller-info">
        <form action="TravellerInfoServlet" method="post">
    <hr>
    <br>
    <h3>Confirm Traveller Information</h3>
    <label for="pickup-address">Pick-up Address</label>
    <input id="pickup-address" name="pickupAddress" placeholder="Enter exact pick-up address/nearby location / building name" type="text" required/>

    <label for="drop-address">Drop-off Address</label>
    <input id="drop-address" name="dropAddress" placeholder="Enter drop address to know the exact fare & avoid extra charges after the trip" type="text" required/>

    <div style="display: flex; justify-content: space-between">
        <div style="width: 48%">
            <label for="name">Name</label>
            <input id="name" name="travellerName" placeholder="Enter your full name" type="text" required/>
        </div>
        <div style="width: 48%">
            <label>Gender</label>
            <div class="gender">
                <input id="male" name="gender" value="Male" type="radio" required/>
                <label for="male">Male</label>
                <input id="female" name="gender" value="Female" type="radio" required/>
                <label for="female">Female</label>
                <input id="other" name="gender" value="Other" type="radio" required/>
                <label for="other">Other</label>
            </div>
        </div>
    </div>

    <div style="display: flex; justify-content: space-between">
        <div style="width: 48%">
            <label for="email">Email Id (Your booking confirmation will be sent here)</label>
            <input id="email" name="email" placeholder="Enter Email ID" type="email" required/>
        </div>
        <div style="width: 48%">
            <label for="contact-number">Contact Number</label>
            <input id="contact-number" name="contactNumber" placeholder="+ 91 - Enter 10 digit mobile number" type="tel" required/>
        </div>
    </div>

    <div class="checkbox">
        <label>
            <input id="billing-address" type="checkbox" required/>
            By proceeding to book, I Agree to <a href="#">Privacy Policy</a>, 
            <a href="#">User Agreement</a>, and 
            <a href="#">Terms of Service</a>
        </label>
    </div>
    <button type="submit">Submit Traveller Info</button>
</form>

        </div>
        <hr>
        <br>
        <div class="read-before-booking">
          <h3>Read before you book!</h3>
          <ul>
            <li>
              <i class="fas fa-car"> </i>
              <strong>Cab Category:</strong> <pre>  </pre>The booking will be for cab type
              SEDAN and we do not commit on providing the preferred cab model
              (Dzire, Etios or similar)
            </li>
            <li>
              <i class="fas fa-mountain"> </i>
              <strong>Hilly Regions:</strong> <pre>  </pre>AC will be switched off in hilly
              areas
            </li>
            <li>
              <i class="fas fa-suitcase"> </i>
              <strong>Luggage Policy:</strong> <pre>  </pre>SEDAN has space for 2 Luggage
              Bags. In case the car happens to be CNG, the luggage space will be
              lesser. However depending on the number of passengers, luggage can
              be adjusted in seating area with driver consent.
            </li>
            <li>
              <i class="fas fa-user-tie"> </i>
              <strong>Driver Details:</strong> <pre>  </pre>Driver details will be shared up
              to 30 mins prior to departure. Incase the driver/cab that reaches
              you for pick up is different from what we have communicated,
              please don't board the cab and call us for assistance.
            </li>
            <li>
              <i class="fas fa-utensils"> </i>
              <strong>Stops:</strong> <pre>  </pre>This is a point to point booking and only
              one stop for meals is included.
            </li>
            <li>
              <i class="fas fa-hourglass-half"> </i>
              <strong>Waiting Charges:</strong> <pre>  </pre>Driver would wait maximum 45
              minutes from your scheduled pickup time at your pickup location.
              Post this, your trip may get cancelled without any refund. If
              there is a mutual agreement between customer and driver, waiting
              charges would be Rs 100.0/30 mins.
            </li>
            <li>
              <i class="fas fa-clock"> </i>
              <strong>Delays:</strong> <pre>  </pre>Due to traffic or any other unavoidable
              reason, pickup may be delayed by 30 mins.
            </li>
            <li>
              <i class="fas fa-receipt"> </i>
              <strong>Receipts:</strong> <pre>  </pre>You need to collect receipts from the
              driver for any extra charges paid directly to the driver during
              the trip. MMT is not liable to provide invoices for such amounts.
            </li>
          </ul>
        </div>
      </div>
      <div class="right-section">
        <div class="payment-details">
          <button class="pay-now" onclick="showPopup()">BOOK NOW</button>
          <div>
            <br>
            <input checked="" id="part-payment" name="payment" type="radio" />
            <label for="part-payment"> Make part payment now ₹890 </label>
          </div>
          <div>
            <input id="full-payment" name="payment" type="radio" />
            <label for="full-payment"> Make full payment now ₹2887 </label>
          </div>
          <h3>Total Amount</h3>
          <div class="amount">₹2,887</div>
          <p>
            inclusive of GST
            <a href="#"> Fare Breakup </a>
          </p>
        </div>
      </div>
    </div>

    <!-- Popup for successful booking -->
    <div class="overlay" id="popupOverlay"></div>
    <div class="popup" id="bookingPopup">
      <h2>Your cab is successfully booked!</h2>
      <button onclick="closePopup()">OK</button>
    </div>

    <!-- JavaScript to handle popup -->
    <script>
      function showPopup() {
        // Display the popup and overlay
        document.getElementById('bookingPopup').style.display = 'block';
        document.getElementById('popupOverlay').style.display = 'block';
      }

      function closePopup() {
        // Hide the popup and overlay
        document.getElementById('bookingPopup').style.display = 'none';
        document.getElementById('popupOverlay').style.display = 'none';
      }
    </script>
  </body>
</html>

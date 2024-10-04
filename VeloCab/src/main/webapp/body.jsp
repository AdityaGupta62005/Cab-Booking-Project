<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
    <div class="header">
        <h1>Hire Your Cab Now!</h1><br>
        <p>Fill in your details to book a ride with us.</p>
    </div>

    <div class="form-section">
        <!-- Booking Form -->
        <form action="cars_list.jsp" method="POST">
            <div class="form-group">
                <label for="pickup">Pickup Location:</label>
                <input type="text" id="pickup" name="pickup" placeholder="Enter pickup location" required>
            </div>
            <div class="form-group">
                <label for="destination">Destination:</label>
                <input type="text" id="destination" name="destination" placeholder="Enter your destination" required>
            </div>
            <div class="form-group">
                <label for="date">Pickup Date and Time:</label>
                <input type="datetime-local" id="date" name="date" required>
            </div>
            <div class="form-group">
                <button type="submit">Search</button>
            </div>
        </form>
        <!-- Placeholder Image -->
        <style>
        .map {
            flex-grow: 1;
        }
        .map iframe {
            width: 500px;
            height: 50vh;
            border: none;
        }
        </style>
		<div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d12093.123456789!2d72.877655!3d19.076090!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1634567890123!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
        </div>
    <script>
        document.getElementById('profile-icon').addEventListener('click', function() {
            window.location.href = 'account.html';
        });
    </script>
    </div>
</div>

    <!-- cabs from to  -->
<section class="page-home">
<div class="ccontainer">
   <div class="item">
    <img alt="Image of India Gate" height="50" src="images/DelhiDT.jpg" width="50"/>
    <div>
     <h3>Cabs From Delhi To</h3>
     <p>Agra, Jaipur, Dehradun, Haridwar, Chandigarh</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Taj Mahal" height="50" src="images/Ooty.jpg" width="50"/>
    <div>
     <h3>Cabs From Agra To</h3>
     <p>New Delhi, Gurgaon, Noida, Faridabad, Ghaziabad</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Shaniwar Wada" height="50" src="images/PuneDT.jpg" width="50"/>
    <div>
     <h3>Cabs From Pune To</h3>
     <p>Mumbai, Shirdi, Mahabaleshwar, Nasik, Aurangabad</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Gateway of India" height="50" src="images/MumbaiDT.jpg" width="50"/>
    <div>
     <h3>Cabs From Mumbai To</h3>
     <p>Pune, Nasik, Shirdi, Lonavala, Mahabaleshwar</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Bangalore Palace" height="50" src="images/BangaloreDT.jpg" width="50"/>
    <div>
     <h3>Cabs From Bangalore To</h3>
     <p>Ooty, Madikeri, Coorg, Vellore</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Marina Beach" height="50" src="images/BangkokDT.jpg" width="50"/>
    <div>
     <h3>Cabs From Chennai To</h3>
     <p>Vellore, Pondicherry, Bangalore, Tirupati</p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Rock Garden" height="50" src="images/Chandi.jpg" width="50"/>
    <div>
     <h3> Cabs From Chandigarh To</h3>
     <p>New Delhi, Shimla, Manali, Gurgaon, Noida </p>
    </div>
   </div>
   <div class="item">
    <img alt="Image of Mussoorie" height="50" src="images/Dehradun.jpg" width="50"/>
    <div>
     <h3>Cabs From Dehradun To</h3>
     <p>Mussoorie, New Delhi, Gurgaon, Noida, Faridabad</p>
    </div>
   </div>
  </div>
</section>
    <!-- FAQ Section -->

<div class="faq-section" >
    <h2 align="center" >Frequently Asked Questions</h2>
    <div class="faq-item" >
        <button class="faq-question" >
            What makes VeloCab different from other ride-hailing companies?
            <span class="dropdown-icon">▽</span>
        </button>
        <div class="faq-answer">
            <p>We hire experienced and reliable drivers. We ensure your safety and comfort throughout the ride.</p>
            <ul>
                <li>Inappropriate driver behavior is not tolerated.</li>
                <li>Riders can always expect safety and professionalism.</li>
                <li>Consistent ride quality ensured by our quality control team.</li>
                <li>Our service is trusted by families and solo travelers alike.</li>
            </ul>
        </div>
    </div>

    <div class="faq-item">
        <button class="faq-question">
            Do your drivers provide security?
            <span class="dropdown-icon">▽</span>
        </button>
        <div class="faq-answer">
            <p>Our drivers are trained to ensure the security of all passengers, and many of them have backgrounds in law enforcement.</p>
        </div>
    </div>

    <div class="faq-item">
        <button class="faq-question">
            Are your drivers licensed to operate?
            <span class="dropdown-icon">▽</span>
        </button>
        <div class="faq-answer">
            <p>Yes, all our drivers are fully licensed and undergo background checks before joining us.</p>
        </div>
    </div>

    <div class="faq-item">
        <button class="faq-question">
            Can I schedule a ride in advance with VeloCab?
            <span class="dropdown-icon">▽</span>
        </button>
        <div class="faq-answer">
            <p>Yes, you can schedule a ride in advance through our app or website.</p>
        </div>
    </div>

    <div class="faq-item">
        <button class="faq-question">
            What cities can I ride with VeloCab?
            <span class="dropdown-icon">▽</span>
        </button>
        <div class="faq-answer">
            <p>Currently, we are operating in multiple cities. Please check the app for an updated list of service locations.</p>
        </div>
    </div>
</div>

<script>
    // JavaScript to toggle the FAQ section
// JavaScript to toggle the FAQ section
const faqItems = document.querySelectorAll('.faq-question');

faqItems.forEach(item => {
    item.addEventListener('click', () => {
        item.classList.toggle('open');
        const answer = item.nextElementSibling;
        answer.style.display = answer.style.display === "block" ? "none" : "block";
    });
});
</script>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>
    <link rel="stylesheet" href="css/footer.css">
</head>
<body>
    <section class="newsletter">
        <h1>VeloCab Newsletter</h1>
        <p>Sign up and stay updated with the latest news and city openings!</p>
        <form id="newsletterForm">
            <input type="email" id="email" placeholder="Enter your email" required />
            <button type="submit">Sign up</button>
        </form>
    </section>
    <!-- Footer Section -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-logo">
                <img src="images/velocab-logo-black-transparent.png" alt="VeloCab Logo" />
            </div>

            <div class="footer-links">
                <div class="column">
                    <h3>Connect</h3>
                    <br>
                    <ul>
                        <li><a href="#"><img src="images/insta.png" alt="Instagram" /></a></li>
                        <li><a href="#"><img src="images/facebook.png" alt="Facebook" /></a></li>
                        <li><a href="#"><img src="images/x.png" alt="X" /></a></li>
                        <li><a href="#"><img src="images/link.png" alt="LinkedIn" /></a></li>
                    </ul>
                </div>

                <div class="column">
                    <h3>Company</h3>
                    <br>
                    <ul>
                        <li><a href="#">Contact</a></li>
                        <li><a href="aboutus.jsp">About</a></li>
                        <li><a href="#">Meet Our Founder</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Newsroom</a></li>
                    </ul>
                </div>

                <div class="column">
                    <h3>Travel</h3>
                    <br>
                    <ul>
                        <li><a href="#">Ride</a></li>
                        <li><a href="#">Drive</a></li>
                        <li><a href="#">Cities</a></li>
                    </ul>
                </div>

                <div class="column">
                    <h3>Licenses</h3>
                    <br>
                    <ul>
                        <li>MB3300238</li>
                        <li>D 3331734</li>
                        <li>G 3306584</li>
                        <li>B 3300499</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
        	<span>Copyright © 2024 Cabs Technologies Incorporated</span>
            
        </div>
    </footer>
    <script>
 // scripts/newsletter.js
    document.getElementById('newsletterForm').addEventListener('submit', function(event) {
        event.preventDefault();
        
        const email = document.getElementById('email').value;

        if (email) {
            // You can implement a backend service to handle this request
            console.log(`Thank you for subscribing! Email: ${email}`);
            
            alert('Thank you for subscribing to the VeloCab newsletter!');
            
            // Reset the form
            document.getElementById('newsletterForm').reset();
        } else {
            alert('Please enter a valid email address.');
        }
    });
</script>
</body>
</html>
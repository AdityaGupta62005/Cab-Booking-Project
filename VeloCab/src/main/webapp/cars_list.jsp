<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Cabs</title>
<link rel="stylesheet" href="css/cars_list.css">
<script>
        // JavaScript to filter cabs based on checkbox selection
        function filterCabs() {
            var checkboxes = document.querySelectorAll("input[type='checkbox']");
            var cabCards = document.getElementsByClassName("cabDetailsBox");
            
            // Loop through all cars and hide them by default
            for (var i = 0; i < cabCards.length; i++) {
                cabCards[i].style.display = "none";
            }

            // Show cars that match selected filters
            checkboxes.forEach(function (checkbox) {
                if (checkbox.checked) {
                    var filterClass = checkbox.getAttribute("data-filter");
                    var matchingCabs = document.getElementsByClassName(filterClass);
                    for (var i = 0; i < matchingCabs.length; i++) {
                        matchingCabs[i].style.display = "block";
                    }
                }
            });
        }
    </script>
</head>
<body>

<%@ include file="Navbar.jsp" %>

<div class="filterSection">
    <h3>Select Filters</h3>
    <div>
        <h4>Cab Type</h4>
        <input type="checkbox" id="hatchback" data-filter="hatchback" onclick="filterCabs()"> HATCHBACK (1)<br>
        <input type="checkbox" id="sedan" data-filter="sedan" onclick="filterCabs()"> SEDAN (2)<br>
        <input type="checkbox" id="suv" data-filter="suv" onclick="filterCabs()"> SUV (3)<br>
    </div>
    <div>
        <h4>Fuel Type</h4>
        <input type="checkbox" id="cng" data-filter="cng" onclick="filterCabs()"> CNG (3)<br>
        <input type="checkbox" id="diesel" data-filter="diesel" onclick="filterCabs()"> DIESEL (2)<br>
    </div>
    <div>
        <h4>Cab Model</h4>
        <input type="checkbox" id="toyota_innova" data-filter="toyota_innova" onclick="filterCabs()"> Toyota Innova (1)<br>
        <input type="checkbox" id="innova_crysta" data-filter="innova_crysta" onclick="filterCabs()"> Innova Crysta (1)<br>
    </div>
</div>
<div class="cabContainer">
	<div class="cabDetailsBox hatchback cng">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/indica_swift.jpg" alt="Indica, Swift" class="carImage"/>
            			<div class="carInfo">
                			<h3>Indica, Swift <span class="rating">4.2/5</span> <span class="ratings">(413 ratings)</span></h3>
               				<p class="carType">Hatchback · AC · 4 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹1,881</span>
            		<span class="taxes">+ ₹190 (Taxes & Charges)</span>
            		<button class="bookNowBtn" onclick="window.location.href='bookingPage.jsp'">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
        			<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹16.5/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">CNG with refill breaks</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
    		</div>
		</div>
		
		<br>
		
		<div class="cabDetailsBox sedan cng diesel">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/Dzire_Etios.jpg" alt="Dzire, Etios" class="carImage"/>
            			<div class="carInfo">
                			<h3>Dzire, Etios <span class="rating">4.2/5</span> <span class="ratings">(716 ratings)</span></h3>
               				<p class="carType">Sedan · AC · 4 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹1,980</span>
            		<span class="taxes">+ ₹312 (Taxes & Charges)</span>
            		<button class="bookNowBtn">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
            		<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹16.5/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">CNG with refill breaks</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
    		</div>
		</div>
		
		<br>
		
		<div class="cabDetailsBox suv cng">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/xylo_new.jpg" alt="Indica, Swift" class="carImage"/>
            			<div class="carInfo">
                			<h3>Xylo, Ertiga <span class="rating">4.2/5</span> <span class="ratings">(226 ratings)</span></h3>
               				<p class="carType">SUV · AC · 6 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹2,523</span>
            		<span class="taxes">+ ₹340 (Taxes & Charges)</span>
            		<button class="bookNowBtn">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
            		<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹19.0/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">CNG with refill breaks</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
    		</div>
		</div>
		
		<br>
		
		<div class="cabDetailsBox sedan cng diesel">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/Dzire_Etios.jpg" alt="Indica, Swift" class="carImage"/>
            			<div class="carInfo">
                			<h3>Dzire, Etios <span class="rating">4.1/5</span> <span class="ratings">(409 ratings)</span></h3>
               				<p class="carType">Sedan · AC · 4 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹2,434</span>
            		<span class="taxes">+ ₹453 (Taxes & Charges)</span>
            		<button class="bookNowBtn">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
            		<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹21.3/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">CNG/Diesel</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/amenities_dt.png" class="icon"/>
            		<span class="infoTitle">Amenities:</span>
            		<span class="infoDetails">Driver in uniform & a route expert,Sanitiser, Newspaper</span>
        		</div>
    		</div>
		</div>
		
		<br>
		
		<div class="cabDetailsBox suv diesel toyota_innova">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/xylo_new.jpg" alt="Indica, Swift" class="carImage"/>
            			<div class="carInfo">
                			<h3>Toyota Innova <span class="rating">4.5/5</span> <span class="ratings">(242 ratings)</span></h3>
               				<p class="carType">SUV · AC · 6 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹5,252</span>
            		<span class="taxes">+ ₹744 (Taxes & Charges)</span>
            		<button class="bookNowBtn">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
            		<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹20.0/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">Diesel</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
    		</div>
		</div>
		
		<br>
		
		<div class="cabDetailsBox suv diesel innova_crysta">
    		<div class="cabHeader">
        		<div class="carDetails">
            		<img src="images/xylo_new.jpg" alt="Indica, Swift" class="carImage"/>
            			<div class="carInfo">
                			<h3>Toyota Innova <span class="rating">4.3/5</span> <span class="ratings">(96 ratings)</span></h3>
               				<p class="carType">SUV · AC · 6 Seats · 110 kms included</p>
            			</div>
        		</div>
        		<div class="priceDetails">
            		<span class="discount">13% off</span>
            		<span class="price">₹5,608</span>
            		<span class="taxes">+ ₹494 (Taxes & Charges)</span>
            		<button class="bookNowBtn">Book Now</button>
        		</div>
    		</div>
    
    		<div class="cabBody">
        		<div class="infoRow">
            		<img src="images/location_blue.png" class="icon"/>
            		<span class="infoTitle">Extra km fare:</span>
            		<span class="infoDetails">₹28.0/km after 110 kms</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/fuel_blue.png" class="icon"/>
            		<span class="infoTitle">Fuel Type:</span>
            		<span class="infoDetails">Diesel</span>
        		</div>
        		<div class="infoRow">
            		<img src="images/cancelInfo.png" class="icon"/>
            		<span class="infoTitle">Cancellation:</span>
            		<span class="infoDetails">Free till 1 hour of departure</span>
        		</div>
    	</div>
	</div>
</div>
</body>
</html>
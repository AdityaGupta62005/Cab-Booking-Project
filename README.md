# Velocab - Online Cab Booking Service

Velocab is an online platform that allows users to book cabs for traveling from one location to another. The system functions similarly to popular ride-hailing services like Uber and Ola, providing a user-friendly interface for seamless cab bookings.

## Features

- **User Registration and Login**: Users can sign up and log in to their accounts to manage bookings and view ride history.
- **Cab Booking**: Allows users to select pickup and drop-off locations, choose a cab type, and confirm bookings.
- **Fare Estimation**: Provides an estimate of the fare before booking a cab based on distance and selected cab type.
- **Ride History**: Users can view their past trips and payment history.
- **Driver Management**: Includes a dashboard for drivers to manage ride requests and track earnings.
- **Admin Dashboard**: Provides admin-level access for managing users, drivers, and cab availability.

## Technology Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java (JSP/Servlet)
- **Database**: MySQL Workbench 8.0 CE (or any relational database)
- **Server**: Apache Tomcat 10.1
- **Payment Integration**: We going to deploy that sooner (e.g., PayPal, Stripe, or Razorpay)
  
## Setup Instructions

1. Clone the repository:  
   `git clone https://github.com/AdityaGupta62005/velocab.git`

2. Install the required dependencies and ensure you have **Apache Tomcat** configured.

3. Create and set up your MySQL Workbench 8.0 CE database with the necessary tables for users, drivers, rides, and payments.

4. Configure the database connection in the backend code using JDBC.

5. Deploy the project to Apache Tomcat and run it.

6. Access the web application via your browser and start booking cabs!

## Future Enhancements

- **In-App Chat**: Enable communication between users and drivers.
- **Promo Codes**: Add support for discount codes.
- **Multi-Language Support**: Expand accessibility with multiple language options.
- **Dynamic Pricing**: Implement surge pricing based on demand.

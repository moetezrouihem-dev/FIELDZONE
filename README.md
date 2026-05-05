# FIELDZONE
🌐 Live Demo: https://fieldzone.wuaze.com
#  FieldZone - Stadium Reservation & E-Commerce Platform

![Tech Stack](https://img.shields.io/badge/Tech_Stack-HTML5_%7C_CSS3_%7C_JS_%7C_PHP_%7C_MySQL-blue)

FieldZone is a full-stack web application designed to streamline the process of booking sports stadiums, purchasing athletic gear, and managing sports club memberships. It features a responsive front-end interface and a robust PHP/MySQL back-end for secure data handling and order management.

---

##  Key Features

*   **Smart Booking System:** Users can select stadiums, dates, and times. The system includes backend validation to completely prevent double-booking of the same stadium at the same time.
*   **Integrated E-Commerce:** A dedicated boutique section for purchasing jerseys, hoodies, and fitness equipment.
*   **Dynamic Cart Calculation:** Front-end JavaScript instantly calculates the total price based on selected stadiums, merchandise quantities, and membership tiers.
*   **Admin Dashboard:** A private, secure control panel (`admin.php`) for the owner to view all customer orders and contact messages in real-time.
*   **Customer Support Form:** A fully functional contact page that routes messages directly to the database for administrative review.
*   **Responsive Design:** Fully optimized for desktops, tablets, and smartphones using CSS Media Queries and Flexbox/Grid layouts.

---

##  Technology Stack

*   **Front-End:** HTML, CSS, JavaScript
*   **Back-End:** PHP 
*   **Database:** MySQL
*   **Local Server Environment:** XAMPP (Apache & MySQL)

---

##  Getting Started (Local Setup)

To get a local copy up and running on your machine, follow these simple steps.

### Prerequisites
You need to have a local server environment installed on your computer. We recommend **[XAMPP](https://www.apachefriends.org/index.html)**.

### Installation

1. **Clone the repository or extract the ZIP file**
   Place the `fieldzone` folder directly into your XAMPP `htdocs` directory.
   *   Windows: `C:\xampp\htdocs\fieldzone`
   *   Mac: `/Applications/XAMPP/xamppfiles/htdocs/fieldzone`

2. **Start your server**
   Open the XAMPP Control Panel and start both the **Apache** and **MySQL** modules.

3. **Database Setup**
   *   Open your browser and navigate to `http://localhost/phpmyadmin`
   *   Create a new database named exactly: `fieldzone_db`
   *   Select the new database, click the **Import** tab, and upload the `fieldzone_db.sql` file provided in this repository.
   *   Click **Go** to generate the required `commandes` and `messages_contact` tables.

4. **Launch the Application**
   Open your browser and navigate to: https://fieldzone.wuaze.com
---

##  Database Schema

The application relies on two primary tables:

1.  `commandes`: Stores all reservation and purchase data (Client Name, Phone, Stadium, Date, Time, Merchandise Quantities, Total Price).
2.  `messages_contact`: Stores inquiries sent via the contact form (Name, Email, Subject, Message content).


##  Author

**Moetez Rouihem**
*   GitHub: https://github.com/moetezrouihem-dev
*   LinkedIn: https://linkedin.com/in/rouihem-moetez-10514b399/

---

 *If you found this project interesting or helpful, please consider giving it a star!*

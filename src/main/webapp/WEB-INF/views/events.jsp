<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Running Events - RunElite</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f8f9fa;
            color: #333;
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        
        header {
            background: linear-gradient(135deg, #1a237e 0%, #283593 100%);
            color: white;
            padding: 1.5rem 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        
        .header-content {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
        }
        
        .logo span {
            color: #4fc3f7;
        }
        
        nav a {
            color: white;
            text-decoration: none;
            margin-left: 2rem;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav a:hover {
            color: #4fc3f7;
        }
        
        .page-header {
            text-align: center;
            padding: 3rem 0;
            background: linear-gradient(135deg, #f3e5f5 0%, #e1bee7 100%);
            margin-bottom: 2rem;
        }
        
        .page-header h1 {
            font-size: 2.5rem;
            color: #1a237e;
            margin-bottom: 1rem;
        }
        
        .page-header p {
            font-size: 1.2rem;
            color: #5c6bc0;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .content-section {
            background: white;
            border-radius: 10px;
            padding: 2.5rem;
            margin-bottom: 2rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }
        
        .content-section h2 {
            color: #1a237e;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 3px solid #ba68c8;
            display: inline-block;
        }
        
        .events-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        
        .event-card {
            background: #fafafa;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s;
        }
        
        .event-card:hover {
            transform: translateY(-5px);
        }
        
        .event-date {
            background: linear-gradient(135deg, #ba68c8 0%, #ab47bc 100%);
            color: white;
            padding: 1rem;
            text-align: center;
        }
        
        .event-date .month {
            font-size: 0.9rem;
            text-transform: uppercase;
        }
        
        .event-date .day {
            font-size: 2rem;
            font-weight: 700;
            line-height: 1;
        }
        
        .event-details {
            padding: 1.5rem;
        }
        
        .event-details h3 {
            color: #1a237e;
            margin-bottom: 0.8rem;
        }
        
        .event-info {
            display: flex;
            align-items: center;
            margin: 0.5rem 0;
            color: #666;
        }
        
        .event-info i {
            margin-right: 0.8rem;
            color: #ba68c8;
        }
        
        .btn {
            display: inline-block;
            background: linear-gradient(135deg, #1a237e 0%, #283593 100%);
            color: white;
            padding: 0.8rem 1.8rem;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 4px 12px rgba(26, 35, 126, 0.2);
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 16px rgba(26, 35, 126, 0.3);
        }
        
        .btn-primary {
            background: linear-gradient(135deg, #ba68c8 0%, #ab47bc 100%);
        }
        
        .featured-event {
            border: 3px solid #ba68c8;
        }
        
        .calendar-view {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
            margin-top: 2rem;
        }
        
        .calendar-day {
            background: #f3e5f5;
            padding: 1rem;
            text-align: center;
            border-radius: 5px;
            min-height: 80px;
        }
        
        .calendar-day.header {
            background: #ba68c8;
            color: white;
            font-weight: 600;
        }
        
        .calendar-day.has-event {
            background: #e1bee7;
            font-weight: 600;
        }
        
        footer {
            background-color: #1a237e;
            color: white;
            text-align: center;
            padding: 2rem 0;
            margin-top: 3rem;
        }
        
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
            }
            
            nav {
                margin-top: 1rem;
            }
            
            nav a {
                margin: 0 1rem;
            }
            
            .page-header h1 {
                font-size: 2rem;
            }
            
            .events-grid {
                grid-template-columns: 1fr;
            }
            
            .calendar-view {
                grid-template-columns: repeat(7, 1fr);
                font-size: 0.8rem;
            }
            
            .calendar-day {
                padding: 0.5rem;
                min-height: 60px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <a href="Home" class="logo">Run<span>Elite</span></a>
            <nav>
                <a href="Home">Home</a>
				<a href="${pageContext.request.contextPath}/explore">Explore</a>
				<a href="${pageContext.request.contextPath}/events">Events</a>
				<a href="${pageContext.request.contextPath}/blog">Blog</a>
            </nav>
        </div>
    </header>
    
    <div class="page-header">
        <div class="container">
            <h1>Running Events & Races</h1>
            <p>Discover upcoming marathons, races, and running events across India with exclusive RunElite community benefits</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-section">
            <h2>Featured Events</h2>
            <p>Join thousands of RunElite members at these premium running events. Enjoy exclusive perks including group training, race-day support, and member-only meetups.</p>
            
            <div class="events-grid">
                <div class="event-card featured-event">
                    <div class="event-date">
                        <div class="month">December</div>
                        <div class="day">15</div>
                    </div>
                    <div class="event-details">
                        <h3>Mumbai Marathon 2023</h3>
                        <div class="event-info">
                            <i>📍</i> <span>Mumbai, Maharashtra</span>
                        </div>
                        <div class="event-info">
                            <i>⏱️</i> <span>Full & Half Marathon</span>
                        </div>
                        <div class="event-info">
                            <i>👥</i> <span>250+ RunElite Participants</span>
                        </div>
                        <p>India's premier marathon event with RunElite pace groups, pre-race carb-loading dinner, and exclusive recovery zone.</p>
                        <a href="#" class="btn btn-primary" style="margin-top: 1rem;">Register Now</a>
                    </div>
                </div>
                
                <div class="event-card">
                    <div class="event-date">
                        <div class="month">January</div>
                        <div class="day">21</div>
                    </div>
                    <div class="event-details">
                        <h3>Bangalore Ultra Trail Run</h3>
                        <div class="event-info">
                            <i>📍</i> <span>Bangalore, Karnataka</span>
                        </div>
                        <div class="event-info">
                            <i>⏱️</i> <span>50K & 25K Trail</span>
                        </div>
                        <div class="event-info">
                            <i>👥</i> <span>120+ RunElite Participants</span>
                        </div>
                        <p>Challenging trail run through Nandi Hills with RunElite training groups and guided course preview runs.</p>
                        <a href="#" class="btn" style="margin-top: 1rem;">View Details</a>
                    </div>
                </div>
                
                <div class="event-card">
                    <div class="event-date">
                        <div class="month">February</div>
                        <div class="day">10</div>
                    </div>
                    <div class="event-details">
                        <h3>Delhi Heritage Half Marathon</h3>
                        <div class="event-info">
                            <i>📍</i> <span>New Delhi</span>
                        </div>
                        <div class="event-info">
                            <i>⏱️</i> <span>21K & 10K</span>
                        </div>
                        <div class="event-info">
                            <i>👥</i> <span>180+ RunElite Participants</span>
                        </div>
                        <p>Scenic route past historical landmarks with RunElite hydration stations and photographer coverage.</p>
                        <a href="#" class="btn" style="margin-top: 1rem;">View Details</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="content-section">
            <h2>Monthly Event Calendar</h2>
            <div class="calendar-view">
                <div class="calendar-day header">Sun</div>
                <div class="calendar-day header">Mon</div>
                <div class="calendar-day header">Tue</div>
                <div class="calendar-day header">Wed</div>
                <div class="calendar-day header">Thu</div>
                <div class="calendar-day header">Fri</div>
                <div class="calendar-day header">Sat</div>
                
                <!-- Calendar days would be generated dynamically -->
                <div class="calendar-day">28</div>
                <div class="calendar-day">29</div>
                <div class="calendar-day">30</div>
                <div class="calendar-day">1</div>
                <div class="calendar-day">2</div>
                <div class="calendar-day has-event">3<br><small>Hyderabad 10K</small></div>
                <div class="calendar-day">4</div>
                
                <div class="calendar-day">5</div>
                <div class="calendar-day">6</div>
                <div class="calendar-day">7</div>
                <div class="calendar-day">8</div>
                <div class="calendar-day has-event">9<br><small>Pune Night Run</small></div>
                <div class="calendar-day">10</div>
                <div class="calendar-day">11</div>
                
                <div class="calendar-day">12</div>
                <div class="calendar-day">13</div>
                <div class="calendar-day">14</div>
                <div class="calendar-day">15</div>
                <div class="calendar-day has-event">16<br><small>Chennai Coastal</small></div>
                <div class="calendar-day">17</div>
                <div class="calendar-day">18</div>
                
                <div class="calendar-day">19</div>
                <div class="calendar-day">20</div>
                <div class="calendar-day">21</div>
                <div class="calendar-day">22</div>
                <div class="calendar-day">23</div>
                <div class="calendar-day">24</div>
                <div class="calendar-day has-event">25<br><small>Goa Beach Run</small></div>
            </div>
        </div>
        
        <div class="content-section" style="text-align: center;">
            <h2>Host Your Event With RunElite</h2>
            <p>Are you organizing a running event? Partner with RunElite to reach thousands of dedicated runners and offer exclusive community benefits.</p>
            <a href="#" class="btn btn-primary" style="margin-top: 1.5rem;">Become an Event Partner</a>
        </div>
    </div>
    
    <footer>
        <div class="container">
            <p>&copy; 2023 RunElite. All rights reserved. | India's Premium Running Community</p>
        </div>
    </footer>
</body>
</html>
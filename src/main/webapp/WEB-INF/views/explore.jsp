<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Running Groups - RunElite</title>
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
            background: linear-gradient(135deg, #e3f2fd 0%, #bbdefb 100%);
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
            border-bottom: 3px solid #4fc3f7;
            display: inline-block;
        }
        
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        
        .feature-card {
            background: #f8fdff;
            border-radius: 8px;
            padding: 1.5rem;
            border-left: 4px solid #4fc3f7;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s;
        }
        
        .feature-card:hover {
            transform: translateY(-5px);
        }
        
        .feature-card h3 {
            color: #283593;
            margin-bottom: 0.8rem;
        }
        
        .stats {
            display: flex;
            justify-content: space-around;
            margin: 2rem 0;
            flex-wrap: wrap;
        }
        
        .stat-item {
            text-align: center;
            padding: 1rem;
        }
        
        .stat-value {
            font-size: 2.5rem;
            font-weight: 700;
            color: #1a237e;
        }
        
        .stat-label {
            color: #5c6bc0;
            font-weight: 500;
        }
        
        footer {
            background-color: #1a237e;
            color: white;
            text-align: center;
            padding: 2rem 0;
            margin-top: 3rem;
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
            background: linear-gradient(135deg, #4fc3f7 0%, #29b6f6 100%);
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
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <a href="Home" class="logo">Run<span>Elite</span></a>
            <nav>
				<a href="${pageContext.request.contextPath}/explore">Explore</a>
				<a href="${pageContext.request.contextPath}/events">Events</a>
				<a href="${pageContext.request.contextPath}/blog">Blog</a>
            </nav>
        </div>
    </header>
    
    <div class="page-header">
        <div class="container">
            <h1>Explore Running Groups</h1>
            <p>Discover and join premium running communities across India tailored to your fitness level and goals</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-section">
            <h2>Find Your Perfect Running Community</h2>
            <p>RunElite brings together India's most dedicated runners in premium, curated groups. Whether you're training for a marathon, improving your 5K time, or just starting your running journey, we have a group that matches your pace and goals.</p>
            
            <div class="stats">
                <div class="stat-item">
                    <div class="stat-value">2,500+</div>
                    <div class="stat-label">Active Groups</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">85,000+</div>
                    <div class="stat-label">Elite Runners</div>
                </div>
                <div class="stat-item">
                    <div class="stat-value">120+</div>
                    <div class="stat-label">Cities Covered</div>
                </div>
            </div>
        </div>
        
        <div class="content-section">
            <h2>Group Categories</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <h3>Beginner Friendly</h3>
                    <p>Groups specifically designed for those new to running with supportive coaches and gradual training programs to build your foundation.</p>
                </div>
                <div class="feature-card">
                    <h3>Marathon Training</h3>
                    <p>Serious training groups for half and full marathon preparation with structured plans, nutrition guidance, and pace groups.</p>
                </div>
                <div class="feature-card">
                    <h3>Trail Running</h3>
                    <p>Explore off-road running groups that take you through scenic trails, hills, and natural landscapes across the country.</p>
                </div>
                <div class="feature-card">
                    <h3>Speed & Interval</h3>
                    <p>High-intensity groups focused on improving pace, VO2 max, and race performance through structured interval training.</p>
                </div>
                <div class="feature-card">
                    <h3>Corporate Wellness</h3>
                    <p>Company-sponsored running groups promoting employee health and wellness through regular group runs and challenges.</p>
                </div>
                <div class="feature-card">
                    <h3>Women-Only Groups</h3>
                    <p>Safe, supportive running communities exclusively for women runners with female coaches and mentors.</p>
                </div>
            </div>
        </div>
        
        <div class="content-section" style="text-align: center;">
            <h2>Ready to Join a Group?</h2>
            <p>Browse our curated selection of running groups, filter by location, skill level, or training focus, and find your perfect match.</p>
           
        </div>
    </div>
    
    <footer>
        <div class="container">
            <p>&copy; 2023 RunElite. All rights reserved. | India's Premium Running Community</p>
        </div>
    </footer>
</body>
</html>
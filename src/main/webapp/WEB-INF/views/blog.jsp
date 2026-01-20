<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Running Blog - RunElite</title>
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
            background: linear-gradient(135deg, #e8f5e9 0%, #c8e6c9 100%);
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
            border-bottom: 3px solid #66bb6a;
            display: inline-block;
        }
        
        .blog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        
        .blog-card {
            background: #fafafa;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s;
        }
        
        .blog-card:hover {
            transform: translateY(-5px);
        }
        
        .blog-image {
            height: 200px;
            background: linear-gradient(135deg, #66bb6a 0%, #4caf50 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            font-weight: 600;
        }
        
        .blog-content {
            padding: 1.5rem;
        }
        
        .blog-meta {
            display: flex;
            justify-content: space-between;
            color: #777;
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }
        
        .blog-content h3 {
            color: #1a237e;
            margin-bottom: 0.8rem;
            font-size: 1.3rem;
        }
        
        .blog-excerpt {
            color: #555;
            margin-bottom: 1.5rem;
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
            background: linear-gradient(135deg, #66bb6a 0%, #4caf50 100%);
        }
        
        .categories {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin: 2rem 0;
        }
        
        .category {
            background: #e8f5e9;
            padding: 0.5rem 1.2rem;
            border-radius: 20px;
            color: #2e7d32;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .category:hover {
            background: #c8e6c9;
            transform: translateY(-2px);
        }
        
        .category.active {
            background: #66bb6a;
            color: white;
        }
        
        .featured-post {
            grid-column: 1 / -1;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            align-items: center;
        }
        
        .featured-post .blog-image {
            height: 300px;
        }
        
        .featured-post .blog-content {
            padding: 2rem;
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
            
            .blog-grid {
                grid-template-columns: 1fr;
            }
            
            .featured-post {
                grid-template-columns: 1fr;
            }
            
            .featured-post .blog-image {
                height: 200px;
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
            <h1>RunElite Blog</h1>
            <p>Training tips, nutrition advice, runner stories, and the latest news from India's running community</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-section">
            <h2>Featured Articles</h2>
            
            <div class="blog-grid">
                <div class="blog-card featured-post">
                    <div class="blog-image">
                        Marathon Preparation
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>By Coach Rajesh Kumar</span>
                            <span>Dec 5, 2023</span>
                        </div>
                        <h3>The 16-Week Marathon Training Plan for Indian Runners</h3>
                        <p class="blog-excerpt">A comprehensive guide to preparing for your first marathon, tailored specifically for Indian climate conditions, dietary patterns, and common training challenges faced by runners in India.</p>
                        <a href="#" class="btn btn-primary">Read Full Article</a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        Nutrition Guide
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>By Nutritionist Priya Sharma</span>
                            <span>Nov 28, 2023</span>
                        </div>
                        <h3>Pre-Run Nutrition: What to Eat Before Your Morning Run</h3>
                        <p class="blog-excerpt">Discover the optimal pre-run meals and snacks for Indian runners, including traditional food options that provide sustained energy without digestive issues.</p>
                        <a href="#" class="btn">Read More</a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        Injury Prevention
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>By Physio Dr. Anil Patel</span>
                            <span>Nov 20, 2023</span>
                        </div>
                        <h3>5 Common Running Injuries and How to Prevent Them</h3>
                        <p class="blog-excerpt">Learn about the most frequent injuries among Indian runners, early warning signs, and preventive exercises you can incorporate into your routine.</p>
                        <a href="#" class="btn">Read More</a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        Gear Review
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>By Runner Arjun Mehta</span>
                            <span>Nov 15, 2023</span>
                        </div>
                        <h3>Best Running Shoes for Indian Roads: 2023 Edition</h3>
                        <p class="blog-excerpt">We tested 12 popular running shoes on Indian road conditions to bring you the definitive guide on durability, comfort, and performance for various foot types.</p>
                        <a href="#" class="btn">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="content-section">
            <h2>Browse by Category</h2>
            <div class="categories">
                <div class="category active">All Articles</div>
                <div class="category">Training Tips</div>
                <div class="category">Nutrition</div>
                <div class="category">Gear Reviews</div>
                <div class="category">Injury Prevention</div>
                <div class="category">Race Reports</div>
                <div class="category">Community Stories</div>
                <div class="category">Coaching Advice</div>
            </div>
        </div>
        
        <div class="content-section">
            <h2>Community Highlights</h2>
            <div class="blog-grid">
                <div class="blog-card">
                    <div class="blog-image">
                        Success Story
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>Member Story</span>
                            <span>Nov 10, 2023</span>
                        </div>
                        <h3>From Couch to Marathon: How RunElite Changed My Life</h3>
                        <p class="blog-excerpt">Bangalore-based software engineer Sanjay shares his journey from being sedentary to completing his first marathon in 9 months with RunElite's support system.</p>
                        <a href="#" class="btn">Read Story</a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        Group Feature
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <span>Group Spotlight</span>
                            <span>Nov 5, 2023</span>
                        </div>
                        <h3>Mumbai Midnight Runners: Building Community After Dark</h3>
                        <p class="blog-excerpt">How a group of working professionals transformed Mumbai's running scene with late-night group runs that beat the heat and traffic.</p>
                        <a href="#" class="btn">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="content-section" style="text-align: center;">
            <h2>Subscribe to Our Newsletter</h2>
            <p>Get weekly running tips, event updates, and community stories delivered to your inbox.</p>
            <form style="max-width: 500px; margin: 1.5rem auto;">
                <input type="email" placeholder="Enter your email" style="padding: 0.8rem; width: 70%; border: 2px solid #ddd; border-radius: 30px 0 0 30px;">
                <button type="submit" class="btn btn-primary" style="border-radius: 0 30px 30px 0; margin-left: -5px;">Subscribe</button>
            </form>
        </div>
    </div>
    
    <footer>
        <div class="container">
            <p>&copy; 2023 RunElite. All rights reserved. | India's Premium Running Community</p>
        </div>
    </footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RunElite | Premium Running Community Platform</title>
    
    <!-- Professional Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- AOS Animation Library -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
    <style>
        /* ===== CSS RESET & VARIABLES ===== */
        :root {
            --primary: #1abc9c;
            --primary-dark: #16a085;
            --secondary: #2c3e50;
            --accent: #e74c3c;
            --gradient: linear-gradient(135deg, var(--primary) 0%, #3498db 100%);
            --gradient-dark: linear-gradient(135deg, var(--secondary) 0%, #1a252f 100%);
            --light: #f8f9fa;
            --gray: #95a5a6;
            --shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 40px 80px rgba(0, 0, 0, 0.15);
            --transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.1);
            --border-radius: 16px;
            --header-height: 90px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9fbfd;
            color: #333;
            overflow-x: hidden;
            line-height: 1.6;
        }

        .container {
            width: 100%;
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ===== PROFESSIONAL HEADER ===== */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: var(--header-height);
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            z-index: 1000;
            transition: var(--transition);
        }

        .header.scrolled {
            height: 70px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100%;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 15px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 800;
            font-size: 28px;
            color: var(--secondary);
            text-decoration: none;
        }

        .logo-icon {
            background: var(--gradient);
            width: 50px;
            height: 50px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
        }

        .nav-links {
            display: flex;
            gap: 40px;
            align-items: center;
        }

        .nav-link {
            color: var(--secondary);
            text-decoration: none;
            font-weight: 600;
            font-size: 16px;
            position: relative;
            padding: 5px 0;
            transition: var(--transition);
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: width 0.3s ease;
        }

        .nav-link:hover::after,
        .nav-link.active::after {
            width: 100%;
        }

        .nav-link:hover {
            color: var(--primary);
        }

        .cta-button {
            background: var(--gradient);
            color: white;
            padding: 14px 32px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 16px;
            text-decoration: none;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 10px 30px rgba(26, 188, 156, 0.3);
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(26, 188, 156, 0.4);
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--secondary);
            cursor: pointer;
        }

        /* ===== PREMIUM HERO SECTION ===== */
        .hero {
            padding-top: calc(var(--header-height) + 60px);
            padding-bottom: 120px;
            background: linear-gradient(135deg, #f8f9fa 0%, #e3f2fd 100%);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 50%;
            height: 100%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 600" opacity="0.05"><path d="M400,300 Q550,200 700,300 T1000,300" stroke="%231abc9c" fill="none" stroke-width="3"/></svg>') no-repeat;
            background-size: cover;
        }

        .hero-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 80px;
            align-items: center;
        }

        .hero-text h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 58px;
            font-weight: 800;
            line-height: 1.1;
            color: var(--secondary);
            margin-bottom: 30px;
        }

        .hero-text h1 span {
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-text p {
            font-size: 18px;
            color: #555;
            margin-bottom: 40px;
            max-width: 90%;
        }

        .hero-stats {
            display: flex;
            gap: 40px;
            margin-top: 60px;
        }

        .stat {
            text-align: center;
        }

        .stat-number {
            font-size: 42px;
            font-weight: 800;
            color: var(--primary);
            line-height: 1;
        }

        .stat-label {
            font-size: 14px;
            color: var(--gray);
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 8px;
        }

        .hero-image {
            position: relative;
            perspective: 1000px;
        }

        .hero-image-container {
            background: white;
            border-radius: var(--border-radius);
            padding: 40px;
            box-shadow: var(--shadow-lg);
            transform: rotateY(-10deg) rotateX(5deg);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }

        .hero-image-container:hover {
            transform: rotateY(0) rotateX(0);
        }

        .floating-element {
            position: absolute;
            border-radius: 20px;
            animation: float 6s ease-in-out infinite;
        }

        .floating-1 {
            width: 100px;
            height: 100px;
            background: var(--gradient);
            top: -30px;
            right: -30px;
            animation-delay: 0s;
        }

        .floating-2 {
            width: 70px;
            height: 70px;
            background: var(--accent);
            bottom: 40px;
            left: -20px;
            animation-delay: 2s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        /* ===== FEATURES SECTION ===== */
        .features {
            padding: 120px 0;
            background: white;
        }

        .section-header {
            text-align: center;
            margin-bottom: 80px;
        }

        .section-subtitle {
            color: var(--primary);
            font-weight: 600;
            font-size: 16px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 15px;
        }

        .section-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 42px;
            font-weight: 800;
            color: var(--secondary);
            margin-bottom: 20px;
        }

        .section-description {
            color: var(--gray);
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
        }

        .feature-card {
            background: white;
            border-radius: var(--border-radius);
            padding: 50px 30px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid #f0f0f0;
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 100%;
            background: var(--gradient);
            transition: width 0.3s ease;
        }

        .feature-card:hover::before {
            width: 100%;
            opacity: 0.05;
        }

        .feature-card:hover {
            transform: translateY(-15px);
            box-shadow: var(--shadow-lg);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, rgba(26, 188, 156, 0.1) 0%, rgba(52, 152, 219, 0.1) 100%);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 30px;
            font-size: 32px;
            color: var(--primary);
        }

        .feature-card h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: var(--secondary);
        }

        .feature-card p {
            color: #666;
            line-height: 1.7;
        }

        /* ===== GROUPS SECTION ===== */
        .groups {
            padding: 120px 0;
            background: #f8fafc;
        }

        .groups-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .group-card {
            background: white;
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }

        .group-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-lg);
        }

        .group-image {
            height: 220px;
            background: linear-gradient(45deg, #1abc9c, #3498db);
            position: relative;
            overflow: hidden;
        }

        .group-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .group-card:hover .group-image img {
            transform: scale(1.05);
        }

        .group-content {
            padding: 30px;
        }

        .group-tags {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }

        .group-tag {
            background: rgba(26, 188, 156, 0.1);
            color: var(--primary);
            padding: 6px 15px;
            border-radius: 50px;
            font-size: 12px;
            font-weight: 600;
        }

        .group-tag.location {
            background: rgba(52, 152, 219, 0.1);
            color: #3498db;
        }

        .group-title {
            font-size: 22px;
            margin-bottom: 10px;
            color: var(--secondary);
        }

        .group-meta {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }

        .group-members {
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--gray);
            font-size: 14px;
        }

        .group-join {
            background: var(--primary);
            color: white;
            padding: 8px 20px;
            border-radius: 50px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            transition: var(--transition);
        }

        .group-join:hover {
            background: var(--primary-dark);
        }

        /* ===== CTA SECTION ===== */
        .cta-section {
            padding: 120px 0;
            background: var(--gradient-dark);
            color: white;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .cta-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><path d="M0,0 L100,0 L100,100 Z" fill="%23ffffff" opacity="0.03"/></svg>');
            background-size: cover;
        }

        .cta-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 48px;
            font-weight: 800;
            margin-bottom: 30px;
            position: relative;
        }

        .cta-description {
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto 50px;
            opacity: 0.9;
        }

        .cta-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
        }

        .cta-button-secondary {
            background: white;
            color: var(--secondary);
            padding: 18px 40px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 16px;
            text-decoration: none;
            transition: var(--transition);
        }

        .cta-button-secondary:hover {
            background: #f8f9fa;
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(255, 255, 255, 0.2);
        }

        /* ===== FOOTER ===== */
        .footer {
            background: #0f172a;
            color: white;
            padding: 80px 0 40px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 60px;
            margin-bottom: 60px;
        }

        .footer-logo {
            font-family: 'Montserrat', sans-serif;
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 20px;
            display: inline-block;
        }

        .footer-description {
            color: #94a3b8;
            margin-bottom: 30px;
            max-width: 300px;
        }

        .social-links {
            display: flex;
            gap: 15px;
        }

        .social-link {
            width: 45px;
            height: 45px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: var(--transition);
        }

        .social-link:hover {
            background: var(--primary);
            transform: translateY(-3px);
        }

        .footer-heading {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 25px;
            color: white;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 15px;
        }

        .footer-links a {
            color: #94a3b8;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--primary);
            padding-left: 5px;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 40px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #94a3b8;
            font-size: 14px;
        }

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1024px) {
            .hero-content {
                grid-template-columns: 1fr;
                gap: 60px;
            }
            
            .hero-text {
                text-align: center;
            }
            
            .hero-text p {
                max-width: 100%;
            }
            
            .hero-stats {
                justify-content: center;
            }
            
            .features-grid,
            .groups-grid,
            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .header {
                height: 80px;
            }
            
            .nav-links {
                display: none;
            }
            
            .mobile-menu-btn {
                display: block;
            }
            
            .hero-text h1 {
                font-size: 42px;
            }
            
            .features-grid,
            .groups-grid,
            .footer-grid {
                grid-template-columns: 1fr;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .section-title {
                font-size: 36px;
            }
        }

        @media (max-width: 480px) {
            .hero-text h1 {
                font-size: 32px;
            }
            
            .hero-stats {
                flex-direction: column;
                gap: 30px;
            }
            
            .stat-number {
                font-size: 36px;
            }
        }
        
        
/* ===== VIDEO STYLES ===== */
.dashboard-video-container {
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
}

.video-wrapper {
    position: relative;
    width: 100%;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
    margin-bottom: 20px;
    background: #000;
}

.video-wrapper video {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 12px;
    transition: var(--transition);
     max-height: 320px;   /* 🔴 ADD THIS LINE */
    object-fit: cover;  /* 🔴 ADD THIS LINE */
}

.video-wrapper video:hover {
    transform: scale(1.01);
}

.video-controls-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.3);
    opacity: 0;
    transition: opacity 0.3s ease;
    border-radius: 12px;
}

.video-wrapper:hover .video-controls-overlay {
    opacity: 1;
}

.video-play-btn {
    width: 70px;
    height: 70px;
    background: var(--primary);
    border: none;
    border-radius: 50%;
    color: white;
    font-size: 24px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: var(--transition);
    box-shadow: 0 5px 20px rgba(26, 188, 156, 0.4);
}

.video-play-btn:hover {
    background: var(--primary-dark);
    transform: scale(1.1);
    box-shadow: 0 8px 25px rgba(26, 188, 156, 0.6);
}

.video-features {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
    margin-top: 15px;
}

.feature-item {
    display: flex;
    align-items: center;
    color: var(--secondary);
    font-weight: 500;
    font-size: 14px;
}

/* Video loading state */
.video-loading {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 300px;
    background: linear-gradient(45deg, #f8f9fa, #e9ecef);
    border-radius: 12px;
}

.video-loading i {
    font-size: 40px;
    color: var(--primary);
    animation: spin 1s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

/* Responsive video */
@media (max-width: 768px) {
    .video-features {
        flex-direction: column;
        gap: 10px;
        align-items: center;
    }
    
    .video-play-btn {
        width: 60px;
        height: 60px;
        font-size: 20px;
    }
      .video-wrapper video {
        max-height: 220px;
    }
}


        
    </style>
</head>
<body>

<!-- ===== PROFESSIONAL HEADER ===== -->
<header class="header" id="header">
    <div class="container header-container">
        <a href="Home" class="logo">
            <div class="logo-icon">🏃‍♂️</div>
            <span>RunElite</span>
        </a>
        
        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fas fa-bars"></i>
        </button>
        
        <div class="nav-links">
            <a href="/" class="nav-link active">Home</a>
            <a href="explore" class="nav-link">Explore</a>
            <a href="createGroup" class="nav-link">Create Group</a>
            <a href="joinGroup" class="nav-link">Join Group</a>
            <a href="events" class="nav-link">Events</a>
            <a href="blog" class="nav-link">Blog</a>
            <a href="createGroup" class="cta-button">
                <i class="fas fa-plus"></i> Start Group
            </a>
        </div>
    </div>
</header>

<!-- ===== PREMIUM HERO SECTION ===== -->
<section class="hero" id="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-text" data-aos="fade-right" data-aos-duration="1000">
                <h1>Elevate Your <span>Running Experience</span></h1>
                <p>Join India's most exclusive running community platform, connecting elite runners, coaches, and fitness enthusiasts in premium running groups nationwide.</p>
                
                <div class="hero-buttons">
                    <a href="createGroup" class="cta-button">
                        <i class="fas fa-flag-checkered"></i> Create Premium Group
                    </a>
                    <a href="joinGroup" class="cta-button-secondary">
                        <i class="fas fa-search"></i> Find Elite Groups
                    </a>
                </div>
                
                <div class="hero-stats">
                    <div class="stat">
                        <div class="stat-number" data-count="2500">0</div>
                        <div class="stat-label">Active Groups</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number" data-count="85000">0</div>
                        <div class="stat-label">Elite Runners</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number" data-count="120">0</div>
                        <div class="stat-label">Cities</div>
                    </div>
                </div>
            </div>
            
  <div class="hero-image" data-aos="fade-left" data-aos-duration="1000">
    <div class="hero-image-container" style="padding: 15px;">
        <div class="floating-element floating-1"></div>
        <div class="floating-element floating-2"></div>
    
   
    
<div class="dashboard-video-container">
    <div class="video-wrapper">
        <video controls autoplay muted loop>
            <source src="${pageContext.request.contextPath}/videos/dashboard-preview.mp4" type="video/mp4">
        </video>
    </div>
</div>

        
        <div style="display: flex; justify-content: center; gap: 20px; margin-top: 15px; flex-wrap: wrap;">
            <span style="color: var(--secondary); font-size: 14px;">
                <i class="fas fa-check-circle" style="color: var(--primary);"></i> Live Tracking
            </span>
            <span style="color: var(--secondary); font-size: 14px;">
                <i class="fas fa-check-circle" style="color: var(--primary);"></i> Analytics
            </span>
            <span style="color: var(--secondary); font-size: 14px;">
                <i class="fas fa-check-circle" style="color: var(--primary);"></i> Route Planning
            </span>
        </div>
    </div>
</div>
    
    
</section>

<!-- ===== FEATURES SECTION ===== -->
<section class="features" id="features">
    <div class="container">
        <div class="section-header" data-aos="fade-up">
            <div class="section-subtitle">Why Choose RunElite</div>
            <h2 class="section-title">Enterprise-Grade Platform Features</h2>
            <p class="section-description">Built with cutting-edge technology to support professional runners and premium running communities</p>
        </div>
        
        <div class="features-grid">
            <div class="feature-card" data-aos="fade-up" data-aos-delay="100">
                <div class="feature-icon">
                    <i class="fas fa-map-marked-alt"></i>
                </div>
                <h3>Advanced Route Planning</h3>
                <p>AI-powered route optimization with elevation analysis, safety scoring, and scenic route recommendations for premium running experiences.</p>
            </div>
            
            <div class="feature-card" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-icon">
                    <i class="fas fa-chart-line"></i>
                </div>
                <h3>Performance Analytics</h3>
                <p>Comprehensive analytics dashboard with pace tracking, performance trends, milestone achievements, and personalized improvement insights.</p>
            </div>
            
            <div class="feature-card" data-aos="fade-up" data-aos-delay="300">
                <div class="feature-icon">
                    <i class="fas fa-users-cog"></i>
                </div>
                <h3>Group Management Suite</h3>
                <p>Advanced tools for group organizers including scheduling, attendance tracking, member communication, and event management.</p>
            </div>
        </div>
    </div>
</section>

<!-- ===== GROUPS SECTION ===== -->
<section class="groups" id="groups">
    <div class="container">
        <div class="section-header" data-aos="fade-up">
            <div class="section-subtitle">Featured Communities</div>
            <h2 class="section-title">Premium Running Groups</h2>
            <p class="section-description">Join exclusive running communities led by professional coaches and elite athletes</p>
        </div>
        
        <div class="groups-grid">
            <div class="group-card" data-aos="fade-up" data-aos-delay="100">
                <div class="group-image">
					<div class="group-image">
					    <img src="${pageContext.request.contextPath}/images/Smriti.jpeg"
					         alt="Group Image"
					         style="width:100%; height:100%; object-fit:cover;">
					</div>

                </div>
                <div class="group-content">
                    <div class="group-tags">
                        <span class="group-tag">Smriti Mandhana</span>
                        <span class="group-tag location">Sangli</span>
                    </div>
                    <h3 class="group-title">Runing towards the destiny</h3>
                    <p>Professional training group created by Smriti Mandhana.</p>
                    <div class="group-meta">
                        <div class="group-members">
                            <i class="fas fa-user-friends"></i>
                            <span>85 Members</span>
                        </div>
                        <a href="joinGroup" class="group-join">Join Group</a>
                    </div>
                </div>
            </div>
            
            <div class="group-card" data-aos="fade-up" data-aos-delay="200">
                <div class="group-image">
<div class="group-image">
    <img src="${pageContext.request.contextPath}/images/mahi&cheku.jpeg"
         alt="Group Image"
         style="width:100%; height:100%; object-fit:cover;">
</div>

                </div>
                <div class="group-content">
                    <div class="group-tags">
                        <span class="group-tag">Virat Kohli</span>
                        <span class="group-tag location">Bangalore</span>
                    </div>
                    <h3 class="group-title">Backyard Runners</h3>
                    <p>Advanced running community exploring challenging terrains with safety protocols and support by Virat Kohli.</p>
                    <div class="group-meta">
                        <div class="group-members">
                            <i class="fas fa-user-friends"></i>
                            <span>62 Members</span>
                        </div>
                        <a href="joinGroup" class="group-join">Join Group</a>
                    </div>
                </div>
            </div>
            
            <div class="group-card" data-aos="fade-up" data-aos-delay="300">
                <div class="group-image">
<div class="group-image">
    <img src="${pageContext.request.contextPath}/images/Palki.jpeg"
         alt="Group Image"
         style="width:100%; height:100%; object-fit:cover;">
</div>

                </div>
                <div class="group-content">
                    <div class="group-tags">
                        <span class="group-tag">Palki Sharma</span>
                        <span class="group-tag location">Delhi</span>
                    </div>
                    <h3 class="group-title">Run with media</h3>
                    <p>Early morning running community with focus on discipline, sunrise routes, and post-run networking with Palki Sharma.</p>
                    <div class="group-meta">
                        <div class="group-members">
                            <i class="fas fa-user-friends"></i>
                            <span>120 Members</span>
                        </div>
                        <a href="joinGroup" class="group-join">Join Group</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===== CTA SECTION ===== -->
<section class="cta-section" id="cta">
    <div class="container">
        <div data-aos="fade-up">
            <h2 class="cta-title">Ready to Lead the Pack?</h2>
            <p class="cta-description">Join India's fastest growing premium running community. Whether you're looking to create an exclusive group or join elite runners, RunElite provides the platform for serious runners.</p>
            
            <div class="cta-buttons">
                <a href="createGroup" class="cta-button">
                    <i class="fas fa-crown"></i> Create Premium Group
                </a>
                <a href="joinGroup" class="cta-button-secondary">
                    <i class="fas fa-search"></i> Explore Elite Communities
                </a>
            </div>
        </div>
    </div>
</section>

<!-- ===== PROFESSIONAL FOOTER ===== -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div>
                <a href="Home" class="footer-logo">RunElite</a>
                <p class="footer-description">India's premier running community platform connecting elite runners, coaches, and fitness enthusiasts for premium running experiences.</p>
                <div class="social-links">
                    <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            
            <div>
                <h3 class="footer-heading">Platform</h3>
                <ul class="footer-links">
                    <li><a href="Home">Home</a></li>
                    <li><a href="#features">Features</a></li>
                    <li><a href="#groups">Running Groups</a></li>
                    <li><a href="events">Events</a></li>
                    <li><a href="blog">Blog</a></li>
                </ul>
            </div>
            
            <div>
                <h3 class="footer-heading">Resources</h3>
                <ul class="footer-links">
                    <li><a href="createGroup">Create Group</a></li>
                    <li><a href="joinGroup">Join Group</a></li>
                    <li><a href="blog">Safety Guidelines</a></li>
                    <li><a href="events">Training Plans</a></li>
                    <li><a href="explore">Route Library</a></li>
                </ul>
            </div>
            
            <div>
                <h3 class="footer-heading">Enterprise</h3>
                <ul class="footer-links">
                    <li><a href="contact">About Us</a></li>
                    <li><a href="contact">Contact</a></li>
                    <li><a href="contact">Privacy Policy</a></li>
                    <li><a href="contact">Terms of Service</a></li>
                    <li><a href="contact">Partnerships</a></li>
                </ul>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; 2026 RunElite Technologies Pvt. Ltd. All Rights Reserved. | Premium Running Community Platform</p>
        </div>
    </div>
</footer>

<!-- ===== EXTERNAL LIBRARIES ===== -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- ===== PROFESSIONAL JAVASCRIPT ===== -->
<script>
    // Initialize AOS Animation Library
    AOS.init({
        duration: 1000,
        once: true,
        offset: 100
    });
    
    // Header scroll effect
    window.addEventListener('scroll', function() {
        const header = document.getElementById('header');
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });
    
    // Animated counter for stats
    function animateCounter(element, target, duration = 2000) {
        let start = 0;
        const increment = target / (duration / 16);
        const timer = setInterval(() => {
            start += increment;
            if (start >= target) {
                element.textContent = target.toLocaleString();
                clearInterval(timer);
            } else {
                element.textContent = Math.floor(start).toLocaleString();
            }
        }, 16);
    }
    
    // Initialize counters when in view
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const statNumbers = document.querySelectorAll('.stat-number');
                statNumbers.forEach(stat => {
                    const target = parseInt(stat.getAttribute('data-count'));
                    animateCounter(stat, target);
                });
                observer.disconnect();
            }
        });
    }, { threshold: 0.5 });
    
    observer.observe(document.getElementById('hero'));
    
    // Mobile menu toggle
    const mobileMenuBtn = document.getElementById('mobileMenuBtn');
    const navLinks = document.querySelector('.nav-links');
    
    if (mobileMenuBtn) {
        mobileMenuBtn.addEventListener('click', function() {
            navLinks.style.display = navLinks.style.display === 'flex' ? 'none' : 'flex';
            navLinks.style.flexDirection = 'column';
            navLinks.style.position = 'absolute';
            navLinks.style.top = '80px';
            navLinks.style.left = '0';
            navLinks.style.width = '100%';
            navLinks.style.background = 'white';
            navLinks.style.padding = '30px';
            navLinks.style.boxShadow = '0 10px 30px rgba(0,0,0,0.1)';
        });
    }
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 100,
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // Floating elements animation enhancement
    window.addEventListener('mousemove', function(e) {
        const floatingElements = document.querySelectorAll('.floating-element');
        const x = e.clientX / window.innerWidth;
        const y = e.clientY / window.innerHeight;
        
        floatingElements.forEach((element, index) => {
            const speed = 0.5 + (index * 0.1);
            const xOffset = (x * 20 - 10) * speed;
            const yOffset = (y * 20 - 10) * speed;
            
            element.style.transform = `translate(${xOffset}px, ${yOffset}px)`;
        });
    });
</script>

</body>
</html>
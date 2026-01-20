<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Discover Elite Running Groups | RunElite</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Premium Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@400;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <style>
        /* ===== CSS RESET & VARIABLES ===== */
        :root {
            --primary: #1abc9c;
            --primary-dark: #16a085;
            --secondary: #2c3e50;
            --accent: #e74c3c;
            --gradient: linear-gradient(135deg, var(--primary) 0%, #3498db 100%);
            --gradient-dark: linear-gradient(135deg, var(--secondary) 0%, #1a252f 100%);
            --success: #10b981;
            --light: #f8f9fa;
            --dark: #1f2937;
            --gray: #6b7280;
            --shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 20px 60px rgba(0, 0, 0, 0.2);
            --shadow-hover: 0 30px 80px rgba(0, 0, 0, 0.3);
            --transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            --border-radius: 20px;
            --card-radius: 16px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
            color: var(--dark);
            min-height: 100vh;
            padding: 0;
            position: relative;
            overflow-x: hidden;
        }

        /* ===== ANIMATED BACKGROUND ===== */
        .animated-background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }

        .floating-element {
            position: absolute;
            background: var(--primary);
            border-radius: 50%;
            opacity: 0.05;
            animation: float 20s infinite linear;
        }

        @keyframes float {
            0% {
                transform: translateY(100vh) rotate(0deg);
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
            }
        }

        /* ===== HEADER ===== */
        .header {
            background: white;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
            padding: 20px 0;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: var(--secondary);
            text-decoration: none;
            transition: var(--transition);
        }

        .logo:hover {
            transform: translateY(-2px);
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            background: var(--gradient);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 20px;
        }

        .header-actions {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .create-group-btn {
            background: var(--gradient);
            color: white;
            padding: 12px 28px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
            box-shadow: 0 8px 25px rgba(26, 188, 156, 0.3);
        }

        .create-group-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 35px rgba(26, 188, 156, 0.4);
        }

        /* ===== MAIN CONTAINER ===== */
        .main-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 40px;
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* ===== PAGE HEADER ===== */
        .page-header {
            text-align: center;
            margin-bottom: 50px;
            padding: 30px 0;
        }

        .page-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 48px;
            font-weight: 800;
            margin-bottom: 15px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: slideInDown 0.8s ease-out;
        }

        .page-subtitle {
            font-size: 18px;
            color: var(--gray);
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
        }

        /* ===== SEARCH SECTION ===== */
        .search-section {
            max-width: 600px;
            margin: 0 auto 60px;
            position: relative;
            animation: slideInUp 0.8s ease-out;
        }

        @keyframes slideInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .search-container {
            display: flex;
            background: white;
            border-radius: 50px;
            padding: 5px;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }

        .search-container:focus-within {
            box-shadow: var(--shadow-hover);
            transform: translateY(-3px);
        }

        .search-input {
            flex: 1;
            padding: 20px 30px;
            border: none;
            border-radius: 50px 0 0 50px;
            font-size: 16px;
            font-family: 'Poppins', sans-serif;
            background: transparent;
            outline: none;
        }

        .search-input::placeholder {
            color: var(--gray);
            opacity: 0.7;
        }

        .search-button {
            padding: 0 40px;
            background: var(--gradient);
            border: none;
            border-radius: 50px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 10px;
            transition: var(--transition);
        }

        .search-button:hover {
            transform: scale(1.05);
        }

        .search-hint {
            text-align: center;
            margin-top: 15px;
            color: var(--gray);
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        /* ===== GROUPS GRID ===== */
        .groups-container {
            margin-bottom: 60px;
        }

        .groups-count {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            padding: 20px 0;
            border-bottom: 2px solid rgba(0, 0, 0, 0.05);
        }

        .count-badge {
            background: var(--gradient);
            color: white;
            padding: 8px 20px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .filter-options {
            display: flex;
            gap: 10px;
        }

        .filter-btn {
            padding: 10px 20px;
            background: white;
            border: 2px solid #e5e7eb;
            border-radius: 50px;
            font-size: 14px;
            font-weight: 600;
            color: var(--dark);
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .groups-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(380px, 1fr));
            gap: 30px;
        }

        /* ===== GROUP CARD ===== */
        .group-card {
            background: white;
            border-radius: var(--card-radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            position: relative;
            animation: cardAppear 0.6s ease-out;
            animation-fill-mode: both;
        }

        @keyframes cardAppear {
            from {
                opacity: 0;
                transform: translateY(30px) scale(0.95);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .group-card:hover {
            transform: translateY(-15px) scale(1.02);
            box-shadow: var(--shadow-hover);
        }

        .group-card:hover .card-image {
            transform: scale(1.1);
        }

        .card-image {
            height: 180px;
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            position: relative;
            overflow: hidden;
            transition: transform 0.6s ease;
        }

        .card-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, transparent, rgba(255, 255, 255, 0.1), transparent);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }

        .group-card:hover .card-image::before {
            transform: translateX(100%);
        }

        .card-badge {
            position: absolute;
            top: 20px;
            right: 20px;
            background: rgba(255, 255, 255, 0.95);
            color: var(--primary);
            padding: 8px 16px;
            border-radius: 50px;
            font-size: 12px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 6px;
            backdrop-filter: blur(10px);
        }

        .card-content {
            padding: 30px;
            position: relative;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        .group-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 22px;
            font-weight: 700;
            color: var(--secondary);
            margin-bottom: 5px;
            line-height: 1.3;
        }

        .group-location {
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--primary);
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .group-stats {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 25px;
        }

        .stat-item {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .stat-icon {
            width: 36px;
            height: 36px;
            background: rgba(26, 188, 156, 0.1);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
        }

        .stat-content {
            display: flex;
            flex-direction: column;
        }

        .stat-value {
            font-weight: 700;
            font-size: 16px;
            color: var(--dark);
        }

        .stat-label {
            font-size: 12px;
            color: var(--gray);
        }

        .group-creator {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 15px 0;
            border-top: 1px solid #f0f0f0;
            margin-top: 20px;
        }

        .creator-avatar {
            width: 40px;
            height: 40px;
            background: var(--gradient);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 600;
        }

        .creator-info {
            display: flex;
            flex-direction: column;
        }

        .creator-label {
            font-size: 12px;
            color: var(--gray);
        }

        .creator-name {
            font-weight: 600;
            color: var(--dark);
        }

        .card-actions {
            display: flex;
            gap: 10px;
            margin-top: 25px;
        }

        .action-btn {
            flex: 1;
            padding: 14px 20px;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }

        .btn-join {
            background: var(--gradient);
            color: white;
            box-shadow: 0 8px 20px rgba(26, 188, 156, 0.3);
        }

        .btn-join:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(26, 188, 156, 0.4);
        }

        .btn-members {
            background: white;
            color: var(--secondary);
            border: 2px solid #e5e7eb;
        }

        .btn-members:hover {
            background: #f8f9fa;
            border-color: var(--primary);
            color: var(--primary);
            transform: translateY(-3px);
        }

        /* ===== EMPTY STATE ===== */
        .empty-state {
            text-align: center;
            padding: 80px 20px;
            animation: fadeIn 0.8s ease-out;
        }

        .empty-icon {
            width: 100px;
            height: 100px;
            background: linear-gradient(135deg, rgba(26, 188, 156, 0.1), rgba(52, 152, 219, 0.1));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 30px;
            font-size: 40px;
            color: var(--primary);
        }

        .empty-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 28px;
            font-weight: 700;
            color: var(--secondary);
            margin-bottom: 15px;
        }

        .empty-description {
            font-size: 16px;
            color: var(--gray);
            max-width: 500px;
            margin: 0 auto 30px;
            line-height: 1.6;
        }

        /* ===== FOOTER ===== */
        .footer {
            background: var(--secondary);
            color: white;
            padding: 60px 0 30px;
            margin-top: 80px;
        }

        .footer-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 40px;
            text-align: center;
        }

        .footer-text {
            color: rgba(255, 255, 255, 0.7);
            font-size: 14px;
            margin-top: 20px;
        }

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1024px) {
            .groups-grid {
                grid-template-columns: repeat(auto-fill, minmax(340px, 1fr));
            }
            
            .main-container {
                padding: 30px;
            }
        }

        @media (max-width: 768px) {
            .header-container {
                padding: 0 20px;
            }
            
            .main-container {
                padding: 20px;
            }
            
            .page-title {
                font-size: 36px;
            }
            
            .groups-grid {
                grid-template-columns: 1fr;
            }
            
            .groups-count {
                flex-direction: column;
                gap: 20px;
                align-items: flex-start;
            }
            
            .filter-options {
                width: 100%;
                overflow-x: auto;
                padding-bottom: 10px;
            }
            
            .search-container {
                flex-direction: column;
                border-radius: var(--border-radius);
                padding: 0;
                overflow: hidden;
            }
            
            .search-input {
                border-radius: 0;
                padding: 20px;
            }
            
            .search-button {
                border-radius: 0;
                padding: 20px;
                justify-content: center;
            }
        }

        @media (max-width: 480px) {
            .page-title {
                font-size: 28px;
            }
            
            .group-title {
                font-size: 20px;
            }
            
            .card-content {
                padding: 20px;
            }
            
            .card-actions {
                flex-direction: column;
            }
            
            .header-container {
                flex-direction: column;
                gap: 15px;
                padding: 15px;
            }
            
            .header-actions {
                width: 100%;
                justify-content: center;
            }
        }
    </style>
</head>

<body>

    <!-- Animated Background -->
    <div class="animated-background" id="animatedBackground"></div>

    <!-- Header -->
    <header class="header">
        <div class="header-container">
            <a href="Home" class="logo">
                <div class="logo-icon">
                    <i class="fas fa-running"></i>
                </div>
                <span>RunElite</span>
            </a>
            
            <div class="header-actions">
                <a href="createGroup" class="create-group-btn">
                    <i class="fas fa-plus-circle"></i> Create Group
                </a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-container">
        
        <!-- Page Header -->
        <div class="page-header">
            <h1 class="page-title">Discover Elite Running Groups</h1>
            <p class="page-subtitle">
                Join premium running communities led by experienced runners and coaches. 
                Find groups that match your pace, location, and schedule.
            </p>
        </div>

        <!-- Search Section -->
        <form class="search-section" method="get" action="joinGroup">
            <div class="search-container">
                <input type="text" 
                       name="location" 
                       class="search-input" 
                       placeholder="Search by city, neighborhood, or landmark..."
                       value="${location}">
                <button type="submit" class="search-button">
                    <i class="fas fa-search"></i> Search Groups
                </button>
            </div>
            <div class="search-hint">
                <i class="fas fa-lightbulb"></i>
                Try searching for cities like "Mumbai", "Bangalore", or "Delhi"
            </div>
        </form>

        <!-- Groups Container -->
        <div class="groups-container">
            
            <!-- Groups Count & Filters -->
            <div class="groups-count">
                <div class="count-badge">
                    <i class="fas fa-users"></i>
                    <c:choose>
                        <c:when test="${empty groups}">
                            No Groups Found
                        </c:when>
                        <c:otherwise>
                            ${groups.size()} Active Groups
                        </c:otherwise>
                    </c:choose>
                </div>
                
                <div class="filter-options">
                    <button class="filter-btn active" data-filter="all">
                        <i class="fas fa-list"></i> All Groups
                    </button>
                    <button class="filter-btn" data-filter="morning">
                        <i class="fas fa-sun"></i> Morning
                    </button>
                    <button class="filter-btn" data-filter="evening">
                        <i class="fas fa-moon"></i> Evening
                    </button>
                    <button class="filter-btn" data-filter="premium">
                        <i class="fas fa-crown"></i> Premium
                    </button>
                </div>
            </div>

            <!-- Groups Grid -->
            <div class="groups-grid" id="groupsGrid">
                <c:choose>
                    <c:when test="${empty groups}">
                        <!-- Empty State -->
                        <div class="empty-state">
                            <div class="empty-icon">
                                <i class="fas fa-search"></i>
                            </div>
                            <h3 class="empty-title">No Running Groups Found</h3>
                            <p class="empty-description">
                                We couldn't find any groups matching your search criteria. 
                                Try adjusting your search or be the first to create a group in your area!
                            </p>
                            <a href="createGroup" class="create-group-btn" style="display: inline-flex;">
                                <i class="fas fa-plus-circle"></i> Create First Group
                            </a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <!-- Groups Cards -->
                        <c:forEach var="g" items="${groups}" varStatus="status">
                            <div class="group-card animate__animated animate__fadeInUp"
                                 style="animation-delay: ${status.index * 0.1}s;">
                                
                               <div class="card-badge">
								    <i class="fas fa-users"></i>
								    <c:choose>
								        <c:when test="${memberCount[g.id] != null}">
								            ${memberCount[g.id]} Members
								        </c:when>
								        <c:otherwise>
								            0 Members
								        </c:otherwise>
								    </c:choose>
								</div>

                                
                                <!-- Card Content -->
                                <div class="card-content">
                                    <!-- Card Header -->
                                    <div class="card-header">
                                        <div>
                                            <h3 class="group-title">${g.groupName}</h3>
                                            <div class="group-location">
                                                <i class="fas fa-map-marker-alt"></i> ${g.location}
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Group Stats -->
                                    <div class="group-stats">
                                        <div class="stat-item">
                                            <div class="stat-icon">
                                                <i class="fas fa-clock"></i>
                                            </div>
                                            <div class="stat-content">
                                                <span class="stat-value">${g.runTime}</span>
                                                <span class="stat-label">Run Time</span>
                                            </div>
                                        </div>
                                        
                                        <div class="stat-item">
                                            <div class="stat-icon">
                                                <i class="fas fa-route"></i>
                                            </div>
                                            <div class="stat-content">
                                                <span class="stat-value">${g.distanceKm} KM</span>
                                                <span class="stat-label">Distance</span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Group Creator -->
                                    <div class="group-creator">
                                        <div class="creator-avatar">
                                            ${g.createdBy.charAt(0)}
                                        </div>
                                        <div class="creator-info">
                                            <span class="creator-label">Group Leader</span>
                                            <span class="creator-name">${g.createdBy}</span>
                                        </div>
                                    </div>
                                    
                                    <!-- Action Buttons -->
                                    <div class="card-actions">
                                        <a href="${pageContext.request.contextPath}/join/${g.id}" 
                                           class="action-btn btn-join">
                                            <i class="fas fa-sign-in-alt"></i> Join Group
                                        </a>
                                        
                                        <a href="${pageContext.request.contextPath}/group/${g.id}/verify" 
                                           class="action-btn btn-members">
                                            <i class="fas fa-eye"></i> View Members
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <p class="footer-text">
                &copy; 2026 RunElite Technologies Pvt. Ltd. All Rights Reserved. 
                Join India's fastest growing premium running community.
            </p>
        </div>
    </footer>

    <!-- JavaScript -->
    <script>
        // Create animated background elements
        function createBackgroundElements() {
            const container = document.getElementById('animatedBackground');
            const elementCount = 12;
            
            for (let i = 0; i < elementCount; i++) {
                const element = document.createElement('div');
                element.className = 'floating-element';
                
                // Random properties
                const size = Math.random() * 60 + 20;
                const posX = Math.random() * 100;
                const delay = Math.random() * 20;
                const duration = Math.random() * 20 + 20;
                const opacity = Math.random() * 0.05 + 0.02;
                const color = `rgba(26, 188, 156, ${opacity})`;
                
                element.style.width = size + 'px';
                element.style.height = size + 'px';
                element.style.left = posX + 'vw';
                element.style.background = color;
                element.style.animationDelay = delay + 's';
                element.style.animationDuration = duration + 's';

                
                container.appendChild(element);
            }
        }

        // Filter groups functionality
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                // Update active state
                document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
                this.classList.add('active');
                
                const filter = this.dataset.filter;
                const cards = document.querySelectorAll('.group-card');
                
                cards.forEach((card, index) => {
                    if (filter === 'all') {
                        card.style.display = 'block';
                        setTimeout(() => {
                            card.style.opacity = '1';
                            card.style.transform = 'translateY(0) scale(1)';
                        }, index * 50);
                    } else {
                        // In a real implementation, you would filter based on actual data
                        // This is just for demonstration
                        card.style.opacity = '0.5';
                        card.style.transform = 'translateY(20px) scale(0.95)';
                        
                        setTimeout(() => {
                            card.style.display = 'block';
                            card.style.opacity = '1';
                            card.style.transform = 'translateY(0) scale(1)';
                        }, index * 50);
                    }
                });
            });
        });

        // Card hover animation enhancement
        document.querySelectorAll('.group-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.zIndex = '10';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.zIndex = '1';
            });
        });

        // Search input focus animation
        const searchInput = document.querySelector('.search-input');
        const searchContainer = document.querySelector('.search-container');
        
        if (searchInput) {
            searchInput.addEventListener('focus', function() {
                searchContainer.style.transform = 'translateY(-5px)';
                searchContainer.style.boxShadow = '0 30px 80px rgba(0, 0, 0, 0.25)';
            });
            
            searchInput.addEventListener('blur', function() {
                searchContainer.style.transform = 'translateY(0)';
                searchContainer.style.boxShadow = 'var(--shadow)';
            });
            
            // Auto-focus search if it has value
            if (searchInput.value) {
                setTimeout(() => {
                    searchInput.focus();
                }, 500);
            }
        }

        // Initialize on load
        document.addEventListener('DOMContentLoaded', function() {
            createBackgroundElements();
            
            // Stagger card animations
            const cards = document.querySelectorAll('.group-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
            });
            
            // Add typing effect to search placeholder
            if (searchInput && !searchInput.value) {
                const placeholders = [
                    "Search by city, neighborhood, or landmark...",
                    "Try 'Mumbai morning runs'...",
                    "Search 'Bangalore marathon training'...",
                    "Find 'Delhi weekend running groups'..."
                ];
                
                let currentIndex = 0;
                let charIndex = 0;
                let isDeleting = false;
                
                function typeEffect() {
                    const currentPlaceholder = placeholders[currentIndex];
                    
                    if (isDeleting) {
                        searchInput.placeholder = currentPlaceholder.substring(0, charIndex - 1);
                        charIndex--;
                    } else {
                        searchInput.placeholder = currentPlaceholder.substring(0, charIndex + 1);
                        charIndex++;
                    }
                    
                    if (!isDeleting && charIndex === currentPlaceholder.length) {
                        isDeleting = true;
                        setTimeout(typeEffect, 2000);
                    } else if (isDeleting && charIndex === 0) {
                        isDeleting = false;
                        currentIndex = (currentIndex + 1) % placeholders.length;
                        setTimeout(typeEffect, 500);
                    } else {
                        setTimeout(typeEffect, isDeleting ? 50 : 100);
                    }
                }
                
                setTimeout(typeEffect, 1000);
            }
            
            // Add scroll animation to header
            let lastScroll = 0;
            window.addEventListener('scroll', function() {
                const currentScroll = window.pageYOffset;
                const header = document.querySelector('.header');
                
                if (currentScroll > lastScroll && currentScroll > 100) {
                    header.style.transform = 'translateY(-100%)';
                } else {
                    header.style.transform = 'translateY(0)';
                }
                
                lastScroll = currentScroll;
            });
        });
    </script>
</body>
</html>
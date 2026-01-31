<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Group Members Dashboard | RunElite</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Premium Fonts & Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@400;600;700;800&display=swap" rel="stylesheet">
    
    <style>
    
        /* ===== CSS RESET & VARIABLES ===== */
        :root {
            --primary: #1abc9c;
            --primary-dark: #16a085;
            --secondary: #2c3e50;
            --gradient: linear-gradient(135deg, var(--primary) 0%, #3498db 100%);
            --light: #f8f9fa;
            --dark: #1f2937;
            --gray: #6b7280;
            --shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 20px 60px rgba(0, 0, 0, 0.15);
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            --border-radius: 16px;
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
            padding: 30px;
        }

        /* ===== HEADER SECTION ===== */
        .dashboard-header {
            max-width: 1200px;
            margin: 0 auto 40px;
            text-align: center;
            animation: fadeInDown 0.8s ease-out;
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .header-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 42px;
            font-weight: 800;
            color: var(--secondary);
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
        }

        .header-title span {
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .title-icon {
            width: 50px;
            height: 50px;
            background: var(--gradient);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
        }

        .header-subtitle {
            font-size: 18px;
            color: var(--gray);
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
        }

        /* ===== GROUP INFO CARD ===== */
        .group-info-card {
            max-width: 1200px;
            margin: 0 auto 50px;
            background: white;
            border-radius: var(--border-radius);
            padding: 40px;
            box-shadow: var(--shadow);
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            animation: slideUp 0.6s ease-out 0.2s both;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .info-item {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .info-icon {
            width: 50px;
            height: 50px;
            background: rgba(26, 188, 156, 0.1);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 22px;
        }

        .info-content {
            display: flex;
            flex-direction: column;
        }

        .info-label {
            font-size: 13px;
            color: var(--gray);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 5px;
        }

        .info-value {
            font-size: 18px;
            font-weight: 600;
            color: var(--dark);
        }

        .member-count {
            background: var(--gradient);
            color: white;
            padding: 8px 20px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 14px;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        /* ===== MEMBERS TABLE CONTAINER ===== */
        .table-container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            animation: slideUp 0.6s ease-out 0.4s both;
        }

        /* ===== TABLE HEADER ===== */
        .table-header {
            background: var(--gradient);
            padding: 25px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }

        .table-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 20px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .table-actions {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .export-btn {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .export-btn:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
        }

        .search-box {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 8px;
            padding: 10px 15px;
            color: white;
            font-family: 'Poppins', sans-serif;
            width: 200px;
        }

        .search-box::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        /* ===== TABLE STYLES ===== */
        .members-table {
            width: 100%;
            border-collapse: collapse;
        }

        .members-table thead {
            background: #f8f9fa;
        }

        .members-table th {
            padding: 20px 25px;
            text-align: left;
            font-weight: 600;
            color: var(--secondary);
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-bottom: 2px solid #e5e7eb;
            position: relative;
        }

        .members-table th::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: width 0.3s ease;
        }

        .members-table th:hover::after {
            width: 100%;
        }

        .members-table tbody tr {
            border-bottom: 1px solid #f0f0f0;
            transition: var(--transition);
        }

        .members-table tbody tr:hover {
            background: #f8fafc;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .members-table td {
            padding: 20px 25px;
            color: var(--dark);
            position: relative;
        }

        .members-table td:first-child {
            font-weight: 600;
            color: var(--primary);
            font-size: 16px;
        }

        .member-avatar {
            width: 40px;
            height: 40px;
            background: var(--gradient);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 600;
            margin-right: 12px;
        }

        .member-name {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .member-contact {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .member-email, .member-phone {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 13px;
            color: var(--gray);
        }

        .member-email i, .member-phone i {
            color: var(--primary);
            width: 16px;
        }

        .member-age {
            font-weight: 600;
            color: var(--primary);
            background: rgba(26, 188, 156, 0.1);
            padding: 6px 12px;
            border-radius: 50px;
            display: inline-block;
        }

        .join-date {
            color: var(--gray);
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .join-date i {
            color: var(--primary);
        }

        /* ===== EMPTY STATE ===== */
        .empty-state {
            text-align: center;
            padding: 80px 40px;
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

        .invite-btn {
            background: var(--gradient);
            color: white;
            padding: 14px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: var(--transition);
            box-shadow: 0 10px 30px rgba(26, 188, 156, 0.3);
        }

        .invite-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(26, 188, 156, 0.4);
        }

        /* ===== BACK BUTTON ===== */
        .back-container {
            max-width: 1200px;
            margin: 50px auto 0;
            text-align: center;
        }

        .back-btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            background: white;
            color: var(--secondary);
            padding: 16px 35px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            box-shadow: var(--shadow);
            border: 2px solid #e5e7eb;
        }

        .back-btn:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }

        /* ===== PAGINATION ===== */
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            padding: 25px;
            background: #f8f9fa;
            border-top: 1px solid #e5e7eb;
        }

        .page-btn {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            color: var(--dark);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
        }

        .page-btn:hover, .page-btn.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .page-info {
            color: var(--gray);
            font-size: 14px;
            margin: 0 15px;
        }
		        
		        	/* ===== HOME ICON BUTTON ===== */
		.home-btn {
		    position: fixed;
		    top: 25px;
		    left: 25px;
		    width: 52px;
		    height: 52px;
		    background: rgba(255, 255, 255, 0.2);
		    backdrop-filter: blur(12px);
		    border-radius: 50%;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    color: white;
		    font-size: 22px;
		    text-decoration: none;
		    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
		    transition: var(--transition);
		    z-index: 999;
		    border: 1px solid rgba(255, 255, 255, 0.3);
		}
		
		.home-btn:hover {
		    background: var(--gradient);
		    transform: scale(1.15);
		    box-shadow: 0 18px 40px rgba(26, 188, 156, 0.6);
		}
        

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1024px) {
            .group-info-card {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .header-title {
                font-size: 36px;
            }
        }

        @media (max-width: 768px) {
            body {
                padding: 20px;
            }
            
            .header-title {
                font-size: 30px;
                flex-direction: column;
                gap: 10px;
            }
            
            .group-info-card {
                grid-template-columns: 1fr;
                padding: 30px;
                gap: 20px;
            }
            
            .table-header {
                flex-direction: column;
                gap: 15px;
                padding: 20px;
            }
            
            .search-box {
                width: 100%;
            }
            
            .members-table {
                display: block;
                overflow-x: auto;
            }
            
            .members-table th,
            .members-table td {
                padding: 15px;
            }
            
            .member-name {
                flex-direction: column;
                align-items: flex-start;
                gap: 5px;
            }
            
            .member-contact {
                margin-left: 0;
            }
        }

        @media (max-width: 480px) {
            .header-title {
                font-size: 26px;
            }
            
            .header-subtitle {
                font-size: 16px;
            }
            
            .info-item {
                flex-direction: column;
                text-align: center;
                gap: 10px;
            }
            
            .back-btn {
                width: 100%;
                justify-content: center;
            }
            
            .empty-title {
                font-size: 24px;
            }
            
            .empty-icon {
                width: 80px;
                height: 80px;
                font-size: 32px;
            }
        }

        /* ===== ANIMATION FOR TABLE ROWS ===== */
        .members-table tbody tr {
            animation: fadeInRow 0.5s ease-out;
            animation-fill-mode: both;
        }

        @keyframes fadeInRow {
            from {
                opacity: 0;
                transform: translateX(-20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* ===== STAGGER ANIMATION DELAY ===== */
        .members-table tbody tr:nth-child(1) { animation-delay: 0.1s; }
        .members-table tbody tr:nth-child(2) { animation-delay: 0.2s; }
        .members-table tbody tr:nth-child(3) { animation-delay: 0.3s; }
        .members-table tbody tr:nth-child(4) { animation-delay: 0.4s; }
        .members-table tbody tr:nth-child(5) { animation-delay: 0.5s; }
        .members-table tbody tr:nth-child(6) { animation-delay: 0.6s; }
        .members-table tbody tr:nth-child(7) { animation-delay: 0.7s; }
        .members-table tbody tr:nth-child(8) { animation-delay: 0.8s; }
        .members-table tbody tr:nth-child(9) { animation-delay: 0.9s; }
        .members-table tbody tr:nth-child(10) { animation-delay: 1.0s; }
    </style>
</head>

<body>

				<!-- Home Button -->
	<a href="Home"  class="home-btn" title="Go to Home">
	    <i class="fas fa-house"></i>
	</a>

    <!-- Dashboard Header -->
    <div class="dashboard-header">
        <h1 class="header-title">
            <div class="title-icon">
                <i class="fas fa-users"></i>
            </div>
            <span>${group.groupName}</span> Members Dashboard
        </h1>
        <p class="header-subtitle">
            View and manage all members of your running group. Track participation and engagement.
        </p>
    </div>

    <!-- Group Information Card -->
    <div class="group-info-card">
        <div class="info-item">
            <div class="info-icon">
                <i class="fas fa-map-marker-alt"></i>
            </div>
            <div class="info-content">
                <span class="info-label">Location</span>
                <span class="info-value">${group.location}</span>
            </div>
        </div>
        
        <div class="info-item">
            <div class="info-icon">
                <i class="fas fa-clock"></i>
            </div>
            <div class="info-content">
                <span class="info-label">Run Time</span>
                <span class="info-value">${group.runTime}</span>
            </div>
        </div>
        
        <div class="info-item">
            <div class="info-icon">
                <i class="fas fa-user-tie"></i>
            </div>
            <div class="info-content">
                <span class="info-label">Group Leader</span>
                <span class="info-value">${group.createdBy}</span>
            </div>
        </div>
        
        <div class="info-item">
            <div class="info-icon">
                <i class="fas fa-users"></i>
            </div>
            <div class="info-content">
                <span class="info-label">Total Members</span>
                <span class="info-value">
                    <span class="member-count">
                        <i class="fas fa-user-friends"></i> ${members.size()}
                    </span>
                </span>
            </div>
        </div>
    </div>

    <!-- Members Table Container -->
    <div class="table-container">
        
        <!-- Table Header with Actions -->
        <div class="table-header">
            <div class="table-title">
                <i class="fas fa-list"></i> Members List
            </div>
            <div class="table-actions">
                <input type="text" class="search-box" placeholder="Search members..." id="searchInput">
                <button class="export-btn" onclick="exportMembers()">
                    <i class="fas fa-download"></i> Export
                </button>
            </div>
        </div>

        <!-- Members Table -->
        <c:choose>
            <c:when test="${members.size() == 0}">
                <!-- Empty State -->
                <div class="empty-state">
                    <div class="empty-icon">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <h3 class="empty-title">No Members Yet</h3>
                    <p class="empty-description">
                        Be the first to invite runners to join your group. 
                        Share the group details and start building your running community!
                    </p>
                    <a href="${pageContext.request.contextPath}/joinGroup" class="invite-btn">
                        <i class="fas fa-share-alt"></i> Invite Members
                    </a>
                </div>
            </c:when>
            <c:otherwise>
                <!-- Members Table -->
                <table class="members-table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Member</th>
                            <th>Contact Info</th>
                            <th>Age</th>
                            <th>Joined Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="m" items="${members}" varStatus="i">
                            <tr>
                                <td>${i.count}</td>
                                <td>
                                    <div class="member-name">
                                        <div class="member-avatar">
                                            ${m.runner.name.charAt(0)}
                                        </div>
                                        <span>${m.runner.name}</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="member-contact">
                                        <div class="member-email">
                                            <i class="fas fa-envelope"></i> ${m.runner.email}
                                        </div>
                                        <div class="member-phone">
                                            <i class="fas fa-phone"></i> ${m.runner.phone}
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="member-age">${m.runner.age} yrs</span>
                                </td>
                                <td>
                                    <div class="join-date">
                                        <i class="fas fa-calendar-check"></i> ${m.joinDate}
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <!-- Pagination (Optional - can be implemented with backend) -->
                <div class="pagination">
                    <a href="#" class="page-btn">
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a href="#" class="page-btn active">1</a>
                    <span class="page-info">Page 1 of 1</span>
                    <a href="#" class="page-btn">
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Back Button -->
    <div class="back-container">
        <a href="${pageContext.request.contextPath}/joinGroup" class="back-btn">
            <i class="fas fa-arrow-left"></i> Back to All Groups
        </a>
    </div>

    <!-- JavaScript -->
    <script>
        // Search functionality
        document.getElementById('searchInput')?.addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const rows = document.querySelectorAll('.members-table tbody tr');
            
            rows.forEach(row => {
                const text = row.textContent.toLowerCase();
                row.style.display = text.includes(searchTerm) ? '' : 'none';
            });
        });

        // Export functionality (simulated)
       function exportMembers() {
    const table = document.querySelector(".members-table");
    if (!table) {
        alert("No data to export");
        return;
    }

    let csv = [];
    const rows = table.querySelectorAll("tr");

    rows.forEach(function(row) {
        const cols = row.querySelectorAll("th, td");
        let rowData = [];

        cols.forEach(function(col) {
            let text = col.innerText;
            text = text.replace(/\s+/g, " ").trim();

            // JSP-safe escaping (NO regex with quotes)
            text = '"' + text.split('"').join('""') + '"';

            rowData.push(text);
        });

        csv.push(rowData.join(","));
    });

    const csvContent = csv.join("\n");
    const blob = new Blob([csvContent], { type: "text/csv;charset=utf-8;" });
    const url = URL.createObjectURL(blob);

    const link = document.createElement("a");
    link.href = url;
    link.download = "group_members.csv";
    document.body.appendChild(link);
    link.click();

    document.body.removeChild(link);
    URL.revokeObjectURL(url);
}

        // Row hover animation enhancement
        document.querySelectorAll('.members-table tbody tr').forEach(row => {
            row.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-4px)';
                this.style.boxShadow = '0 10px 25px rgba(0, 0, 0, 0.1)';
                this.style.transition = 'transform 0.3s ease, box-shadow 0.3s ease';
            });
            
            row.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0)';
                this.style.boxShadow = 'none';
            });
        });

        // Initialize on load
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation to header icon
            const titleIcon = document.querySelector('.title-icon');
            setInterval(() => {
                titleIcon.style.transform = 'scale(1.1) rotate(5deg)';
                titleIcon.style.transition = 'transform 0.3s ease';
                
                setTimeout(() => {
                    titleIcon.style.transform = 'scale(1) rotate(0deg)';
                }, 300);
            }, 3000);
            
            // Auto-focus search if there are many members
            if (${members.size()} > 10) {
                setTimeout(() => {
                    const searchInput = document.getElementById('searchInput');
                    if (searchInput) searchInput.focus();
                }, 1000);
            }
            
            // Add subtle animation to member count
            const memberCount = document.querySelector('.member-count');
            if (memberCount) {
                setInterval(() => {
                    memberCount.style.transform = 'scale(1.05)';
                    memberCount.style.transition = 'transform 0.3s ease';
                    
                    setTimeout(() => {
                        memberCount.style.transform = 'scale(1)';
                    }, 300);
                }, 2000);
            }
        });
    </script>
</body>
</html>
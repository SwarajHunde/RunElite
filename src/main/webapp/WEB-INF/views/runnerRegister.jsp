<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Elite Runner Registration | Premium Running Community</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Join exclusive running community. Professional registration for elite runners.">
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <style>
        :root {
            --primary: #10b981;
            --primary-dark: #059669;
            --secondary: #1e293b;
            --accent: #3b82f6;
            --light: #f8fafc;
            --dark: #0f172a;
            --gradient: linear-gradient(135deg, var(--primary) 0%, var(--accent) 100%);
            --gradient-dark: linear-gradient(135deg, var(--secondary) 0%, #334155 100%);
            --shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
            --shadow-lg: 0 30px 60px rgba(0, 0, 0, 0.12);
            --shadow-xl: 0 40px 80px rgba(0, 0, 0, 0.16);
            --radius: 16px;
            --radius-sm: 12px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            min-height: 100vh;
            background: var(--dark);
            color: var(--light);
            overflow-x: hidden;
            position: relative;
        }

        /* Background Image */
        .background-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .background-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.15;
            filter: brightness(0.3) contrast(1.2);
        }

        /* Container */
        .container {
            display: flex;
            min-height: 100vh;
            position: relative;
            z-index: 1;
        }

        /* Left Panel - Information */
        .info-panel {
            flex: 1;
            background: rgba(30, 41, 59, 0.85);
            padding: 60px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            overflow: hidden;
            backdrop-filter: blur(10px);
        }

        .info-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
            margin: 0 auto;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 50px;
            font-size: 28px;
            font-weight: 800;
            color: white;
        }

        .logo-icon {
            width: 50px;
            height: 50px;
            background: var(--gradient);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .info-title {
            font-family: 'Poppins', sans-serif;
            font-size: 48px;
            font-weight: 800;
            line-height: 1.2;
            margin-bottom: 24px;
            background: linear-gradient(135deg, var(--light) 0%, var(--primary) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .info-subtitle {
            font-size: 18px;
            color: #cbd5e1;
            margin-bottom: 50px;
            line-height: 1.6;
        }

        /* Stats */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-bottom: 50px;
        }

        .stat-card {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: var(--radius);
            padding: 24px;
            backdrop-filter: blur(10px);
            transition: var(--transition);
        }

        .stat-card:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
            background: rgba(16, 185, 129, 0.15);
        }

        .stat-number {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
            margin-bottom: 8px;
        }

        .stat-label {
            font-size: 14px;
            color: #94a3b8;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* Features */
        .features-list {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .feature-item {
            display: flex;
            align-items: center;
            gap: 16px;
            padding: 16px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: var(--radius-sm);
            border-left: 3px solid var(--primary);
            transition: var(--transition);
        }

        .feature-item:hover {
            background: rgba(255, 255, 255, 0.1);
            transform: translateX(8px);
        }

        .feature-icon {
            width: 40px;
            height: 40px;
            background: rgba(16, 185, 129, 0.2);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 18px;
        }

        /* Right Panel - Form */
        .form-panel {
            flex: 1;
            background: rgba(248, 250, 252, 0.95);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px;
            backdrop-filter: blur(10px);
        }

        .form-container {
            width: 100%;
            max-width: 480px;
            margin: 0 auto;
        }

        .form-header {
            margin-bottom: 40px;
            text-align: center;
        }

        .form-title {
            font-family: 'Poppins', sans-serif;
            font-size: 32px;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 12px;
        }

        .form-subtitle {
            color: #64748b;
            font-size: 16px;
        }

        /* Group Badge */
        .group-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 24px;
            background: rgba(16, 185, 129, 0.1);
            border: 1px solid rgba(16, 185, 129, 0.3);
            border-radius: 30px;
            margin-bottom: 30px;
            font-size: 14px;
            color: var(--primary);
            font-weight: 600;
        }

        /* Form Elements */
        .form-group {
            margin-bottom: 28px;
        }

        .form-label {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 10px;
            font-weight: 600;
            color: var(--secondary);
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .form-label i {
            color: var(--primary);
            font-size: 14px;
        }

        .input-wrapper {
            position: relative;
        }

        .form-input {
            width: 100%;
            padding: 16px 20px;
            padding-left: 50px;
            background: white;
            border: 2px solid #e2e8f0;
            border-radius: var(--radius-sm);
            color: var(--dark);
            font-size: 16px;
            font-family: 'Inter', sans-serif;
            transition: var(--transition);
        }

        .form-input::placeholder {
            color: #94a3b8;
        }

        .form-input:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.15);
        }

        .input-icon {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #94a3b8;
            font-size: 16px;
            transition: var(--transition);
        }

        .form-input:focus + .input-icon {
            color: var(--primary);
        }

        /* Progress Indicator */
        .progress-container {
            margin-bottom: 40px;
        }

        .progress-bar {
            height: 4px;
            background: #e2e8f0;
            border-radius: 2px;
            margin-bottom: 10px;
            overflow: hidden;
        }

        .progress-fill {
            height: 100%;
            width: 0%;
            background: var(--gradient);
            border-radius: 2px;
            transition: width 0.6s ease;
        }

        .progress-text {
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            color: #64748b;
        }

        /* Submit Button */
        .submit-btn {
            width: 100%;
            padding: 18px;
            background: var(--gradient);
            border: none;
            border-radius: var(--radius-sm);
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            transition: var(--transition);
            margin-top: 20px;
            position: relative;
            overflow: hidden;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .submit-btn:active {
            transform: translateY(0);
        }

        .submit-btn.loading {
            pointer-events: none;
            opacity: 0.8;
        }

        .loading-spinner {
            display: none;
            animation: spin 1s linear infinite;
        }

        .submit-btn.loading .button-text {
            display: none;
        }

        .submit-btn.loading .loading-spinner {
            display: inline-block;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Form Footer */
        .form-footer {
            text-align: center;
            margin-top: 30px;
            padding-top: 25px;
            border-top: 1px solid #e2e8f0;
            color: #64748b;
            font-size: 14px;
        }

        .form-footer a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        .secure-notice {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-top: 12px;
            padding: 8px 16px;
            background: rgba(16, 185, 129, 0.1);
            border-radius: 20px;
            color: var(--primary);
            font-size: 13px;
            font-weight: 600;
        }

        /* Success Animation */
        .success-animation {
            display: none;
            text-align: center;
            padding: 40px 0;
        }

        .success-icon {
            width: 80px;
            height: 80px;
            background: var(--primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 24px;
            font-size: 36px;
            color: white;
            animation: successPulse 2s infinite;
        }

        @keyframes successPulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        /* Floating Elements Animation */
        .floating-element {
            position: absolute;
            border-radius: 50%;
            background: linear-gradient(135deg, rgba(16, 185, 129, 0.1) 0%, rgba(59, 130, 246, 0.1) 100%);
            animation: float 20s infinite linear;
            z-index: 1;
        }

        @keyframes float {
            0% { transform: translateY(100vh) rotate(0deg); }
            100% { transform: translateY(-100px) rotate(360deg); }
        }

        /* Three Cards Section */
        .cards-section {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
            margin: 60px auto;
            max-width: 1200px;
            padding: 0 40px;
        }

        .service-card {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: var(--radius);
            padding: 32px;
            backdrop-filter: blur(10px);
            transition: var(--transition);
            text-align: center;
        }

        .service-card:hover {
            transform: translateY(-10px);
            border-color: var(--primary);
            background: rgba(16, 185, 129, 0.15);
        }

        .service-icon {
            width: 60px;
            height: 60px;
            background: rgba(16, 185, 129, 0.2);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            color: var(--primary);
            font-size: 24px;
        }

        .service-card h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 12px;
            color: white;
        }

        .service-card p {
            color: #94a3b8;
            font-size: 14px;
            line-height: 1.6;
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
        

        /* Responsive Design */
        @media (max-width: 1200px) {
            .cards-section {
                grid-template-columns: repeat(2, 1fr);
                padding: 0 20px;
            }
        }

        @media (max-width: 1024px) {
            .container {
                flex-direction: column;
            }
            
            .info-panel, .form-panel {
                padding: 40px 24px;
            }
            
            .info-title {
                font-size: 36px;
            }
            
            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .info-title {
                font-size: 32px;
            }
            
            .stats-grid {
                grid-template-columns: 1fr;
            }
            
            .form-title {
                font-size: 28px;
            }
            
            .cards-section {
                grid-template-columns: 1fr;
                margin: 40px auto;
            }
        }

        @media (max-width: 480px) {
            .info-panel, .form-panel {
                padding: 30px 20px;
            }
            
            .info-title {
                font-size: 28px;
            }
            
            .stat-card, .service-card {
                padding: 20px;
            }
            
            .form-input {
                padding: 14px 20px 14px 48px;
            }
        }
    </style>
</head>
<body>
		
		

    <!-- Background Image -->
    <div class="background-container">
        <img src="${pageContext.request.contextPath}/images/run-fast.jpg" alt="Running Background" class="background-image">
    </div>

    <!-- Main Container -->
    <div class="container">
        
        <!-- Left Panel - Information -->
        <div class="info-panel">
            <!-- Floating Elements -->
            <div class="floating-elements" id="floatingElements"></div>
            
            <div class="info-content">
                <div class="logo animate__animated animate__fadeInDown">
                    <div class="logo-icon">
                        <i class="fas fa-running"></i>
                    </div>
                    <span>RunElite</span>
                </div>
                
                <h1 class="info-title animate__animated animate__fadeInUp">
                    Join India's Premier<br>Running Community
                </h1>
                
                <p class="info-subtitle animate__animated animate__fadeInUp animate__delay-1s">
                    Connect with 50,000+ passionate runners, track your progress with professional analytics, 
                    and achieve your fitness goals with personalized training programs designed by elite coaches.
                </p>
                
                <!-- Stats Grid -->
                <div class="stats-grid animate__animated animate__fadeInUp animate__delay-2s">
                    <div class="stat-card">
                        <div class="stat-number">50K+</div>
                        <div class="stat-label">Active Members</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">500+</div>
                        <div class="stat-label">Running Groups</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">98%</div>
                        <div class="stat-label">Success Rate</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">24/7</div>
                        <div class="stat-label">Coach Support</div>
                    </div>
                </div>
                
                <!-- Features List -->
                <div class="features-list animate__animated animate__fadeInUp animate__delay-3s">
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-trophy"></i>
                        </div>
                        <div>
                            <h4 style="color: white; margin-bottom: 4px;">Premium Training Programs</h4>
                            <p style="color: #94a3b8; font-size: 14px;">Professional coaching and personalized plans</p>
                        </div>
                    </div>
                    
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <div>
                            <h4 style="color: white; margin-bottom: 4px;">Advanced Analytics</h4>
                            <p style="color: #94a3b8; font-size: 14px;">Track performance with real-time metrics</p>
                        </div>
                    </div>
                    
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <div>
                            <h4 style="color: white; margin-bottom: 4px;">Community Events</h4>
                            <p style="color: #94a3b8; font-size: 14px;">Weekly group runs and monthly marathons</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Right Panel - Form -->
        <div class="form-panel">
            <div class="form-container">
                <div class="form-header animate__animated animate__fadeIn">
                    <h2 class="form-title">Join Running Group</h2>
                    <p class="form-subtitle">Complete your registration to join elite runners</p>
                </div>
                
                <!-- Group ID Badge -->
                <div class="group-badge animate__animated animate__fadeIn animate__delay-1s">
                    <i class="fas fa-users"></i>
                    <span>Group ID: <strong>${groupId}</strong></span>
                </div>
                
                <!-- Progress Indicator -->
                <div class="progress-container animate__animated animate__fadeIn animate__delay-1s">
                    <div class="progress-bar">
                        <div class="progress-fill" id="progressFill"></div>
                    </div>
                    <div class="progress-text">
                        <span>Registration Progress</span>
                        <span id="progressPercent">0%</span>
                    </div>
                </div>
                
                <!-- Success Message (Hidden Initially) -->
                <div class="success-animation" id="successMessage">
                    <div class="success-icon">
                        <i class="fas fa-check"></i>
                    </div>
                    <h3 style="color: var(--secondary); margin-bottom: 12px;">Registration Successful!</h3>
                    <p style="color: #64748b;">Your details have been saved to our database.</p>
                </div>
                
                <!-- Registration Form -->
                <form action="${pageContext.request.contextPath}/join/save" method="post" id="registrationForm">
                    
                    <input type="hidden" name="groupId" value="${groupId}"/>
                    
                    <!-- Name Field -->
                    <div class="form-group animate__animated animate__fadeInUp animate__delay-1s">
                        <label class="form-label" for="name">
                            <i class="fas fa-user"></i>Full Name
                        </label>
                        <div class="input-wrapper">
                            <input type="text" 
                                   id="name" 
                                   name="name" 
                                   class="form-input"
                                   placeholder="Enter your full name"
                                   required
                                   autocomplete="name">
                            <div class="input-icon">
                                <i class="fas fa-user-circle"></i>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Email Field -->
                    <div class="form-group animate__animated animate__fadeInUp animate__delay-2s">
                        <label class="form-label" for="email">
                            <i class="fas fa-envelope"></i>Email Address
                        </label>
                        <div class="input-wrapper">
                            <input type="email" 
                                   id="email" 
                                   name="email" 
                                   class="form-input"
                                   placeholder="example@gmail.com"
                                   required
                                   autocomplete="email">
                            <div class="input-icon">
                                <i class="fas fa-at"></i>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Phone Field -->
                    <div class="form-group animate__animated animate__fadeInUp animate__delay-3s">
                        <label class="form-label" for="phone">
                            <i class="fas fa-phone"></i>Mobile Number
                        </label>
                        <div class="input-wrapper">
                            <input type="tel" 
                                   id="phone" 
                                   name="phone" 
                                   class="form-input"
                                   placeholder="9876543210"
                                   pattern="[0-9]{10}"
                                   maxlength="10"
                                   required
                                   autocomplete="tel">
                            <div class="input-icon">
                                <i class="fas fa-mobile-alt"></i>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Age Field -->
                    <div class="form-group animate__animated animate__fadeInUp animate__delay-4s">
                        <label class="form-label" for="age">
                            <i class="fas fa-birthday-cake"></i>Age
                        </label>
                        <div class="input-wrapper">
                            <input type="number" 
                                   id="age" 
                                   name="age" 
                                   class="form-input"
                                   min="16"
                                   max="80"
                                   placeholder="25"
                                   required>
                            <div class="input-icon">
                                <i class="fas fa-calendar-alt"></i>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Submit Button -->
                    <button type="submit" class="submit-btn animate__animated animate__fadeInUp animate__delay-5s" id="submitBtn">
                        <span class="button-text">
                            <i class="fas fa-running"></i> Complete Registration
                        </span>
                        <span class="loading-spinner">
                            <i class="fas fa-spinner"></i>
                        </span>
                    </button>
                    
                </form>
                
                <!-- Form Footer -->
                <div class="form-footer animate__animated animate__fadeIn animate__delay-5s">
                    <p>By registering, you agree to our <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></p>
                    <div class="secure-notice">
                        <i class="fas fa-lock"></i>
                        <span>Data Securely Stored in Database</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Three Service Cards Section -->
    <div class="cards-section">
        <div class="service-card animate__animated animate__fadeInUp">
            <div class="service-icon">
                <i class="fas fa-headset"></i>
            </div>
            <h3>Sales Support</h3>
            <p>Our sales team is ready to discuss your needs and how our platform can help optimize your running performance and build your community.</p>
        </div>
        
        <div class="service-card animate__animated animate__fadeInUp animate__delay-1s">
            <div class="service-icon">
                <i class="fas fa-code"></i>
            </div>
            <h3>Technical Support</h3>
            <p>Our development team ensures the platform runs smoothly and implements the latest features and security updates for your running community.</p>
        </div>
        
        <div class="service-card animate__animated animate__fadeInUp animate__delay-2s">
            <div class="service-icon">
                <i class="fas fa-newspaper"></i>
            </div>
            <h3>Media & Updates</h3>
            <p>Stay updated with the latest features, running tips, community news, and success stories through our regular updates and newsletters.</p>
        </div>
    </div>
    
    <script>
        // Create floating background elements
        function createFloatingElements() {
            const container = document.querySelector('.info-panel');
            const count = 8;
            
            for (let i = 0; i < count; i++) {
                const element = document.createElement('div');
                element.className = 'floating-element';
                
                const size = Math.random() * 80 + 20;
                const posX = Math.random() * 100;
                const delay = Math.random() * 20;
                const duration = Math.random() * 20 + 20;
                const opacity = Math.random() * 0.08 + 0.02;
                
                element.style.width = size + 'px';
                element.style.height = size + 'px';
                element.style.left = posX + '%';
                element.style.animationDelay = delay + 's';
                element.style.animationDuration = duration + 's';

                element.style.opacity = opacity;
                
                container.appendChild(element);
            }
        }
        
        // Update progress bar based on form completion
        function updateProgressBar() {
            const inputs = document.querySelectorAll('.form-input[required]');
            let filledCount = 0;
            
            inputs.forEach(input => {
                if (input.value.trim() !== '') {
                    filledCount++;
                }
            });
            
            const progress = (filledCount / inputs.length) * 100;
            document.getElementById('progressFill').style.width = progress + '%';
            document.getElementById('progressPercent').textContent = Math.round(progress) + '%';

        }
        

            
            const submitBtn = document.getElementById('submitBtn');
            submitBtn.classList.add('loading');
            
            // Show loading animation
            submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Saving to Database...';
            
            // Simulate database save with animation
            setTimeout(() => {
                // Hide form and show success message
                document.getElementById('registrationForm').style.display = 'none';
                document.getElementById('successMessage').style.display = 'block';
                
                // Success animation
                document.getElementById('successMessage').classList.add('animate__animated', 'animate__fadeIn');
                
                // Actually submit the form after showing success animation
                setTimeout(() => {
                    // Create a hidden form clone and submit it
                    const form = document.getElementById('registrationForm');
                    const formData = new FormData(form);
                    
               
                    .then(response => {
                        if (response.ok) {
                            // Data saved successfully
                            console.log('Data saved to database');
                        }
                    })
                    .catch(error => {
                        console.error('Error saving data:', error);
                    });
                }, 1000);
                
            }, 1500); // Simulated database save delay
        });
        
        // Real-time validation and progress tracking
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('input', function() {
                updateProgressBar();
                
                // Add visual feedback
                if (this.value.trim() !== '') {
                    this.style.borderColor = 'var(--primary)';
                    this.style.background = 'rgba(16, 185, 129, 0.05)';
                } else {
                    this.style.borderColor = '#e2e8f0';
                    this.style.background = 'white';
                }
            });
            
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'translateY(-5px)';
                this.parentElement.style.transition = 'transform 0.3s ease';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'translateY(0)';
            });
        });
        
        // Phone number formatting
        document.getElementById('phone').addEventListener('input', function(e) {
            let value = this.value.replace(/\D/g, '');
            
            if (value.length > 10) {
                value = value.substring(0, 10);
            }
            
            this.value = value;
        });
        
        // Initialize on load
        document.addEventListener('DOMContentLoaded', function() {
            createFloatingElements();
            
            // Focus on first input
            setTimeout(() => {
                document.getElementById('name').focus();
            }, 500);
            
            // Demo data for preview (remove in production)
            setTimeout(() => {
                if (!document.getElementById('name').value) {
                    // Auto-fill demo data
                    const demoData = {
                        name: 'Rajesh Kumar',
                        email: 'rajesh@example.com',
                        phone: '9876543210',
                        age: '28'
                    };
                    
                    Object.keys(demoData).forEach(key => {
                        const input = document.getElementById(key);
                        if (input && !input.value) {
                            input.value = demoData[key];
                            updateProgressBar();
                        }
                    });
                }
            }, 1000);
            
            // Add smooth scroll for form focus
            document.querySelectorAll('.form-input').forEach(input => {
                input.addEventListener('focus', function() {
                    if (window.innerWidth <= 1024) {
                        this.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    }
                });
            });
            
            // Add animation to form elements on scroll
            const observerOptions = {
                threshold: 0.2,
                rootMargin: '0px 0px -50px 0px'
            };
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate__animated', 'animate__fadeInUp');
                    }
                });
            }, observerOptions);
            
            // Observe form groups
            document.querySelectorAll('.form-group').forEach((el, index) => {
                el.style.animationDelay = `${(index + 1) * 0.2}s`;
                observer.observe(el);
            });
            
            // Observe service cards
            document.querySelectorAll('.service-card').forEach((el, index) => {
                el.style.animationDelay = `${index * 0.2}s`;
                observer.observe(el);
            });
        });
    </script>
</body>
</html>
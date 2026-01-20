<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Secure Running Group | RunElite</title>
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
            --accent: #e74c3c;
            --gradient: linear-gradient(135deg, var(--primary) 0%, #3498db 100%);
            --success: #10b981;
            --warning: #f59e0b;
            --error: #ef4444;
            --light: rgba(255, 255, 255, 0.98);
            --dark: #1f2937;
            --shadow: 0 25px 60px rgba(0, 0, 0, 0.35);
            --shadow-lg: 0 40px 80px rgba(0, 0, 0, 0.5);
            --transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            --border-radius: 24px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            background: 
                linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.6)),
                url("${pageContext.request.contextPath}/images/run-fast.jpg") center/cover no-repeat fixed;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px;
            position: relative;
            overflow-x: hidden;
        }

        /* ===== IMAGE ENHANCEMENT OVERLAY ===== */
        .image-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                linear-gradient(135deg, 
                    rgba(26, 188, 156, 0.15) 0%, 
                    rgba(52, 152, 219, 0.1) 50%, 
                    rgba(41, 128, 185, 0.15) 100%);
            z-index: -1;
            animation: overlayShift 20s infinite alternate;
        }

        @keyframes overlayShift {
            0% {
                background-position: 0% 0%;
            }
            100% {
                background-position: 100% 100%;
            }
        }

        /* ===== FLOATING PARTICLES ===== */
        .floating-particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            pointer-events: none;
        }

        .particle {
            position: absolute;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            animation: floatParticle 25s infinite linear;
        }

        @keyframes floatParticle {
            0% {
                transform: translateY(100vh) rotate(0deg) scale(0.5);
                opacity: 0;
            }
            10% {
                opacity: 0.5;
            }
            90% {
                opacity: 0.5;
            }
            100% {
                transform: translateY(-100px) rotate(360deg) scale(1);
                opacity: 0;
            }
        }

        /* ===== MAIN CARD WITH GLASS EFFECT ===== */
        .card {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(25px);
            -webkit-backdrop-filter: blur(25px);
            width: 100%;
            max-width: 600px;
            border-radius: var(--border-radius);
            padding: 50px;
            box-shadow: var(--shadow);
            border: 1px solid rgba(255, 255, 255, 0.2);
            position: relative;
            overflow: hidden;
            animation: slideUp 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 6px;
            background: var(--gradient);
        }

        .card::after {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(
                45deg,
                transparent,
                rgba(255, 255, 255, 0.15),
                transparent
            );
            transform: rotate(45deg);
            animation: shine 6s infinite;
            pointer-events: none;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(60px) scale(0.95);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        @keyframes shine {
            0% {
                transform: rotate(45deg) translateX(-150%);
            }
            100% {
                transform: rotate(45deg) translateX(150%);
            }
        }

        /* ===== CARD HEADER WITH CLEAR VISIBILITY ===== */
        .header {
            text-align: center;
            margin-bottom: 40px;
            position: relative;
            z-index: 2;
        }

        .header-icon {
            width: 90px;
            height: 90px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            border-radius: 22px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 30px;
            color: white;
            font-size: 42px;
            box-shadow: 
                0 15px 35px rgba(0, 0, 0, 0.2),
                inset 0 1px 0 rgba(255, 255, 255, 0.3);
            animation: gentlePulse 3s infinite ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        @keyframes gentlePulse {
            0%, 100% {
                transform: scale(1) translateY(0);
                box-shadow: 
                    0 15px 35px rgba(0, 0, 0, 0.2),
                    inset 0 1px 0 rgba(255, 255, 255, 0.3);
            }
            50% {
                transform: scale(1.05) translateY(-5px);
                box-shadow: 
                    0 25px 50px rgba(0, 0, 0, 0.3),
                    inset 0 1px 0 rgba(255, 255, 255, 0.4);
            }
        }

        .header h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 40px;
            font-weight: 800;
            color: white;
            margin-bottom: 15px;
            line-height: 1.2;
            text-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
            letter-spacing: -0.5px;
        }

        .header h1 span {
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-shadow: none;
        }

        .header p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 17px;
            max-width: 450px;
            margin: 0 auto;
            line-height: 1.7;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        /* ===== SUCCESS MESSAGE ===== */
        .success-message {
            background: rgba(16, 185, 129, 0.2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(16, 185, 129, 0.4);
            padding: 22px;
            border-radius: 16px;
            margin-bottom: 35px;
            display: flex;
            align-items: center;
            gap: 18px;
            animation: slideIn 0.7s ease-out;
            box-shadow: 0 10px 30px rgba(16, 185, 129, 0.2);
        }

        .success-icon {
            width: 55px;
            height: 55px;
            background: var(--success);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 22px;
            flex-shrink: 0;
            box-shadow: 0 8px 25px rgba(16, 185, 129, 0.4);
        }

        .success-content h4 {
            color: white;
            margin-bottom: 6px;
            font-size: 18px;
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
        }

        .success-content p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 15px;
            text-shadow: 0 1px 6px rgba(0, 0, 0, 0.3);
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* ===== FORM STYLES WITH HIGH CONTRAST ===== */
        .form {
            position: relative;
            z-index: 2;
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 30px;
            position: relative;
        }

        .form-label {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 12px;
            font-weight: 600;
            color: white;
            font-size: 16px;
            transition: var(--transition);
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
        }

        .form-label i {
            color: var(--primary);
            width: 22px;
            text-align: center;
            transition: var(--transition);
            filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.3));
        }

        .input-container {
            position: relative;
        }

        .form-input {
            width: 100%;
            padding: 20px 25px;
            padding-left: 55px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 16px;
            font-size: 16px;
            font-family: 'Poppins', sans-serif;
            transition: var(--transition);
            background: rgba(255, 255, 255, 0.15);
            color: white;
            backdrop-filter: blur(10px);
        }

        .form-input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-input:focus {
            outline: none;
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 
                0 0 0 4px rgba(26, 188, 156, 0.3),
                0 15px 30px rgba(0, 0, 0, 0.2);
            transform: translateY(-3px);
        }

        .form-input:hover {
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        .input-icon {
            position: absolute;
            left: 25px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--primary);
            font-size: 20px;
            transition: var(--transition);
            filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.3));
        }

        .form-input:focus + .input-icon {
            color: white;
            transform: translateY(-50%) scale(1.2);
        }

        /* ===== PASSWORD CONTAINER ===== */
        .password-container {
            margin-bottom: 30px;
        }

        .password-strength {
            margin-top: 15px;
        }

        .strength-meter {
            height: 10px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 10px;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .strength-fill {
            height: 100%;
            width: 0%;
            border-radius: 5px;
            transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .strength-text {
            font-size: 13px;
            color: rgba(255, 255, 255, 0.9);
            display: flex;
            justify-content: space-between;
            text-shadow: 0 1px 6px rgba(0, 0, 0, 0.3);
        }

        .strength-weak .strength-fill {
            background: var(--error);
            width: 25%;
        }

        .strength-fair .strength-fill {
            background: var(--warning);
            width: 50%;
        }

        .strength-good .strength-fill {
            background: #3b82f6;
            width: 75%;
        }

        .strength-strong .strength-fill {
            background: var(--success);
            width: 100%;
        }

        .password-requirements {
            background: rgba(26, 188, 156, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 25px;
            margin-top: 25px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .requirements-title {
            font-weight: 700;
            color: white;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 16px;
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
        }

        .requirement {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 10px;
            font-size: 15px;
            color: rgba(255, 255, 255, 0.85);
            text-shadow: 0 1px 6px rgba(0, 0, 0, 0.3);
        }

        .requirement.valid {
            color: #a7f3d0;
        }

        .requirement.valid i {
            color: #a7f3d0;
        }

        /* ===== SECURITY FEATURES ===== */
        .security-features {
            background: rgba(59, 130, 246, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 30px;
            margin: 35px 0;
            border-left: 4px solid #3b82f6;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .security-title {
            font-weight: 800;
            color: white;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 18px;
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
        }

        .security-list {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .security-item {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 15px;
            color: rgba(255, 255, 255, 0.95);
            text-shadow: 0 1px 6px rgba(0, 0, 0, 0.3);
        }

        .security-item i {
            color: #93c5fd;
            filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.3));
        }

        /* ===== SUBMIT BUTTON ===== */
        .submit-btn {
            width: 100%;
            padding: 24px;
            background: var(--gradient);
            border: none;
            border-radius: 16px;
            color: white;
            font-size: 18px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            transition: var(--transition);
            margin-top: 35px;
            position: relative;
            overflow: hidden;
            box-shadow: 
                0 20px 50px rgba(26, 188, 156, 0.5),
                0 5px 15px rgba(0, 0, 0, 0.3);
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
            letter-spacing: 0.5px;
        }

        .submit-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.4), transparent);
            transition: 0.8s;
        }

        .submit-btn:hover::before {
            left: 100%;
        }

        .submit-btn:hover {
            transform: translateY(-8px);
            box-shadow: 
                0 35px 70px rgba(26, 188, 156, 0.6),
                0 10px 25px rgba(0, 0, 0, 0.4);
        }

        .submit-btn:active {
            transform: translateY(-4px);
        }

        .submit-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* ===== LOADING ANIMATION ===== */
        .loading-spinner {
            display: none;
        }

        .submit-btn.loading .btn-text {
            display: none;
        }

        .submit-btn.loading .loading-spinner {
            display: inline-block;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* ===== FORM FOOTER ===== */
        .form-footer {
            text-align: center;
            margin-top: 35px;
            padding-top: 25px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            color: rgba(255, 255, 255, 0.8);
            font-size: 14px;
            text-shadow: 0 1px 6px rgba(0, 0, 0, 0.3);
        }

        .form-footer a {
            color: #a7f3d0;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            text-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
        }

        .form-footer a:hover {
            color: white;
            text-decoration: underline;
        }

        /* ===== TOGGLE PASSWORD VISIBILITY ===== */
        .password-toggle {
            position: absolute;
            right: 25px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: rgba(255, 255, 255, 0.7);
            cursor: pointer;
            font-size: 20px;
            transition: var(--transition);
            padding: 5px;
            border-radius: 50%;
        }

        .password-toggle:hover {
            color: white;
            background: rgba(255, 255, 255, 0.1);
        }

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 768px) {
            .card {
                padding: 40px 30px;
                margin: 20px;
                backdrop-filter: blur(20px);
            }
            
            .form-row {
                grid-template-columns: 1fr;
                gap: 0;
            }
            
            .header h1 {
                font-size: 34px;
            }
            
            .header-icon {
                width: 75px;
                height: 75px;
                font-size: 36px;
            }
            
            .security-list {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 480px) {
            body {
                padding: 15px;
            }
            
            .card {
                padding: 35px 25px;
                border-radius: 20px;
            }
            
            .header h1 {
                font-size: 30px;
            }
            
            .header p {
                font-size: 16px;
            }
            
            .header-icon {
                width: 65px;
                height: 65px;
                font-size: 32px;
            }
            
            .form-input {
                padding: 18px 22px;
                padding-left: 50px;
            }
            
            .submit-btn {
                padding: 22px;
                font-size: 16px;
            }
            
            .password-requirements,
            .security-features {
                padding: 20px;
            }
        }
    </style>
</head>

<body>

    <!-- Image Enhancement Overlay -->
    <div class="image-overlay"></div>
    
    <!-- Floating Particles -->
    <div class="floating-particles" id="floatingParticles"></div>

    <!-- Main Card -->
    <div class="card">

        <!-- Card Header -->
        <div class="header">
            <div class="header-icon">
                <i class="fas fa-users-shield"></i>
            </div>
            <h1>Create <span>Secure</span> Running Group</h1>
            <p>Build your premium running community with enterprise-grade security and member management</p>
        </div>

        <!-- Success Message -->
        <% if (request.getAttribute("msg") != null) { %>
            <div class="success-message">
                <div class="success-icon">
                    <i class="fas fa-check"></i>
                </div>
                <div class="success-content">
                    <h4>Group Created Successfully!</h4>
                    <p>${msg}</p>
                </div>
            </div>
        <% } %>

        <!-- Form -->
        <form class="form" id="secureGroupForm" action="saveGroup" method="post">

            <!-- Row 1: Group Name & Location -->
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label" for="groupName">
                        <i class="fas fa-crown"></i>Group Name
                    </label>
                    <div class="input-container">
                        <input type="text" id="groupName" name="groupName" class="form-input" 
                               placeholder="Elite Morning Runners" required>
                        <div class="input-icon">
                            <i class="fas fa-flag"></i>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="location">
                        <i class="fas fa-map-marker-alt"></i>Location
                    </label>
                    <div class="input-container">
                        <input type="text" id="location" name="location" class="form-input" 
                               placeholder="Central Park, New York" required>
                        <div class="input-icon">
                            <i class="fas fa-location-dot"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Row 2: Run Time & Distance -->
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label" for="runTime">
                        <i class="fas fa-clock"></i>Run Time
                    </label>
                    <div class="input-container">
                        <input type="text" id="runTime" name="runTime" class="form-input" 
                               placeholder="6:00 AM, Mon/Wed/Fri" required>
                        <div class="input-icon">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="distanceKm">
                        <i class="fas fa-route"></i>Distance (KM)
                    </label>
                    <div class="input-container">
                        <input type="number" id="distanceKm" name="distanceKm" class="form-input" 
                               step="0.1" min="1" max="100" placeholder="10.5" required>
                        <div class="input-icon">
                            <i class="fas fa-running"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Row 3: Created By & Group Password -->
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label" for="createdBy">
                        <i class="fas fa-user-tie"></i>Group Leader
                    </label>
                    <div class="input-container">
                        <input type="text" id="createdBy" name="createdBy" class="form-input" 
                               placeholder="Your full name" required>
                        <div class="input-icon">
                            <i class="fas fa-user-check"></i>
                        </div>
                    </div>
                </div>

                <div class="form-group password-container">
                    <label class="form-label" for="groupPassword">
                        <i class="fas fa-lock"></i>Group Password
                    </label>
                    <div class="input-container">
                        <input type="password" id="groupPassword" name="groupPassword" class="form-input" 
                               placeholder="Create secure password" required>
                        <div class="input-icon">
                            <i class="fas fa-key"></i>
                        </div>
                        <button type="button" class="password-toggle" id="passwordToggle">
                            <i class="far fa-eye"></i>
                        </button>
                    </div>
                    <!-- Password Strength Meter -->
                    <div class="password-strength" id="passwordStrength">
                        <div class="strength-meter">
                            <div class="strength-fill"></div>
                        </div>
                        <div class="strength-text">
                            <span>Password strength:</span>
                            <span id="strengthLabel">Weak</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Password Requirements -->
            <div class="password-requirements">
                <div class="requirements-title">
                    <i class="fas fa-list-check"></i> Password Requirements
                </div>
                <div class="requirement" id="reqLength">
                    <i class="far fa-circle"></i> At least 8 characters
                </div>
                <div class="requirement" id="reqUppercase">
                    <i class="far fa-circle"></i> One uppercase letter
                </div>
                <div class="requirement" id="reqLowercase">
                    <i class="far fa-circle"></i> One lowercase letter
                </div>
                <div class="requirement" id="reqNumber">
                    <i class="far fa-circle"></i> One number
                </div>
                <div class="requirement" id="reqSpecial">
                    <i class="far fa-circle"></i> One special character
                </div>
            </div>

            <!-- Security Features -->
            <div class="security-features">
                <div class="security-title">
                    <i class="fas fa-shield-check"></i> Security Features
                </div>
                <div class="security-list">
                    <div class="security-item">
                        <i class="fas fa-check-circle"></i>
                        <span>End-to-end password encryption</span>
                    </div>
                    <div class="security-item">
                        <i class="fas fa-check-circle"></i>
                        <span>Member verification required</span>
                    </div>
                    <div class="security-item">
                        <i class="fas fa-check-circle"></i>
                        <span>Secure member data storage</span>
                    </div>
                    <div class="security-item">
                        <i class="fas fa-check-circle"></i>
                        <span>Admin-only member viewing</span>
                    </div>
                </div>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="submit-btn" id="submitBtn" disabled>
                <span class="btn-text">
                    <i class="fas fa-plus-circle"></i> Create Secure Group
                </span>
                <span class="loading-spinner">
                    <i class="fas fa-spinner"></i>
                </span>
            </button>

            <!-- Form Footer -->
            <div class="form-footer">
                <p>By creating a group, you agree to our <a href="#">Security Policy</a>, 
                   <a href="#">Terms of Service</a>, and <a href="#">Privacy Policy</a>.</p>
            </div>
        </form>
    </div>

    <!-- JavaScript -->
    <script>
        // Create floating particles
        function createParticles() {
            const container = document.getElementById('floatingParticles');
            const particleCount = 25;
            
            for (let i = 0; i < particleCount; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                
                // Random properties
                const size = Math.random() * 40 + 10;
                const posX = Math.random() * 100;
                const delay = Math.random() * 25;
                const duration = Math.random() * 15 + 20;
                const opacity = Math.random() * 0.08 + 0.02;
                const color = `rgba(255, 255, 255, ${opacity})`;
                
                particle.style.width = `${size}px`;
                particle.style.height = `${size}px`;
                particle.style.left = `${posX}vw`;
                particle.style.background = color;
                particle.style.animationDelay = `${delay}s`;
                particle.style.animationDuration = `${duration}s`;
                
                container.appendChild(particle);
            }
        }

        // Password strength checker
        function checkPasswordStrength(password) {
            let strength = 0;
            let requirements = {
                length: false,
                uppercase: false,
                lowercase: false,
                number: false,
                special: false
            };
            
            // Length check
            if (password.length >= 8) {
                strength += 20;
                requirements.length = true;
                document.getElementById('reqLength').classList.add('valid');
                document.getElementById('reqLength').querySelector('i').className = 'fas fa-check-circle';
            } else {
                document.getElementById('reqLength').classList.remove('valid');
                document.getElementById('reqLength').querySelector('i').className = 'far fa-circle';
            }
            
            // Uppercase check
            if (/[A-Z]/.test(password)) {
                strength += 20;
                requirements.uppercase = true;
                document.getElementById('reqUppercase').classList.add('valid');
                document.getElementById('reqUppercase').querySelector('i').className = 'fas fa-check-circle';
            } else {
                document.getElementById('reqUppercase').classList.remove('valid');
                document.getElementById('reqUppercase').querySelector('i').className = 'far fa-circle';
            }
            
            // Lowercase check
            if (/[a-z]/.test(password)) {
                strength += 20;
                requirements.lowercase = true;
                document.getElementById('reqLowercase').classList.add('valid');
                document.getElementById('reqLowercase').querySelector('i').className = 'fas fa-check-circle';
            } else {
                document.getElementById('reqLowercase').classList.remove('valid');
                document.getElementById('reqLowercase').querySelector('i').className = 'far fa-circle';
            }
            
            // Number check
            if (/[0-9]/.test(password)) {
                strength += 20;
                requirements.number = true;
                document.getElementById('reqNumber').classList.add('valid');
                document.getElementById('reqNumber').querySelector('i').className = 'fas fa-check-circle';
            } else {
                document.getElementById('reqNumber').classList.remove('valid');
                document.getElementById('reqNumber').querySelector('i').className = 'far fa-circle';
            }
            
            // Special character check
            if (/[^A-Za-z0-9]/.test(password)) {
                strength += 20;
                requirements.special = true;
                document.getElementById('reqSpecial').classList.add('valid');
                document.getElementById('reqSpecial').querySelector('i').className = 'fas fa-check-circle';
            } else {
                document.getElementById('reqSpecial').classList.remove('valid');
                document.getElementById('reqSpecial').querySelector('i').className = 'far fa-circle';
            }
            
            return { strength, requirements };
        }

        // Update password strength meter
        function updatePasswordStrength(password) {
            const { strength, requirements } = checkPasswordStrength(password);
            const strengthContainer = document.getElementById('passwordStrength');
            const strengthLabel = document.getElementById('strengthLabel');
            const strengthFill = strengthContainer.querySelector('.strength-fill');
            const submitBtn = document.getElementById('submitBtn');
            
            // Update strength meter
            strengthFill.style.width = `${strength}%`;
            
            // Update strength classes and label
            strengthContainer.className = 'password-strength';
            if (strength <= 20) {
                strengthContainer.classList.add('strength-weak');
                strengthLabel.textContent = 'Weak';
                strengthFill.style.background = 'var(--error)';
                submitBtn.disabled = true;
            } else if (strength <= 40) {
                strengthContainer.classList.add('strength-fair');
                strengthLabel.textContent = 'Fair';
                strengthFill.style.background = 'var(--warning)';
                submitBtn.disabled = true;
            } else if (strength <= 80) {
                strengthContainer.classList.add('strength-good');
                strengthLabel.textContent = 'Good';
                strengthFill.style.background = '#3b82f6';
                submitBtn.disabled = false;
            } else {
                strengthContainer.classList.add('strength-strong');
                strengthLabel.textContent = 'Strong';
                strengthFill.style.background = 'var(--success)';
                submitBtn.disabled = false;
            }
            
            // Animate strength meter
            strengthFill.style.transition = 'width 0.5s ease, background 0.5s ease';
        }

        // Toggle password visibility
        const passwordToggle = document.getElementById('passwordToggle');
        const passwordInput = document.getElementById('groupPassword');
        
        if (passwordToggle) {
            passwordToggle.addEventListener('click', function() {
                const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                passwordInput.setAttribute('type', type);
                
                // Toggle icon
                const icon = this.querySelector('i');
                icon.className = type === 'password' ? 'far fa-eye' : 'far fa-eye-slash';
            });
        }

        // Form validation
        function validateForm() {
            const password = document.getElementById('groupPassword').value;
            const groupName = document.getElementById('groupName').value;
            const location = document.getElementById('location').value;
            const runTime = document.getElementById('runTime').value;
            const distanceKm = document.getElementById('distanceKm').value;
            const createdBy = document.getElementById('createdBy').value;
            
            // Check password strength
            const { strength } = checkPasswordStrength(password);
            
            // Basic validation
            const isValid = groupName.trim() !== '' &&
                           location.trim() !== '' &&
                           runTime.trim() !== '' &&
                           distanceKm.trim() !== '' &&
                           createdBy.trim() !== '' &&
                           strength >= 60; // Require at least "Good" strength
            
            const submitBtn = document.getElementById('submitBtn');
            submitBtn.disabled = !isValid;
            
            return isValid;
        }

        // Form submission
        document.getElementById('secureGroupForm').addEventListener('submit', function(e) {
            if (!validateForm()) {
                e.preventDefault();
                return;
            }
            
            const submitBtn = document.getElementById('submitBtn');
            submitBtn.classList.add('loading');
            submitBtn.disabled = true;
            
            // Show encryption animation
            const originalText = submitBtn.querySelector('.btn-text').textContent;
            submitBtn.querySelector('.btn-text').innerHTML = 
                '<i class="fas fa-lock"></i> Encrypting Data...';
            
            // Simulate encryption process
            setTimeout(() => {
                submitBtn.querySelector('.btn-text').innerHTML = 
                    '<i class="fas fa-shield-alt"></i> Creating Secure Group...';
            }, 800);
            
            // Add ripple effect
            const ripple = document.createElement('span');
            const rect = submitBtn.getBoundingClientRect();
            const size = Math.max(rect.width, rect.height);
            const x = e.clientX - rect.left - size/2;
            const y = e.clientY - rect.top - size/2;
            
            ripple.style.cssText = `
                position: absolute;
                border-radius: 50%;
                background: rgba(255, 255, 255, 0.7);
                transform: scale(0);
                animation: ripple 0.8s ease-out;
                width: ${size}px;
                height: ${size}px;
                top: ${y}px;
                left: ${x}px;
                z-index: 1;
            `;
            
            submitBtn.appendChild(ripple);
            
            setTimeout(() => {
                if (ripple.parentNode) {
                    ripple.parentNode.removeChild(ripple);
                }
            }, 800);
        });

        // Real-time form validation
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('input', function() {
                // Check password strength if it's the password field
                if (this.id === 'groupPassword') {
                    updatePasswordStrength(this.value);
                }
                
                // Validate entire form
                validateForm();
                
                // Add valid styling
                if (this.value.trim() !== '') {
                    this.style.borderColor = 'rgba(26, 188, 156, 0.8)';
                    this.style.background = 'rgba(255, 255, 255, 0.25)';
                } else {
                    this.style.borderColor = 'rgba(255, 255, 255, 0.3)';
                    this.style.background = 'rgba(255, 255, 255, 0.15)';
                }
            });
            
            // Add focus effects
            input.addEventListener('focus', function() {
                this.parentElement.parentElement.style.transform = 'translateY(-5px)';
                this.parentElement.parentElement.style.transition = 'transform 0.3s ease';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.parentElement.style.transform = 'translateY(0)';
            });
        });

        // Initialize on load
        document.addEventListener('DOMContentLoaded', function() {
            createParticles();
            
            // Add CSS for ripple animation
            const style = document.createElement('style');
            style.textContent = `
                @keyframes ripple {
                    0% {
                        transform: scale(0);
                        opacity: 1;
                    }
                    100% {
                        transform: scale(4);
                        opacity: 0;
                    }
                }
            `;
            document.head.appendChild(style);
            
            // Auto-focus first input
            setTimeout(() => {
                document.getElementById('groupName').focus();
            }, 600);
            
            // Card hover effect
            const card = document.querySelector('.card');
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-15px) scale(1.02)';
                this.style.transition = 'transform 0.5s cubic-bezier(0.4, 0, 0.2, 1)';
                this.style.boxShadow = '0 50px 100px rgba(0, 0, 0, 0.6)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
                this.style.boxShadow = 'var(--shadow)';
            });
        });
    </script>
</body>
</html>
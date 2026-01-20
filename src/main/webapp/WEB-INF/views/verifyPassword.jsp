<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Access Verification</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    body {
        background: 
                linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.6)),
                url("${pageContext.request.contextPath}/images/verify.jpg") center/cover no-repeat fixed;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }
    
    .container {
        display: flex;
        max-width: 500px;
        background-color: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        min-height: 100px;
    }
    
    .left-panel {
        flex: 1;
         background: 
                linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.6)),
                url("${pageContext.request.contextPath}/images/verify.jpg") center/cover no-repeat fixed;
        background-size: cover;
        padding: 40px;
        color: white;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        position: relative;
      
    }
    
    .left-panel::before {
        content: '';
        position: absolute;
        width: 300px;
        height: 300px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.1);
        top: -100px;
        right: -100px;
    }
    
    .left-panel::after {
        content: '';
        position: absolute;
        width: 200px;
        height: 200px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.1);
        bottom: -80px;
        left: -80px;
    }
    
    .lock-icon {
        font-size: 80px;
        margin-bottom: 20px;
        z-index: 1;
    }
    
    .left-panel h1 {
        font-size: 28px;
        margin-bottom: 15px;
        z-index: 1;
    }
    
    .left-panel p {
        font-size: 16px;
        line-height: 1.6;
        opacity: 0.9;
        max-width: 300px;
        z-index: 1;
    }
    
    .right-panel {
        flex: 1.2;
        padding: 50px 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    
    .right-panel h2 {
        color: #333;
        font-size: 28px;
        margin-bottom: 10px;
    }
    
    .right-panel .subtitle {
        color: #666;
        margin-bottom: 30px;
        font-size: 15px;
    }
    
    .form-container {
        width: 100%;
    }
    
    .input-group {
        margin-bottom: 25px;
        position: relative;
    }
    
    .input-group label {
        display: block;
        margin-bottom: 8px;
        color: #555;
        font-weight: 500;
        font-size: 15px;
    }
    
    .input-group input {
        width: 100%;
        padding: 15px 15px 15px 45px;
        border: 1px solid #ddd;
        border-radius: 10px;
        font-size: 16px;
        transition: all 0.3s;
        background-color: #f9f9f9;
    }
    
    .input-group input:focus {
        outline: none;
        border-color: #6a11cb;
        background-color: white;
        box-shadow: 0 0 0 3px rgba(106, 17, 203, 0.1);
    }
    
    .input-icon {
        position: absolute;
        left: 15px;
        top: 40px;
        color: #777;
        font-size: 18px;
    }
    
    .submit-btn {
        background: linear-gradient(to right, #6a11cb, #2575fc);
        color: white;
        border: none;
        padding: 16px 30px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 10px;
        cursor: pointer;
        width: 100%;
        transition: all 0.3s;
        margin-top: 10px;
    }
    
    .submit-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 7px 14px rgba(106, 17, 203, 0.2);
    }
    
    .submit-btn:active {
        transform: translateY(0);
    }
    
    .error-container {
        background-color: #ffebee;
        border-left: 4px solid #f44336;
        padding: 15px;
        border-radius: 5px;
        margin-top: 25px;
        display: flex;
        align-items: center;
        animation: fadeIn 0.5s;
    }
    
    .error-icon {
        color: #f44336;
        font-size: 20px;
        margin-right: 10px;
    }
    
    .error-container p {
        color: #c62828;
        font-size: 15px;
        margin: 0;
    }
    
    .info-box {
        background-color: #e8f4fd;
        border-radius: 10px;
        padding: 20px;
        margin-top: 30px;
        border-left: 4px solid #2196f3;
    }
    
    .info-box h3 {
        color: #1976d2;
        font-size: 16px;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
    }
    
    .info-icon {
        margin-right: 8px;
        font-size: 18px;
    }
    
    .info-box ul {
        padding-left: 20px;
        color: #555;
        font-size: 14px;
        line-height: 1.5;
    }
    
    .info-box li {
        margin-bottom: 8px;
    }
    
    .scrollable-content {
        max-height: 300px;
        overflow-y: auto;
        padding-right: 10px;
        margin-top: 20px;
    }
    
    /* Custom scrollbar */
    .scrollable-content::-webkit-scrollbar {
        width: 6px;
    }
    
    .scrollable-content::-webkit-scrollbar-track {
        background: #f1f1f1;
        border-radius: 10px;
    }
    
    .scrollable-content::-webkit-scrollbar-thumb {
        background: #c1c1c1;
        border-radius: 10px;
    }
    
    .scrollable-content::-webkit-scrollbar-thumb:hover {
        background: #a1a1a1;
    }
    
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    
    /* Responsive design */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            max-width: 450px;
        }
        
        .left-panel {
            padding: 30px 20px;
        }
        
        .left-panel h1 {
            font-size: 24px;
        }
        
        .right-panel {
            padding: 30px 25px;
        }
    }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="container">
       
        
        <!-- Right Panel with Form -->
        <div class="right-panel">
            <h2>Enter Group Password</h2>
            <p class="subtitle">Please provide the password to access the group resources</p>
            
            <div class="form-container">
                <form action="${pageContext.request.contextPath}/group/verify" method="post">
                    <input type="hidden" name="groupId" value="${groupId}">
                    
                    <div class="input-group">
                        <label for="password">Group Password</label>
                        <div class="input-icon">
                            <i class="fas fa-key"></i>
                        </div>
                        <input type="password" 
                               id="password"
                               name="password" 
                               placeholder="Enter the group password" 
                               required>
                    </div>
                    
                    <button type="submit" class="submit-btn">
                        <i class="fas fa-unlock-alt"></i> Verify & Access Group
                    </button>
                </form>
                
                <!-- Error message display -->
                <c:if test="${error != null}">
                    <div class="error-container">
                        <div class="error-icon">
                            <i class="fas fa-exclamation-circle"></i>
                        </div>
                        <p>${error}</p>
                    </div>
                </c:if>
                
                <!-- Information box with scrollable content -->
                <div class="info-box">
                    <h3><i class="fas fa-info-circle info-icon"></i> About Group Access</h3>
                    <div class="scrollable-content">
                        <ul>
                            <li>Group passwords ensure that only authorized members can access shared resources.</li>
                            <li>If you've forgotten the password, please contact the group administrator.</li>                                                  
                            <li>All data transmission is encrypted for security.</li>                       
                            <li>Activity logs are maintained for security auditing purposes.</li>
                            <li>For security reasons, please don't share the password outside the group.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Simple animation for the form
        document.addEventListener('DOMContentLoaded', function() {
            const formInputs = document.querySelectorAll('.input-group input');
            
            formInputs.forEach(input => {
                // Add focus effect
                input.addEventListener('focus', function() {
                    this.parentElement.classList.add('focused');
                });
                
                input.addEventListener('blur', function() {
                    if (this.value === '') {
                        this.parentElement.classList.remove('focused');
                    }
                });
                
                // If there's an error, shake the password field
                const errorElement = document.querySelector('.error-container');
                if (errorElement) {
                    const passwordInput = document.getElementById('password');
                    passwordInput.style.animation = 'shake 0.5s';
                    
                    // Add shake animation
                    const style = document.createElement('style');
                    style.textContent = `
                        @keyframes shake {
                            0%, 100% {transform: translateX(0);}
                            10%, 30%, 50%, 70%, 90% {transform: translateX(-5px);}
                            20%, 40%, 60%, 80% {transform: translateX(5px);}
                        }
                    `;
                    document.head.appendChild(style);
                    
                    // Focus on the password field when there's an error
                    passwordInput.focus();
                }
            });
        });
    </script>
</body>
</html>
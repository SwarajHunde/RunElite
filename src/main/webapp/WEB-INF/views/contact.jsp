<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RunElite - Contact & Legal</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:'Segoe UI',sans-serif;}
        body{background:#f8f9fa;color:#333;line-height:1.6;}
        .container{max-width:1000px;margin:auto;padding:20px;}
        header{background:linear-gradient(135deg,#1a237e 0%,#283593 100%);color:white;padding:1.5rem 0;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        .header-content{max-width:1000px;margin:auto;display:flex;justify-content:space-between;align-items:center;padding:0 20px;}
        .logo{font-size:1.8rem;font-weight:700;color:white;text-decoration:none;}
        .logo span{color:#4fc3f7;}
        nav a{color:white;text-decoration:none;margin-left:2rem;font-weight:500;transition:color 0.3s;}
        nav a:hover{color:#4fc3f7;}
        .page-header{text-align:center;padding:2rem 0;background:linear-gradient(135deg,#e3f2fd 0%,#bbdefb 100%);margin-bottom:1rem;}
        .page-header h1{font-size:2rem;color:#1a237e;}
        .tabs{display:flex;flex-wrap:wrap;background:white;border-radius:10px 10px 0 0;overflow:hidden;box-shadow:0 5px 15px rgba(0,0,0,0.05);margin-bottom:0;}
        .tab-btn{padding:1rem 2rem;background:#f5f5f5;border:none;cursor:pointer;font-weight:600;color:#555;flex:1;min-width:150px;text-align:center;transition:all 0.3s;}
        .tab-btn.active{background:#1a237e;color:white;}
        .tab-btn:hover{background:#283593;color:white;}
        .tab-content{display:none;background:white;padding:2rem;border-radius:0 0 10px 10px;box-shadow:0 5px 15px rgba(0,0,0,0.05);margin-top:0;}
        .tab-content.active{display:block;}
        h2{color:#1a237e;margin-bottom:1rem;padding-bottom:0.5rem;border-bottom:2px solid #4fc3f7;}
        .contact-form input,.contact-form textarea{width:100%;padding:0.8rem;margin:0.5rem 0 1rem;border:1px solid #ddd;border-radius:5px;}
        .contact-form button{background:linear-gradient(135deg,#1a237e 0%,#283593 100%);color:white;padding:0.8rem 2rem;border:none;border-radius:5px;cursor:pointer;font-weight:600;}
        .info-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(250px,1fr));gap:1.5rem;margin:1.5rem 0;}
        .info-card{background:#f8f9ff;padding:1.5rem;border-radius:8px;border-left:4px solid #4fc3f7;}
        footer{background:#1a237e;color:white;text-align:center;padding:2rem 0;margin-top:2rem;}
        @media(max-width:768px){.header-content{flex-direction:column;}nav{margin-top:1rem;}nav a{margin:0 0.5rem;}.tab-btn{min-width:120px;}}
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <a href="Home" class="logo">Run<span>Elite</span></a>
            <nav>
                <a href="Home">Home</a>
                <a href="explore">Explore</a>
                <a href="events">Events</a>
                <a href="blog.html">Blog</a>
                <a href="contact">Contact</a>
            </nav>
        </div>
    </header>

    <div class="page-header">
        <div class="container">
            <h1>Contact & Legal Information</h1>
        </div>
    </div>

    <div class="container">
        <div class="tabs">
            <button class="tab-btn active" onclick="openTab('about')">About Us</button>
            <button class="tab-btn" onclick="openTab('contact')">Contact</button>
            <button class="tab-btn" onclick="openTab('privacy')">Privacy Policy</button>
            <button class="tab-btn" onclick="openTab('terms')">Terms of Service</button>
            <button class="tab-btn" onclick="openTab('partnership')">Partnership</button>
        </div>

        <div id="about" class="tab-content active">
            <h2>About RunElite</h2>
            <p>RunElite is India's premier running community platform, connecting elite runners, coaches, and fitness enthusiasts nationwide. Founded in 2020, we've grown to become the largest network of premium running groups in the country.</p>
            <p>Our mission is to elevate the running experience through technology, community, and expert guidance. We provide tools for real-time group tracking, performance analytics, and route planning to help runners achieve their goals.</p>
            <div class="info-grid">
                <div class="info-card">
                    <h3>Our Vision</h3>
                    <p>To build India's most connected and supportive running ecosystem.</p>
                </div>
                <div class="info-card">
                    <h3>Our Values</h3>
                    <p>Community, Excellence, Innovation, and Inclusivity in running.</p>
                </div>
                <div class="info-card">
                    <h3>Our Reach</h3>
                    <p>2,500+ active groups across 120+ cities with 85,000+ elite runners.</p>
                </div>
            </div>
        </div>

        <div id="contact" class="tab-content">
            <h2>Contact Us</h2>
            <div class="info-grid">
                <div class="info-card">
                    <h3>General Inquiries</h3>
                    <p>Email: info@runelite.in</p>
                    <p>Phone: +91-9699001821</p>
                </div>
                <div class="info-card">
                    <h3>Business Partnerships</h3>
                    <p>Email: partnerships@runelite.in</p>
                    <p>Phone: +91-7588309897</p>
                </div>
                <div class="info-card">
                    <h3>Technical Support</h3>
                    <p>Email: support@runelite.in</p>
                    <p>Phone: +91-909090909</p>
                </div>
                <div class="info-card">
                    <h3>Corporate Office</h3>
                    <p>RunElite Technologies Pvt. Ltd.</p>
                    <p>Singhad College,pune</p>
                </div>
            </div>
            <h3>Send us a Message</h3>
            <form class="contact-form">
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <input type="text" placeholder="Subject">
                <textarea rows="4" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>

        <div id="privacy" class="tab-content">
            <h2>Privacy Policy</h2>
            <p><strong>Last Updated:</strong> January 2024</p>
            <p>RunElite respects your privacy. This policy explains how we collect, use, and protect your information.</p>
            <h3>Information We Collect</h3>
            <p>• Account information (name, email, contact details)<br>• Running data and performance metrics<br>• Device and location information<br>• Communication preferences</p>
            <h3>How We Use Your Data</h3>
            <p>• To provide and improve our services<br>• To personalize your running experience<br>• To communicate with you about updates and events<br>• To ensure platform security</p>
            <h3>Data Security</h3>
            <p>We implement industry-standard security measures to protect your personal information from unauthorized access or disclosure.</p>
            <h3>Your Rights</h3>
            <p>You can access, correct, or delete your personal data anytime through your account settings or by contacting us.</p>
        </div>

        <div id="terms" class="tab-content">
            <h2>Terms of Service</h2>
            <p>By using RunElite, you agree to these terms:</p>
            <h3>Account Responsibilities</h3>
            <p>• You must provide accurate information<br>• You are responsible for account security<br>• Minimum age requirement: 16 years</p>
            <h3>Acceptable Use</h3>
            <p>• Use the platform for lawful purposes only<br>• Respect other community members<br>• Do not share harmful or misleading content<br>• Follow group rules and guidelines</p>
            <h3>Content Ownership</h3>
            <p>You retain ownership of your content but grant RunElite license to display and distribute it within the platform.</p>
            <h3>Termination</h3>
            <p>We reserve the right to suspend or terminate accounts that violate these terms or engage in harmful behavior.</p>
            <h3>Limitation of Liability</h3>
            <p>RunElite is not liable for injuries sustained during running activities organized through the platform. Users participate at their own risk.</p>
        </div>

        <div id="partnership" class="tab-content">
            <h2>Partnership Opportunities</h2>
            <p>Join forces with RunElite to reach India's most dedicated running community.</p>
            <div class="info-grid">
                <div class="info-card">
                    <h3>Brand Partnerships</h3>
                    <p>Collaborate with us for co-branded events, product launches, and marketing campaigns targeting elite runners.</p>
                </div>
                <div class="info-card">
                    <h3>Event Sponsorship</h3>
                    <p>Sponsor marathons, races, and running events organized through our platform.</p>
                </div>
                <div class="info-card">
                    <h3>Corporate Wellness</h3>
                    <p>Implement RunElite for your organization's employee wellness programs.</p>
                </div>
                <div class="info-card">
                    <h3>Technology Integration</h3>
                    <p>Integrate your fitness tech, apps, or devices with the RunElite platform.</p>
                </div>
            </div>
            <h3>Why Partner With Us?</h3>
            <p>• Access to 85,000+ elite runners nationwide<br>• Targeted engagement with fitness-conscious audience<br>• Premium brand association in running community<br>• Data-driven partnership insights and analytics</p>
            <h3>Get Started</h3>
            <p>Email us at partnerships@runelite.in with your proposal or partnership interest.</p>
        </div>
    </div>

    <footer>
        <div class="container">
            <p>&copy; 2024 RunElite. All rights reserved. | India's Premium Running Community</p>
        </div>
    </footer>

    <script>
        function openTab(tabName) {
            document.querySelectorAll('.tab-content').forEach(tab => tab.classList.remove('active'));
            document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
            document.getElementById(tabName).classList.add('active');
            event.currentTarget.classList.add('active');
        }
        
        document.querySelector('.contact-form').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you! Your message has been sent. We will respond within 24 hours.');
            this.reset();
        });
    </script>
</body>
</html>
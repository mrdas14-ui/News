<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Chronicle - Latest News Updates</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-YOUR_PUBLISHER_ID" crossorigin="anonymous"></script>
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #e74c3c;
            --light-color: #ecf0f1;
            --dark-color: #2c3e50;
            --text-color: #333;
            --text-light: #7f8c8d;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            background-color: #f5f5f5;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        /* Header Styles */
        header {
            background-color: var(--primary-color);
            color: white;
            padding: 1rem 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .header-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 1rem;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }
        
        .logo {
            font-size: 2rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }
        
        .logo span {
            color: var(--secondary-color);
        }
        
        .date-display {
            font-size: 0.9rem;
            color: var(--light-color);
        }
        
        .social-icons a {
            color: white;
            margin-left: 15px;
            font-size: 1.2rem;
            transition: color 0.3s;
        }
        
        .social-icons a:hover {
            color: var(--secondary-color);
        }
        
        /* Navigation */
        nav {
            padding-top: 1rem;
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-right: 20px;
        }
        
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: var(--secondary-color);
        }
        
        /* Hero Section */
        .hero {
            background-color: var(--dark-color);
            color: white;
            padding: 3rem 0;
            margin-bottom: 2rem;
            background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://via.placeholder.com/1200x400');
            background-size: cover;
            background-position: center;
        }
        
        .hero-content {
            max-width: 600px;
        }
        
        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        
        .hero p {
            margin-bottom: 1.5rem;
            font-size: 1.1rem;
        }
        
        .btn {
            display: inline-block;
            background-color: var(--secondary-color);
            color: white;
            padding: 0.7rem 1.5rem;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        
        .btn:hover {
            background-color: #c0392b;
        }
        
        /* Ad Containers */
        .ad-container {
            background-color: #f8f8f8;
            border: 1px solid #ddd;
            padding: 15px;
            margin: 20px 0;
            text-align: center;
            border-radius: 4px;
        }
        
        .ad-leaderboard {
            width: 100%;
            height: 90px;
            margin: 20px 0;
        }
        
        .ad-banner {
            width: 100%;
            height: 250px;
            margin: 20px 0;
        }
        
        .ad-square {
            width: 300px;
            height: 250px;
            margin: 20px auto;
        }
        
        /* Main Content */
        .main-content {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 2rem;
            margin-bottom: 2rem;
        }
        
        /* News Grid */
        .news-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }
        
        .news-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .news-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        
        .news-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        
        .news-card-content {
            padding: 1.5rem;
        }
        
        .news-card h3 {
            margin-bottom: 0.5rem;
            font-size: 1.2rem;
        }
        
        .news-card p {
            color: var(--text-light);
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }
        
        .news-card .meta {
            display: flex;
            justify-content: space-between;
            font-size: 0.8rem;
            color: var(--text-light);
        }
        
        .category-tag {
            display: inline-block;
            background-color: var(--secondary-color);
            color: white;
            padding: 0.2rem 0.5rem;
            border-radius: 4px;
            font-size: 0.7rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }
        
        /* Sidebar */
        .sidebar {
            background-color: white;
            padding: 1.5rem;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .sidebar h2 {
            font-size: 1.3rem;
            margin-bottom: 1rem;
            padding-bottom: 0.5rem;
            border-bottom: 2px solid var(--secondary-color);
        }
        
        .trending-list {
            list-style: none;
        }
        
        .trending-list li {
            padding: 0.8rem 0;
            border-bottom: 1px solid #eee;
        }
        
        .trending-list li:last-child {
            border-bottom: none;
        }
        
        .trending-list a {
            color: var(--text-color);
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .trending-list a:hover {
            color: var(--secondary-color);
        }
        
        .newsletter-form {
            margin-top: 2rem;
        }
        
        .newsletter-form input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
        /* Footer */
        footer {
            background-color: var(--dark-color);
            color: white;
            padding: 3rem 0 1rem;
        }
        
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }
        
        .footer-column h3 {
            font-size: 1.2rem;
            margin-bottom: 1rem;
            color: var(--light-color);
        }
        
        .footer-column ul {
            list-style: none;
        }
        
        .footer-column ul li {
            margin-bottom: 0.5rem;
        }
        
        .footer-column ul li a {
            color: var(--light-color);
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-column ul li a:hover {
            color: var(--secondary-color);
        }
        
        .copyright {
            text-align: center;
            padding-top: 1rem;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: var(--light-color);
            font-size: 0.9rem;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .header-top {
                flex-direction: column;
                text-align: center;
            }
            
            .social-icons {
                margin-top: 1rem;
            }
            
            nav ul {
                justify-content: center;
                flex-wrap: wrap;
            }
            
            nav ul li {
                margin-bottom: 0.5rem;
            }
            
            .main-content {
                grid-template-columns: 1fr;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .ad-square {
                width: 100%;
            }
        }
        
        @media (max-width: 480px) {
            .news-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="header-top">
                <a href="index.html" class="logo">Daily<span>Chronicle</span></a>
                <div class="date-display" id="currentDate"></div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Politics</a></li>
                    <li><a href="#">Business</a></li>
                    <li><a href="#">Technology</a></li>
                    <li><a href="#">Health</a></li>
                    <li><a href="#">Entertainment</a></li>
                    <li><a href="#">Sports</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <!-- Top Leaderboard Ad -->
    <div class="container">
        <div class="ad-container">
            <!-- Google AdSense Leaderboard -->
            <ins class="adsbygoogle ad-leaderboard"
                 style="display:block"
                 data-ad-client="ca-pub-9388222384972013"
                 data-ad-slot="1234567890"
                 data-ad-format="auto"
                 data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    </div>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <span class="category-tag">Breaking News</span>
                <h1>Global Summit Addresses Climate Change Crisis</h1>
                <p>World leaders gather to discuss urgent measures against rising global temperatures and extreme weather events affecting millions worldwide.</p>
                <a href="#" class="btn">Read Full Story</a>
            </div>
        </div>
    </section>
    
    <!-- Main Content -->
    <div class="container">
        <div class="main-content">
            <!-- News Articles -->
            <div class="news-articles">
                <h2>Latest Updates</h2>
                
                <!-- Banner Ad After First Section -->
                <div class="ad-container">
                    <!-- Google AdSense Banner -->
                    <ins class="adsbygoogle ad-banner"
                         style="display:block"
                         data-ad-client="ca-pub-YOUR_PUBLISHER_ID"
                         data-ad-slot="0987654321"
                         data-ad-format="auto"
                         data-full-width-responsive="true"></ins>
                    <script>
                         (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
                
                <div class="news-grid">
                    <!-- News Card 1 -->
                    <article class="news-card">
                        <img src="https://via.placeholder.com/400x300" alt="Tech Innovation">
                        <div class="news-card-content">
                            <span class="category-tag">Technology</span>
                            <h3>New AI Breakthrough Could Revolutionize Healthcare</h3>
                            <p>Researchers develop artificial intelligence system capable of predicting patient outcomes with 95% accuracy.</p>
                            <div class="meta">
                                <span>By John Smith</span>
                                <span>2 hours ago</span>
                            </div>
                        </div>
                    </article>
                    
                    <!-- News Card 2 -->
                    <article class="news-card">
                        <img src="https://via.placeholder.com/400x300" alt="Stock Market">
                        <div class="news-card-content">
                            <span class="category-tag">Business</span>
                            <h3>Stock Markets Reach Record Highs Amid Economic Recovery</h3>
                            <p>Global markets surge as positive economic indicators point to strong post-pandemic recovery.</p>
                            <div class="meta">
                                <span>By Sarah Johnson</span>
                                <span>4 hours ago</span>
                            </div>
                        </div>
                    </article>
                    
                    <!-- In-Content Ad (Mobile) -->
                    <div class="ad-container mobile-only">
                        <!-- Google AdSense Square -->
                        <ins class="adsbygoogle ad-square"
                             style="display:block"
                             data-ad-client="ca-pub-9388222384972013"
                             data-ad-slot="1122334455"
                             data-ad-format="auto"
                             data-full-width-responsive="true"></ins>
                        <script>
                             (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                    
                    <!-- News Card 3 -->
                    <article class="news-card">
                        <img src="https://via.placeholder.com/400x300" alt="Sports">
                        <div class="news-card-content">
                            <span class="category-tag">Sports</span>
                            <h3>Underdog Team Wins Championship in Stunning Upset</h3>
                            <p>Against all odds, the underdogs secure victory in the final moments of the championship game.</p>
                            <div class="meta">
                                <span>By Mike Thompson</span>
                                <span>6 hours ago</span>
                            </div>
                        </div>
                    </article>
                    
                    <!-- News Card 4 -->
                    <article class="news-card">
                        <img src="https://via.placeholder.com/400x300" alt="Health">
                        <div class="news-card-content">
                            <span class="category-tag">Health</span>
                            <h3>New Study Reveals Benefits of Mediterranean Diet</h3>
                            <p>Research confirms significant health improvements for those following Mediterranean eating patterns.</p>
                            <div class="meta">
                                <span>By Dr. Emily Chen</span>
                                <span>8 hours ago</span>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
            
            <!-- Sidebar -->
            <aside class="sidebar">
                <h2>Trending Now</h2>
                <ul class="trending-list">
                    <li><a href="#">Celebrity Couple Announces Surprise Engagement</a></li>
                    <li><a href="#">Major Tech Company Unveils Revolutionary New Product</a></li>
                    <li><a href="#">Scientists Discover New Species in Amazon Rainforest</a></li>
                    <li><a href="#">City Council Approves Controversial Development Plan</a></li>
                    <li><a href="#">Popular Streaming Service Announces Price Changes</a></li>
                </ul>
                
                <!-- Sidebar Ad -->
                <div class="ad-container">
                    <!-- Google AdSense Square -->
                    <ins class="adsbygoogle ad-square"
                         style="display:block"
                         data-ad-client="ca-pub-9388222384972013"
                         data-ad-slot="5566778899"
                         data-ad-format="auto"
                         data-full-width-responsive="true"></ins>
                    <script>
                         (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
                
                <div class="newsletter-form">
                    <h2>Subscribe to Newsletter</h2>
                    <p>Get the latest news delivered to your inbox daily.</p>
                    <form>
                        <input type="text" placeholder="Your Name">
                        <input type="email" placeholder="Your Email">
                        <button type="submit" class="btn">Subscribe</button>
                    </form>
                </div>
            </aside>
        </div>
        
        <!-- Bottom Leaderboard Ad -->
        <div class="ad-container">
            <!-- Google AdSense Leaderboard -->
            <ins class="adsbygoogle ad-leaderboard"
                 style="display:block"
                 data-ad-client="ca-pub-9388222384972013"
                 data-ad-slot="9876543210"
                 data-ad-format="auto"
                 data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    </div>
    
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>About Us</h3>
                    <p>Daily Chronicle brings you accurate, up-to-date news from around the world with a commitment to journalistic integrity.</p>
                </div>
                
                <div class="footer-column">
                    <h3>Categories</h3>
                    <ul>
                        <li><a href="#">Politics</a></li>
                        <li><a href="#">Business</a></li>
                        <li><a href="#">Technology</a></li>
                        <li><a href="#">Health</a></li>
                        <li><a href="#">Entertainment</a></li>
                    </ul>
                </div> 
<div class="footer-column">
<h3>Company</h3>
<ul>
<li><a href="#">Contact Us</a></li>
<li><a href="#">Careers</a></li>
<li><a href="#">Advertise</a></li>
<li><a href="#">Privacy Policy</a></li>
<li><a href="#">Terms of Service</a></li>
</ul>
</div>

<div class="footer-column">
<h3>Connect With Us</h3>
<div class="social-icons">
<a href="#"><i class="fab fa-facebook-f"></i></a>
<a href="#"><i class="fab fa-twitter"></i></a>
<a href="#"><i class="fab fa-instagram"></i></a>
<a href="#"><i class="fab fa-linkedin-in"></i></a>
<a href="#"><i class="fab fa-youtube"></i></a>
</div>
</div>
</div>

<div class="copyright">
<p>&copy; <span id="currentYear"></span> Daily Chronicle. All Rights Reserved.</p>
</div>
</div>
</footer>

<script>
// Display current date
const now = new Date();
const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
document.getElementById('currentDate').textContent = now.toLocaleDateString('en-US', options);

// Display current year in footer
document.getElementById('currentYear').textContent = now.getFullYear();

// Initialize all ads
document.addEventListener('DOMContentLoaded', function() {
// You can add ad-related JavaScript here if needed
});
</script>
</body>
</html>

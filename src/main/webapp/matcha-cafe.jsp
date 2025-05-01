<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, width=device-width">
    <title>Matcha Cafe</title>

    <link rel="stylesheet" href="matcha-cafe.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Comic+Neue:wght@300;700&family=Lobster+Two:ital,wght@0,400;0,700;1,400;1,700&family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Afacad:wght@400;700&display=swap" />
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:wght@300;700&family=Lobster+Two:ital,wght@0,400;0,700;1,400;1,700&family=Pacifico&display=swap" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/loaders/GLTFLoader.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/three@0.128.0/examples/js/controls/OrbitControls.js"></script>

</head>
<body>

<header>
    <div class="logo">
        <div class="header-blur"></div>
        <img class="matcha-logo" src="photos/matcha_logo.png" alt="Matcha Logo">
        <h1 class="matcha-cafe">Matcha Cafe</h1>
    </div>
    <nav>
        <button id="main_b" type="button" class="nav-btn" data-target="section1">Main</button>
        <button id="menu_b" type="button" class="nav-btn" data-target="section2">Menu</button>
        <button id="matcha_b" type="button" class="nav-btn" data-target="section3">Matcha</button>
        <button id="about_b" type="button" class="nav-btn" data-target="section4">About Us</button>
    </nav>
</header>

<main>
    <section id="section1">
        <img class="gradient-1" alt="" src="photos/Matcha_gradient.png">
        <div id="scene1" class="model-1"></div>
        <div class="explore-our-space">
            <p>Explore our</p>
            <p>space</p>
        </div>
        <b class="for-matcha-lovers">for matcha lovers</b>
        <button id="get-started" type="button" class="scroll-btn" data-target="section2">Get started</button>
    </section>

    <section id="section2">
        <img class="gradient-2" alt="" src="photos/Matcha_gradient3.png">
        <div id="scene2" class="model-2"></div>
        <div class="menu">Menu</div>
        <div class="menu1-container">
            <ul>
                <li>coffee</li>
                <li>americano</li>
                <li>cappuccino</li>
                <li>espresso</li>
                <li>macchiato</li>
            </ul>
        </div>
        <div class="menu2-container">
            <ul>
                <li>mocha</li>
                <li>chai latte</li>
                <li>matcha latte</li>
                <li>vanilla latte</li>
                <li>hot chocolate</li>
            </ul>
        </div>
        <div class="menu3-container">
            <ul>
                <li>cake slices</li>
                <li>heart cookies</li>
                <li>mochi macarons</li>
                <li>cupcakes</li>
                <li>donuts</li>
            </ul>
        </div>
        <button id="next" type="button" class="scroll-btn" data-target="section3">Next</button>
    </section>

    <section id="section3">
        <img class="gradient-3" alt="" src="photos/Matcha_gradient.png">
        <div id="scene3" class="model-3"></div>
        <div class="main-inner"></div>
        <div class="matcha">Matcha We Use</div>
        <div class="matcha-text">
            <p>We serve four types of high-quality matcha:</p>
            <ul>
                <li>
                    <b>Ceremonial Grade</b> <span>- Smooth, vibrant, and perfect for traditional whisked matcha.</span>
                </li>
                <li>
                    <b>Premium Grade</b> <span>- Rich and balanced, ideal for lattes and iced drinks.</span>
                </li>
                <li>
                    <b>Culinary Grade</b> <span>- Bold and earthy, great for desserts and smoothies.</span>
                </li>
                <li>
                    <b>Organic Matcha</b> <span>- Pure, pesticide-free matcha in both ceremonial and culinary forms.</span>
                </li>
            </ul>
            <p>Each type is carefully selected to bring out the best in every sip and bite.</p>
        </div>
        <button id="next1" type="button" class="scroll-btn" data-target="section4">Next</button>
    </section>

    <section id="section4">
        <img class="gradient-4" alt="" src="photos/Matcha_gradient2.png">
        <div id="scene4" class="model-4"></div>
        <div class="about">About Cafe</div>
        <div class="about-text">
            <p>Welcome to our cozy Matcha Cafe - your go-to spot for all things green and serene. We specialize in premium Japanese matcha drinks, handcrafted desserts, and peaceful vibes. Whether you're here to catch up with friends, get some work done, or simply slow down with a warm bowl of matcha, we've got a seat waiting for you.</p>
            <p>Sourced from trusted farms in Japan and made with care, every cup is a little moment of calm. Come sip, relax, and stay a while.</p>
        </div>
        <button id="finish" type="button" class="scroll-btn" data-target="section1">Finish</button>
    </section>
</main>

<script src="js/main.js"></script>

</body>
</html>
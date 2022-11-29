<%-- 
    Document   : index
    Created on : 11 26, 22, 11:04:43 PM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LAND Games Store</title>
        <style>
            header {
                width: 100%;
                height: 50px;
                background-color: #32a660;
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: fixed;
                top: 0;
                margin-left: -10px;
            }

            h1 {
                font-size: min(5vw, 1.2em);
                text-align: center;
                padding: 0.2rem;
                margin: 0 10px 0.2rem;
                color: black;
            }

            a {
                text-decoration: none;
            }

            .logout {
                color: black;
                font-size: min(4vw, 1em);
                text-align: center;
                padding: 0.2rem;
                margin: 0 0.2rem;
            }

            .logout:hover {
                background-color: #dfdfe2;
                color: #1b1b32;
                cursor: pointer;
            }

            .links{
                display: flex;
                flex-wrap: nowrap;
            }

            body{
                background-color: #52422d;
            }

            main {
                margin-top: 60px;
                max-width: 90%;
                margin-left: auto;
                margin-right: auto;
            }

            section {
                display: flex;
                flex-direction: row;
                justify-content: space-evenly;
                flex-wrap: nowrap;
            }

            .content {
                max-width: 150px;
                border: 1px solid white;
                padding: 5px;
            }

            img {
                height: 190px;
                width: 140px;
            }

            h4, p{
                color: white;
            }

            p {
                margin-top: -5px;
                text-align: center;
            }

            hr {
                margin-top: 5px;
                height: 1px;
                background-color: #ffffff;
                border-color: #ffffff;
            }

            .line{
                margin-top: -10px;
                width: 90%;
            }

            form {
                margin-left: 35px;
            }
            
            .counter {
                margin-left: 20px;
                max-width: 30px;
            }
        </style>
    </head>
    <body>
        <header>
            <div>
                <h1>LAND GAMES STORE</h1>
            </div>
            <div class="links">
                <a href="" class="logout">Login/SignUp</a>
                <a href="" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <h4>Most popular</h4>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>                
            </section>
            <h4>New Releases</h4>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0"/>
                        <button>Add to Cart</button>
                    </form>
                </div>
            </section>
        </main>
    </body>
</html>

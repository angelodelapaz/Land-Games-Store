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
        <link rel="stylesheet" href="indexstyles.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
        <title>LAND Games Store</title>
    </head>
    <body>
        <header class="navbar">
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
                    <form action="process">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="Overwatch">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg" alt="Overwatch">
                    <p>Overwatch</p>
                    <hr class="line">
                    <form action="process">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="Valorant">
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

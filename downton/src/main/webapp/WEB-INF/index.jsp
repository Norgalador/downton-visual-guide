<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet"
        type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Wire+One" rel="stylesheet" type="text/css">
    <link href="..resources/static/css/index.css" rel="stylesheet">
    <title>Downton: A Visual Guide</title>
</head>

<body>
    <audio autoplay loop>
        <source src="../static/media/DowntonAbbeyTheme.mp3" type="audio/mpeg" />
    </audio>
    <header>
        <!-- navbar -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
            <div class="container">
                <a class="navbar-brand">Downton: A Visual Guide</a>
                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto offset-8">
                        <!-- Button dropdown login form -->
                        <div class="dropdown">
                            <a type="button" class="btn btn-primary dropdown-toggle m-3 px-2" data-bs-toggle="dropdown">
                                Login
                            </a>
                            <div class="dropdown-menu p-3 m-3">
                                <form class="px-7 py-4">
                                    <div class="mb-3">
                                        <label for="exampleDropdownFormEmail1" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleDropdownFormEmail1"
                                            placeholder="email@example.com">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="exampleDropdownFormPassword1"
                                            placeholder="Password">
                                    </div>
                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="dropdownCheck">
                                            <label class="form-check-label" for="dropdownCheck">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sign in</button>
                                </form>
                            </div>
                        </div>
                        <!-- End dropdown -->
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Wiki</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">About</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End navbar -->
        <section>
            <div id="intro" class="bg-image vh-100">
                <div class="mask" style="background-color: rgba(250, 182, 162, 0.15);"></div>
        </section>
    </header>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>
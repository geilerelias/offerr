<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@yield('title')</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">

    <style>

        .error-title {
            font-size: 150px;
            font-weight: 900;
            text-shadow: 4px 4px 0 #fff, 6px 6px 0 #343a40;
            line-height: 210px;
        }

        .error-box {
            height: 100%;
            width: 100%;
            position: fixed;
            background-position: top;
            background-repeat: no-repeat;
            background-image: url("/images/error-bg.jpg");
        }
    </style>

</head>
<body class="antialiased">
<div class="error-box relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center sm:pt-0">
    <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
        <div class="flex items-center pt-8 sm:justify-start sm:pt-0">
            <div class="misc-inner p-2 p-sm-3">
                <div class="w-100 text-center">

                    <h1 class="error-title error--text text-red-700">
                        @yield('code')
                    </h1>

                    <h2 class=" tracking-tight font-extrabold text-gray-900 text-3xl sm:text-4xl md:text-5xl">
                        <span class="block xl:inline">
                             @yield('message')
                        </span>
                    </h2>

                    <p class="mb-2">
                        @yield('description')
                    </p>

                    <div class="btn-group mt-4">
                        <a href="/"
                           class="btn-primary transition duration-300 ease-in-out focus:outline-none focus:shadow-outline bg-blue-600 hover:bg-blue-700 text-white font-normal py-2 px-4 mr-1 rounded">
                            Ir a inicio
                        </a>
                        <a href="{{url()->previous()}}"
                           class="btn-outline-primary transition duration-300 ease-in-out focus:outline-none focus:shadow-outline border border-blue-600 hover:bg-blue-700 text-blue-700 hover:text-white font-normal py-2 px-4 rounded">
                            Volver
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

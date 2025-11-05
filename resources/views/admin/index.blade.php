<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WS Games</title>
    @vite('resources/css/admin.css')
</head>
<body>
    <header>
        <div>
            <h1><a href="{{ url('admin') }}">WS Games</a></h1>
            <nav>
                <ul>
                    <li><a href="{{ url('admin/users') }}">Admin Users</a></li>
                    <li><a href="{{ url('admin/platform-users') }}">Platform Users</a></li>
                    <li><a href="{{ url('admin/games') }}">Games</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <h2>Admin Users</h2>
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Created at</th>
                    <th>Last login</th>
                </tr>
            </thead>
        </table>
    </main>

    <footer>
        <div>
            <p>&copy; Ethan Lacibal | COMTEQ Computer and Business College, 2025</p>
        </div>
    </footer>
</body>
</html>


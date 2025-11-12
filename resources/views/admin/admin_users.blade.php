<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Users | WS Games</title>
    @vite('resources/css/admin.css')
</head>
<body>
    <header>
        <h1><a href="{{ url('admin') }}">WS Games</a></h1>
        <nav>
            <ul>
                <li><a href="{{ url('admin/users') }}">Admin Users</a></li>
                <li><a href="{{ url('admin/platform-users') }}">Platform Users</a></li>
                <li><a href="{{ url('admin/games') }}">Games</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Admin Users</h2>

        @if(isset($admins) && $admins->isEmpty())
            <p>No admin users found.</p>
        @else
            <table border="1" cellpadding="5" cellspacing="0">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Created at</th>
                        <th>Last login</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($admins as $admin)
                        <tr>
                            <td>{{ $admin->username }}</td>
                            <td>{{ $admin->created_at }}</td>
                            <td>{{ $admin->last_login }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif
    </main>

    <footer>
        <p>&copy; Ethan Lacibal | COMTEQ Computer and Business College, 2025</p>
    </footer>
</body>
</html>

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('admin.dashboard') }}">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Chức năng chính
    </div>

    <li @class([
        'nav-item',
        'active' => request()->routeIs('admin.agencies.*'),
    ])>
        <a class="nav-link" href="{{ route('admin.agencies.index') }}">
            <i class="fas fa-fw fa-building"></i>
            <span>Quản lý đơn vị</span>
        </a>
    </li>

    <li @class([
        'nav-item',
        'active' => request()->routeIs('admin.departments.*'),
    ])>
        <a class="nav-link" href="{{ route('admin.departments.index') }}">
            <i class="fas fa-fw fa-users"></i>
            <span>Quản lý phòng ban</span>
        </a>
    </li>

    <li @class([
        'nav-item',
        'active' => request()->routeIs('admin.positions.*'),
    ])>
        <a class="nav-link" href="{{ route('admin.positions.index') }}">
            <i class="fas fa-fw fa-couch"></i>
            <span>Quản lý chức vụ</span>
        </a>
    </li>

    <li @class(['nav-item', 'active' => request()->routeIs('admin.users.*')])>
        <a class="nav-link" href="{{ route('admin.users.index') }}">
            <i class="fas fa-fw fa-user"></i>
            <span>Quản lý nhân viên</span>
        </a>
    </li>

    <li @class(['nav-item', 'active' => request()->routeIs('admin.tours.*')])>
        <a class="nav-link" href="{{ route('admin.tours.index') }}">
            <i class="fas fa-fw fa-bus"></i>
            <span>Quản lý tour</span>
        </a>
    </li>

    <li @class([
        'nav-item',
        'active' => request()->routeIs('admin.supports.*'),
    ])>
        <a class="nav-link" href="{{ route('admin.supports.index') }}">
            <i class="fas fa-fw fa-coins"></i>
            <span>Quản lý kinh phí hỗ trợ</span>
        </a>
    </li>

    <li @class([
        'nav-item',
        'active' => request()->routeIs('admin.tour_registrations.*'),
    ])>
        <a class="nav-link" href="{{ route('admin.tour_registrations.index') }}">
            <i class="fas fa-fw fa-registered"></i>
            <span>Quản lý đăng ký tour</span>
        </a>
    </li>

    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>


</ul>

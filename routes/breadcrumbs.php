<?php

use App\Models\Agency;
use App\Models\Department;
use DaveJamesMiller\Breadcrumbs\Facades\Breadcrumbs;

Breadcrumbs::for('agencies', function ($trail) {
    $trail->push('Quản lý đơn vị', route('admin.agencies.index'));
});

Breadcrumbs::for('departments', function ($trail, Agency $agency) {
    $trail->parent('agencies');
    $trail->push("Quản lý phòng ban ({$agency->name})", route('admin.agencies.departments.index', [
        'agencySlug' => $agency->slug
    ]));
});

Breadcrumbs::for('positions', function ($trail, Department $department) {
    $trail->parent('departments', Agency::findOrFail($department->agency_id));
    $trail->push("Quản lý chức vụ  ({$department->name})", route('admin.agencies.departments.positions.index', [
        'agencySlug' => request()->route('agencySlug'),
        'departmentSlug' => $department->slug
    ]));
});

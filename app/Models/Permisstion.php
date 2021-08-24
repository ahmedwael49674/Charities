<?php

namespace App\Models;

class Permisstion
{
    const employee           = ['application:create'];
    const admin              = ['charity:update', 'application:viewAny'];
    const admin_applications = ['application:update'];
    const admin_reports      = ['report:viewAny'];
}

<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AppendJsonHeaders
{
    /**
     * add json headers to all api calls
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $request->headers->set('Accept', 'application/json');
        $request->headers->set('Content-Type', 'application/json');

        return $next($request);
    }
}

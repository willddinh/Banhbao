<?php

namespace Fully\Http\Middleware;

use Closure;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as BaseVerifier;

class VerifyCsrfToken extends BaseVerifier
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $this->_maxUploadFileSize();
        return parent::handle($request, $next);
    }

    private function _maxUploadFileSize()
    {
        if(!(request()->isMethod('POST') || request()->isMethod('PUT'))) {
            return;
        }
        // Get the max upload size (in Mb, so convert it to bytes)
        $maxUploadSize = 1024 * 1024 * ini_get('post_max_size');
        $contentSize = 0;

        if(isset($_SERVER['HTTP_CONTENT_LENGTH'])) {
            $contentSize = $_SERVER['HTTP_CONTENT_LENGTH'];
        } else if(isset($_SERVER['CONTENT_LENGTH'])) {
            $contentSize = $_SERVER['CONTENT_LENGTH'];
        }

        if($contentSize > $maxUploadSize) {
            throw new \Exception('Max file upload size exceeded.');
        }
    }
}

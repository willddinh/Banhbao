<?php

namespace Fully\Events\Observer;

use Fully\Models\BaseModel;
use Sentinel;

class UserAuditObserver
{

    public function saving(BaseModel $model)
    {
            $user = Sentinel::check();
            $model->created_by = $user->getUserId();
    }

    public function saved($model)
    {
        //
    }
}

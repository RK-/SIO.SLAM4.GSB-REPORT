<?php

namespace GSB\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class GSBUserBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}

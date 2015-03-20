<?php

namespace GSB\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('GSBUserBundle:Default:index.html.twig', array('name' => $name));
    }
}

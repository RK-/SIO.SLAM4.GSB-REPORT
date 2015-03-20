<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('GSBReportBundle:Default:index.html.twig', array('name' => $name));
    }
}

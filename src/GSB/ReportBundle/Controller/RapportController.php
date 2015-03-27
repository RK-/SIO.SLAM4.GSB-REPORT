<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class RapportController extends Controller
{
    public function indexAction()
    {
        return $this->render('GSBReportBundle:Rapport:index.html.twig');
    }
    
    public function afficherAction()
    {
        $em = $this->getDoctrine()->getManager();
        $rapports = $em->getRepository('GSBReportBundle:Rapportvisite')->findAll();
        return $this->render('GSBReportBundle:Rapport:afficher.html.twig', array(
            'rapports' => $rapports
        ));
    }
}

<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class PraticienController extends Controller
{
    public function afficherAction()
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')->findAll();
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
            'praticiens' => $praticiens
        ));
    }
}

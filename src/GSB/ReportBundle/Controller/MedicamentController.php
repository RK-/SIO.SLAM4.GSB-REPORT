<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MedicamentController extends Controller
{
    public function afficherAction()
    {
        $em = $this->getDoctrine()->getManager();
        $medicaments = $em->getRepository('GSBReportBundle:Medicament')->findAll();
        return $this->render('GSBReportBundle:Medicament:afficher.html.twig', array(
            'medicaments' => $medicaments
        ));
    }
}
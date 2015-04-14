<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class MedicamentController extends Controller {

    public function afficherAction() {
        $em = $this->getDoctrine()->getManager();
        $medicaments = $em->getRepository('GSBReportBundle:Medicament')->getMedicaments();
        return $this->render('GSBReportBundle:Medicament:afficher.html.twig', array(
                    'medicaments' => $medicaments
        ));
    }

    public function afficherFamilleAction($id) {
        $em = $this->getDoctrine()->getManager();
        $medicaments = $em->getRepository('GSBReportBundle:Medicament')->getMedicamentsByFamille($id);
        return $this->render('GSBReportBundle:Medicament:afficher.html.twig', array(
                    'medicaments' => $medicaments
        ));
    }

    public function rechercherAction(Request $request) {
        $form = $this->createFormBuilder()
                ->add('famille', 'entity', array(
                    'class' => 'GSBReportBundle:Famille',
                    'property' => 'libelleFamille',
                    'expanded' => false,
                    'multiple' => false,
                    'empty_value' => false
                ))
                ->add('rechercher', 'submit')
                ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()) {
            $famille = $form->get('famille')->getData();
            return $this->redirect($this->generateUrl('gsb_report_medicaments_famille', array('id' => $famille->getId())));
        }
        return $this->render('GSBReportBundle:Medicament:rechercher.html.twig', array(
                    'form' => $form->createView()
        ));
    }

}

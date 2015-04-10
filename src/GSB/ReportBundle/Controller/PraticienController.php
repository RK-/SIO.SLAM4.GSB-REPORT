<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

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
    
    public function afficherTypeAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')->getPraticiensByType($id);
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
            'praticiens' => $praticiens
        ));
    }
    
    public function afficherAvanceAction($nom, $ville)
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')->getPraticiensByAvance($nom, $ville);
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
            'praticiens' => $praticiens
        ));
    }
    
    public function rechercherAction(Request $request) {
        $form = $this->createFormBuilder()
            ->add('type', 'entity', array(
                'class' => 'GSBReportBundle:Typepraticien',
                'property' => 'libelleType',
                'expanded' => false,
                'multiple' => false,
                'empty_value' => false
            ))
            ->add('rechercher', 'submit')
            ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()) {
            $type = $form->get('type')->getData();
            return $this->redirect($this->generateUrl('gsb_report_praticiens_type', array('id' => $type->getId())));
        }
        
        $formAvance = $this->createFormBuilder()
            ->add('nom', 'text', array(
                'required' => false))
            ->add('ville', 'text', array(
                'required' => false))
            ->add('rechercher', 'submit')
            ->getForm();
        $formAvance->handleRequest($request);
        if ($formAvance->isValid()) {
            if (empty($formAvance->get('nom')->getData())) {
                $nom = "all";
            } else {
                $nom = $formAvance->get('nom')->getData();
            }
            if (empty($formAvance->get('ville')->getData())) {
                $ville = "all";
            } else {
                $ville = $formAvance->get('ville')->getData();
            }
            return $this->redirect($this->generateUrl(
                    'gsb_report_praticiens_avance',
                    array(
                        'nom' => $nom,
                        'ville' => $ville
                    )));
        }
        return $this->render('GSBReportBundle:Praticien:rechercher.html.twig', array(
            'form' => $form->createView(),
            'formAvance' => $formAvance->createView()
        ));
    }
}

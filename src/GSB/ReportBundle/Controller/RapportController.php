<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use GSB\ReportBundle\Entity\Rapportvisite;

class RapportController extends Controller {

    public function indexAction() {
        return $this->render('GSBReportBundle:Rapport:index.html.twig');
    }

    public function afficherAction() {
        $em = $this->getDoctrine()->getManager();
        $rapports = $em->getRepository('GSBReportBundle:Rapportvisite')->findAll();
        return $this->render('GSBReportBundle:Rapport:afficher.html.twig', array(
                    'rapports' => $rapports
        ));
    }

    public function ajouterAction(Request $request) {
        $rapport = new Rapportvisite();
        $rapport->setDateRapport(new \Datetime());
        $form = $this->get('form.factory')->createBuilder('form', $rapport)
                ->add('dateRapport', 'date', array(
                    'input' => 'datetime',
                    'widget' => 'single_text',
                    'format' => 'dd/MM/yyyy'
                ))
                ->add('bilan', 'text')
                ->add('motif', 'textarea')
                ->add('medecin', 'entity', array(
                    'class' => 'GSBReportBundle:Praticien',
                    'property' => 'NomPrenom',
                    'expanded' => false,
                    'multiple' => false,
                    'empty_value' => false
                ))
                ->add('Enregistrer', 'submit')
                ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()) {
            $visiteur = $this->container->get('security.context')->getToken()->getUser();
            $em = $this->getDoctrine()->getManager();
            $rapport->setVisiteur($visiteur);
            $em->persist($rapport);
            $em->flush();
            $request->getSession()->getFlashBag()->add('notif', 'Le rapport a bien été enregistré ! ');
            return $this->redirect($this->generateUrl('gsb_report_rapports'));
        }
        return $this->render('GSBReportBundle:Rapport:ajouter.html.twig', array(
            'form' => $form->createView()
        ));
    }
}

<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Controlleur pour gérer les Médicaments.
 */
class MedicamentController extends Controller 
{
    /**
     * Afficher tous les médicaments.
     * 
     * @return la vue Médicament/afficher.html.twig
     */
    public function afficherAction() 
    {
        $em = $this->getDoctrine()->getManager();
        $medicaments = $em->getRepository('GSBReportBundle:Medicament')
                          ->getMedicaments();
        
        return $this->render('GSBReportBundle:Medicament:afficher.html.twig', array(
                    'medicaments' => $medicaments
        ));
    }
    
    /**
     * Afficher tous les médicaments de la même Famille dont l'id est donné
     *  en paramètre.
     * 
     * @param int $id l'id de la Famille.
     * @return la vue Médicament/afficher.html.twig
     */
    public function afficherFamilleAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $medicaments = $em->getRepository('GSBReportBundle:Medicament')
                          ->getMedicamentsByFamille($id);
        
        return $this->render('GSBReportBundle:Medicament:afficher.html.twig', array(
                    'medicaments' => $medicaments
        ));
    }
    
    /**
     * Afficher un formulaire de recherche par Famille de médicament.
     * 
     * @param Request $request les informations retourné par le formulaire.
     * @return la vue Médicament/rechercher.html.twig
     */
    public function rechercherAction(Request $request)
    {
        // création du formulaire
        $form = $this->createFormBuilder()
                ->add('famille', 'entity', array(
                      'class'        => 'GSBReportBundle:Famille',
                      'property'    => 'libelleFamille',
                      'expanded'    => false,
                      'multiple'    => false,
                      'empty_value' => false))
                ->add('rechercher', 'submit')
                ->getForm();
        
        $form->handleRequest($request);
        // si le formulaire est transmis
        if ($form->isValid()) {
            $famille = $form->get('famille')->getData();
            
            // on retourne pour utiliser l'action afficherFamilleAction($id)
            return $this->redirect(
                        $this->generateUrl('gsb_report_medicaments_famille',
                                array('id' => $famille->getId())
                                ));
        }
        
        return $this->render('GSBReportBundle:Medicament:rechercher.html.twig', array(
                    'form' => $form->createView()
        ));
    }

}

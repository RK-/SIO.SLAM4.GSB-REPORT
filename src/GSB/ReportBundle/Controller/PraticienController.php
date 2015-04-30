<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Controlleur pour gérer les Praticiens.
 */
class PraticienController extends Controller 
{
    /**
     * Afficher tous les praticiens.
     * 
     * @return la vue Praticien/afficher.html.twig
     */
    public function afficherAction() 
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')
                         ->getPraticiens();
        
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
                    'praticiens' => $praticiens
        ));
    }

    /**
     * Afficher tous les praticiens de même type dont l'id est donné en paramètre.
     * 
     * @param int $id l'id du Typepraticien
     * @return la vue Praticien/afficher.html.twig
     */
    public function afficherTypeAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')
                         ->getPraticiensByType($id);
        
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
                    'praticiens' => $praticiens
        ));
    }

    /**
     * Afficher tous les praticiens possédant le nom et/ou la ville donnés en 
     *  paramètre.
     * 
     * @param String $nom le nom du praticien
     * @param String $ville la ville du praticien
     * @return la vue Praticien/afficher.html.twig
     */
    public function afficherAvanceAction($nom, $ville) 
    {
        $em = $this->getDoctrine()->getManager();
        $praticiens = $em->getRepository('GSBReportBundle:Praticien')
                         ->getPraticiensByAvance($nom, $ville);
        
        return $this->render('GSBReportBundle:Praticien:afficher.html.twig', array(
                    'praticiens' => $praticiens
        ));
    }

    /**
     * 
     * @param Request $request les informations retourné par le formulaire.
     * @return la vue Praticien/rechercher.html.twig
     */
    public function rechercherAction(Request $request)
    {
        // premier formulaire : Simple
        $form = $this->createFormBuilder()
                    ->add('type', 'entity', array(
                        'class'       => 'GSBReportBundle:Typepraticien',
                        'property'    => 'libelleType',
                        'expanded'    => false,
                        'multiple'    => false,
                        'empty_value' => false))
                    ->add('rechercher', 'submit')
                    ->getForm();
        $form->handleRequest($request);
        
        // si le formulaire est transmis
        if ($form->isValid()) {
            $type = $form->get('type')->getData();
            
            // on retourne pour utiliser l'action afficherTypeAction($id)
            return $this->redirect(
                        $this->generateUrl('gsb_report_praticiens_type',
                                array('id' => $type->getId())
                        ));
        }
        
        // deuxième formulaire : Avancé
        $formAvance = $this->createFormBuilder()
                        ->add('nom', 'text', array(
                            'required' => false))
                        ->add('ville', 'text', array(
                            'required' => false))
                        ->add('rechercher', 'submit')
                        ->getForm();
        $formAvance->handleRequest($request);
        
        // si le formulaire est transmis
        if ($formAvance->isValid()) {
            $nom = $formAvance->get('nom')->getData();
            if (empty($nom)) {
                $nom = "all";
            }
            
            $ville = $formAvance->get('ville')->getData();
            if (empty($ville)) {
                $ville = "all";
            }
            
            // on retourne pour utiliser l'action afficherAvanceAction($nom, $ville)
            return $this->redirect(
                        $this->generateUrl(
                            'gsb_report_praticiens_avance', array(
                                'nom'   => $nom,
                                'ville' => $ville))
                    );
        }
        
        return $this->render('GSBReportBundle:Praticien:rechercher.html.twig', array(
                    'form' => $form->createView(),
                    'formAvance' => $formAvance->createView()
        ));
    }

}

<?php

namespace GSB\ReportBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use GSB\ReportBundle\Entity\Rapportvisite;

/**
 * Controlleur pour gérer les Rapports.
 */
class RapportController extends Controller 
{

    /**
     * Afficher la page d'accueil du site.
     * 
     * @return la vue Rapport/index.html.twig
     */
    public function indexAction()
    {
        return $this->render('GSBReportBundle:Rapport:index.html.twig');
    }

    /**
     * Afficher tous les rapports.
     * 
     * @return la vue Rapport/afficher.html.twig
     */
    public function afficherAction() {
        $em = $this->getDoctrine()->getManager();
        $rapports = $em->getRepository('GSBReportBundle:Rapportvisite')
                       ->getRapports();
        
        return $this->render('GSBReportBundle:Rapport:afficher.html.twig', array(
                    'rapports' => $rapports
        ));
    }
    
    /**
     * Ajouter un rapport.
     * 
     * @param Request $request les informations retourné par le formulaire.
     * @return la vue Rapport/ajouter.html.twig
     */
    public function ajouterAction(Request $request) {
        
        // instanciation d'un objet Rapportvisite
        $rapport = new Rapportvisite();
        // on lui définis la date du jour, peut être modifié dans le formulaire
        $rapport->setDateRapport(new \Datetime());
        // créatiion du formulaire
        $form = $this->get('form.factory')
                    ->createBuilder('form', $rapport)
                    ->add('dateRapport', 'genemu_jquerydate', array(
                        'widget' => 'single_text'))
                    ->add('bilan', 'text')
                    ->add('motif', 'textarea')
                    ->add('medecin', 'entity', array(
                        'class' => 'GSBReportBundle:Praticien',
                        'property' => 'NomPrenom',
                        'expanded' => false,
                        'multiple' => false,
                        'empty_value' => false))
                    ->add('Enregistrer', 'submit')
                    ->getForm();
        $form->handleRequest($request);
        
        // si le formulaire est transmis
        if ($form->isValid()) {
            // on récupère l'utilisateur connecté
            $visiteur = $this->container
                            ->get('security.context')->getToken()->getUser();
            $em = $this->getDoctrine()->getManager();
            // on ajoute le visiteur au rapport
            $rapport->setVisiteur($visiteur);
            $em->persist($rapport);
            $em->flush();
            
            // on passe en session une notification
            $request->getSession()->getFlashBag()->add('notif', 'Le rapport a bien été enregistré ! ');
            
            // on redirige le visiteur vers l'affichage de tous les rapports
            return $this->redirect($this->generateUrl('gsb_report_rapports'));
        }
        
        return $this->render('GSBReportBundle:Rapport:ajouter.html.twig', array(
                    'form' => $form->createView()
        ));
    }

}

<?php

namespace GSB\ReportBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="GSB\ReportBundle\Repository\VisiteurRepository")
 * @ORM\Table(name="visiteur")
 */
class Visiteur {
    
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=4)
     */
    protected $idGSB;
    
    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $nom;
    
    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $prenom;
    
    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    protected $login;
    
    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    protected $mdp;
    
    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $adresse;
    
    /**
     * @ORM\Column(type="string", length=5, nullable=true)
     */
    protected $cp;
    
    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    protected $ville;
    
    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $dateEmbauche;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set idGSB
     *
     * @param string $idGSB
     * @return Visiteur
     */
    public function setIdGSB($idGSB)
    {
        $this->idGSB = $idGSB;

        return $this;
    }

    /**
     * Get idGSB
     *
     * @return string 
     */
    public function getIdGSB()
    {
        return $this->idGSB;
    }

    /**
     * Set nom
     *
     * @param string $nom
     * @return Visiteur
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set prenom
     *
     * @param string $prenom
     * @return Visiteur
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string 
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set login
     *
     * @param string $login
     * @return Visiteur
     */
    public function setLogin($login)
    {
        $this->login = $login;

        return $this;
    }

    /**
     * Get login
     *
     * @return string 
     */
    public function getLogin()
    {
        return $this->login;
    }

    /**
     * Set mdp
     *
     * @param string $mdp
     * @return Visiteur
     */
    public function setMdp($mdp)
    {
        $this->mdp = $mdp;

        return $this;
    }

    /**
     * Get mdp
     *
     * @return string 
     */
    public function getMdp()
    {
        return $this->mdp;
    }

    /**
     * Set adresse
     *
     * @param string $adresse
     * @return Visiteur
     */
    public function setAdresse($adresse)
    {
        $this->adresse = $adresse;

        return $this;
    }

    /**
     * Get adresse
     *
     * @return string 
     */
    public function getAdresse()
    {
        return $this->adresse;
    }

    /**
     * Set cp
     *
     * @param string $cp
     * @return Visiteur
     */
    public function setCp($cp)
    {
        $this->cp = $cp;

        return $this;
    }

    /**
     * Get cp
     *
     * @return string 
     */
    public function getCp()
    {
        return $this->cp;
    }

    /**
     * Set ville
     *
     * @param string $ville
     * @return Visiteur
     */
    public function setVille($ville)
    {
        $this->ville = $ville;

        return $this;
    }

    /**
     * Get ville
     *
     * @return string 
     */
    public function getVille()
    {
        return $this->ville;
    }

    /**
     * Set dateEmbauche
     *
     * @param \DateTime $dateEmbauche
     * @return Visiteur
     */
    public function setDateEmbauche($dateEmbauche)
    {
        $this->dateEmbauche = $dateEmbauche;

        return $this;
    }

    /**
     * Get dateEmbauche
     *
     * @return \DateTime 
     */
    public function getDateEmbauche()
    {
        return $this->dateEmbauche;
    }
}

<?php

namespace GSB\ReportBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="GSB\ReportBundle\Repository\PraticienRepository")
 * @ORM\Table(name="praticien")
 */
class Praticien
{
    
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=25)
     */
    protected $nomMedecin;
    
    /**
     * @ORM\Column(type="string", length=30)
     */
    protected $prenomMedecin;
    
    /**
     * @ORM\Column(type="string", length=50)
     */
    protected $adresseMedecin;
    
    /**
     * @ORM\Column(type="string", length=5)
     */
    protected $cpMedecin;
    
    /**
     * @ORM\Column(type="string", length=25)
     */
    protected $villeMedecin;
    
    /**
     * @ORM\Column(type="float")
     */
    protected $coefNotoriete;
    
    /**
     * @ORM\ManyToOne(targetEntity="Typepraticien")
     * @ORM\JoinColumn(nullable=true)
     */
    protected $typepraticien;

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
     * Set nomMedecin
     *
     * @param string $nomMedecin
     * @return Praticien
     */
    public function setNomMedecin($nomMedecin)
    {
        $this->nomMedecin = $nomMedecin;

        return $this;
    }

    /**
     * Get nomMedecin
     *
     * @return string 
     */
    public function getNomMedecin()
    {
        return $this->nomMedecin;
    }

    /**
     * Set prenomMedecin
     *
     * @param string $prenomMedecin
     * @return Praticien
     */
    public function setPrenomMedecin($prenomMedecin)
    {
        $this->prenomMedecin = $prenomMedecin;

        return $this;
    }

    /**
     * Get prenomMedecin
     *
     * @return string 
     */
    public function getPrenomMedecin()
    {
        return $this->prenomMedecin;
    }
    
    public function getNomPrenom()
    {
        return $this->prenomMedecin . ' ' . $this->nomMedecin;
    }
    
    /**
     * Set adresseMedecin
     *
     * @param string $adresseMedecin
     * @return Praticien
     */
    public function setAdresseMedecin($adresseMedecin)
    {
        $this->adresseMedecin = $adresseMedecin;

        return $this;
    }

    /**
     * Get adresseMedecin
     *
     * @return string 
     */
    public function getAdresseMedecin()
    {
        return $this->adresseMedecin;
    }

    /**
     * Set cpMedecin
     *
     * @param string $cpMedecin
     * @return Praticien
     */
    public function setCpMedecin($cpMedecin)
    {
        $this->cpMedecin = $cpMedecin;

        return $this;
    }

    /**
     * Get cpMedecin
     *
     * @return string 
     */
    public function getCpMedecin()
    {
        return $this->cpMedecin;
    }

    /**
     * Set villeMedecin
     *
     * @param string $villeMedecin
     * @return Praticien
     */
    public function setVilleMedecin($villeMedecin)
    {
        $this->villeMedecin = $villeMedecin;

        return $this;
    }

    /**
     * Get villeMedecin
     *
     * @return string 
     */
    public function getVilleMedecin()
    {
        return $this->villeMedecin;
    }

    /**
     * Set coefNotoriete
     *
     * @param float $coefNotoriete
     * @return Praticien
     */
    public function setCoefNotoriete($coefNotoriete)
    {
        $this->coefNotoriete = $coefNotoriete;

        return $this;
    }

    /**
     * Get coefNotoriete
     *
     * @return float 
     */
    public function getCoefNotoriete()
    {
        return $this->coefNotoriete;
    }

    /**
     * Set typepraticien
     *
     * @param \GSB\ReportBundle\Entity\Typepraticien $typepraticien
     * @return Praticien
     */
    public function setTypepraticien(\GSB\ReportBundle\Entity\Typepraticien $typepraticien = null)
    {
        $this->typepraticien = $typepraticien;

        return $this;
    }

    /**
     * Get typepraticien
     *
     * @return \GSB\ReportBundle\Entity\Typepraticien 
     */
    public function getTypepraticien()
    {
        return $this->typepraticien;
    }
    
}

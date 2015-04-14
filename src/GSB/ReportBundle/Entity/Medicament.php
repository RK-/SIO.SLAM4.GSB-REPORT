<?php

namespace GSB\ReportBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="GSB\ReportBundle\Repository\MedicamentRepository")
 * @ORM\Table(name="medicament")
 */
class Medicament
{
    
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;
    
    /**
     * @ORM\Column(type="string", length=10)
     */
    protected $depotLegal;
    
    /**
     * @ORM\Column(type="string", length=25, nullable=true)
     */
    protected $nomCommercial;
    
    /**
     * @ORM\Column(type="string")
     */
    protected $composition;
    
    /**
     * @ORM\Column(type="string")
     */
    protected $effets;
    
    /**
     * @ORM\Column(type="string")
     */
    protected $contreIndication;
    
    /**
     * @ORM\Column(type="float")
     */
    protected $prixEchantillon;
    
    /**
     * @ORM\ManyToOne(targetEntity="Famille")
     * @ORM\JoinColumn(nullable=true)
     */
    protected $famille;

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
     * Set depotLegal
     *
     * @param string $depotLegal
     * @return Medicament
     */
    public function setDepotLegal($depotLegal)
    {
        $this->depotLegal = $depotLegal;

        return $this;
    }

    /**
     * Get depotLegal
     *
     * @return string 
     */
    public function getDepotLegal()
    {
        return $this->depotLegal;
    }

    /**
     * Set nomCommercial
     *
     * @param string $nomCommercial
     * @return Medicament
     */
    public function setNomCommercial($nomCommercial)
    {
        $this->nomCommercial = $nomCommercial;

        return $this;
    }

    /**
     * Get nomCommercial
     *
     * @return string 
     */
    public function getNomCommercial()
    {
        return $this->nomCommercial;
    }

    /**
     * Set composition
     *
     * @param string $composition
     * @return Medicament
     */
    public function setComposition($composition)
    {
        $this->composition = $composition;

        return $this;
    }

    /**
     * Get composition
     *
     * @return string 
     */
    public function getComposition()
    {
        return $this->composition;
    }

    /**
     * Set effets
     *
     * @param string $effets
     * @return Medicament
     */
    public function setEffets($effets)
    {
        $this->effets = $effets;

        return $this;
    }

    /**
     * Get effets
     *
     * @return string 
     */
    public function getEffets()
    {
        return $this->effets;
    }

    /**
     * Set contreIndication
     *
     * @param string $contreIndication
     * @return Medicament
     */
    public function setContreIndication($contreIndication)
    {
        $this->contreIndication = $contreIndication;

        return $this;
    }

    /**
     * Get contreIndication
     *
     * @return string 
     */
    public function getContreIndication()
    {
        return $this->contreIndication;
    }

    /**
     * Set prixEchantillon
     *
     * @param float $prixEchantillon
     * @return Medicament
     */
    public function setPrixEchantillon($prixEchantillon)
    {
        $this->prixEchantillon = $prixEchantillon;

        return $this;
    }

    /**
     * Get prixEchantillon
     *
     * @return float 
     */
    public function getPrixEchantillon()
    {
        return $this->prixEchantillon;
    }

    /**
     * Set famille
     *
     * @param \GSB\ReportBundle\Entity\Famille $famille
     * @return Medicament
     */
    public function setFamille(\GSB\ReportBundle\Entity\Famille $famille = null)
    {
        $this->famille = $famille;

        return $this;
    }

    /**
     * Get famille
     *
     * @return \GSB\ReportBundle\Entity\Famille 
     */
    public function getFamille()
    {
        return $this->famille;
    }
    
}

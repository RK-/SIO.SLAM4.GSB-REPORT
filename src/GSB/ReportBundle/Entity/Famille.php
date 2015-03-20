<?php

namespace GSB\ReportBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="GSB\ReportBundle\Repository\FamilleRepository")
 * @ORM\Table(name="famille")
 */
class Famille {
    
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=80, nullable=true)
     */
    protected $libelleFamille;

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
     * Set libelleFamille
     *
     * @param string $libelleFamille
     * @return Famille
     */
    public function setLibelleFamille($libelleFamille)
    {
        $this->libelleFamille = $libelleFamille;

        return $this;
    }

    /**
     * Get libelleFamille
     *
     * @return string 
     */
    public function getLibelleFamille()
    {
        return $this->libelleFamille;
    }
}

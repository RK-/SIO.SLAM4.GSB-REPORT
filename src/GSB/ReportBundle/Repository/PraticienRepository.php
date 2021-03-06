<?php

namespace GSB\ReportBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * PracticienRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class PraticienRepository extends EntityRepository 
{
    /**
     * Retourner tous les praticiens.
     * 
     * @return tous les praticiens
     */
    public function getPraticiens()
    {
        $qb = $this->createQueryBuilder('p')
                   ->select('p')
                   ->join('p.typepraticien', 't')
                   ->addSelect('t');
        
        return $qb->getQuery()->getResult();
    }
    
    /**
     * Retourner tous les praticiens d'un type donné paramètre.
     * 
     * @param int $id l'id du Type
     * @return les praticiens d'un même type
     */
    public function getPraticiensByType($id)
    {
        $qb = $this->createQueryBuilder('p')
                   ->select('p')
                   ->join('p.typepraticien', 't', 'WITH', 't.id = :id')
                   ->setParameter('id', $id)
                   ->addSelect('t');
        
        return $qb->getQuery()->getResult();
    }
    
    /**
     * Retourner tous les praticiens avec le nom et/ou la ville donné en paramètre.
     * 
     * @param String $nom le nom
     * @param String $ville la ville
     * @return tous les praticiens définis par les paramètres
     */
    public function getPraticiensByAvance($nom, $ville)
    {
        // tous les praticiens
        if ($nom === "all" && $ville === "all") {
            $qb = $this->createQueryBuilder('p')
                       ->select('p')
                       ->join('p.typepraticien', 't')
                       ->addSelect('t');
        // les praticiens avec le $nom
        } else if ($nom !== "all" && $ville === "all") {
            $qb = $this->createQueryBuilder('p')
                       ->select('p')
                       ->where('p.nomMedecin LIKE :nom')
                       ->setParameter('nom', '%'.$nom.'%')
                       ->join('p.typepraticien', 't')
                       ->addSelect('t');
        // les praticiens avec la $ville
        } else if ($ville !== "all" && $nom === "all") {
            $qb = $this->createQueryBuilder('p')
                       ->select('p')
                       ->where('p.villeMedecin LIKE :ville')
                       ->setParameter('ville', '%'.$ville.'%')
                       ->join('p.typepraticien', 't')
                       ->addSelect('t');
        // les praticiens avec le $nom ET la $ville
        } else {
            $qb = $this->createQueryBuilder('p')
                       ->select('p')
                       ->where('p.nomMedecin LIKE :nom')
                       ->setParameter('nom', '%'.$nom.'%')
                       ->andWhere('p.villeMedecin LIKE :ville')
                       ->setParameter('ville', '%'.$ville.'%')
                       ->join('p.typepraticien', 't')
                       ->addSelect('t');
        }
        
        return $qb->getQuery()->getResult();
    }

}

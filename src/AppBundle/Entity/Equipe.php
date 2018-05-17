<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Equipe
 *
 * @ORM\Table(name="equipe")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EquipeRepository")
 */
class Equipe
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_equipe", type="string", length=255)
     */
    private $nomEquipe;

    /**
     * @var string
     *
     * @ORM\Column(name="drapeau", type="text")
     */
    private $drapeau;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nomEquipe
     *
     * @param string $nomEquipe
     *
     * @return Equipe
     */
    public function setNomEquipe($nomEquipe)
    {
        $this->nomEquipe = $nomEquipe;

        return $this;
    }

    /**
     * Get nomEquipe
     *
     * @return string
     */
    public function getNomEquipe()
    {
        return $this->nomEquipe;
    }

    /**
     * Set drapeau
     *
     * @param string $drapeau
     *
     * @return Equipe
     */
    public function setDrapeau($drapeau)
    {
        $this->drapeau = $drapeau;

        return $this;
    }

    /**
     * Get drapeau
     *
     * @return string
     */
    public function getDrapeau()
    {
        return $this->drapeau;
    }
}


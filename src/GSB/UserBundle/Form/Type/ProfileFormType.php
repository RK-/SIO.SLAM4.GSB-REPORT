<?php

namespace GSB\UserBundle\Form\Type;

use Symfony\Component\Form\FormBuilderInterface;
use FOS\UserBundle\Form\Type\ProfileFormType as BaseType;

class ProfileFormType extends BaseType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        parent::buildForm($builder, $options);
        $builder->add('nom')
                ->add('prenom')
                ->add('adresse')
                ->add('cp')
                ->add('ville')
                ->add('dateEmbauche', 'genemu_jquerydate', array(
                    'widget' => 'single_text'))
                ->remove('current_password');
    }
    
    public function getParent()
    {
        return 'fos_user_profile';
    }

    public function getName()
    {
        return 'gsb_user_profile';
    }
}

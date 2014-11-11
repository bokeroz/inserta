<?php
namespace Usuarios\Form;



use Zend\Form\Element;
use Zend\Form\Form;

class UsuariosForm extends Form
{
    public function __construct($name = null)
    {
   
        parent::__construct('usuarios');
        $this->setAttribute('method', 'post');
        $this->add(array(
            'name' => 'id',
            'attributes' => array(
                'type'  => 'hidden',
            ),
        ));
        $this->add(array(
            'name' => 'nombre',
            'attributes' => array(
                'type'  => 'text',
            ),
            'options' => array(
                'label' => 'Nombre',
            ),
        ));
        $this->add(array(
            'name' => 'puesto',
            'attributes' => array(
                'type'  => 'text',
            ),
            'options' => array(
                'label' => 'Puesto',
            ),
        ));

        $this->add(array(
            'name' => 'area',
            'attributes' => array(
                'type'  => 'text',
            ),
            'options' => array(
                'label' => 'Area',
            ),
        ));

         $this->add(array(
            'name' => 'fechan',
            'attributes' => array(
                'type'  => 'date',
                 'min' => '1930-01-01',
                 'max' => '2010-01-01',
                 'step' => '1', 

            ),
            'options' => array(
                 'format' => 'Y-m-d',
                'label' => 'Fecha de nacimiento',
            ),
        ));

          $this->add(array(
            'name' => 'edad',
            'attributes' => array(
                'type'  => 'number',
            ),
            'options' => array(
                'label' => 'Edad',
            ),
        ));


        $this->add(array(
            'name' => 'submit',
            'attributes' => array(
                'type'  => 'submit',
                'value' => 'Go',
                'id' => 'submitbutton',
            ),
        ));
    }
}
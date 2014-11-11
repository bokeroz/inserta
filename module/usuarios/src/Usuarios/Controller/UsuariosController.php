<?php
namespace Usuarios\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Usuarios\Model\Usuarios;          
use Usuarios\Form\UsuariosForm;      

class UsuariosController extends AbstractActionController
{
    protected $usuariosTable;
    

    public function getUsuariosTable()
    {
        if (!$this->usuariosTable) {
            $sm = $this->getServiceLocator();
            $this->usuariosTable = $sm->get('Usuarios\Model\UsuariosTable');
        }
        return $this->usuariosTable;
    }
    
    public function indexAction()
    {
        $form = new UsuariosForm();
        $form->get('submit')->setValue('Add');

        $request = $this->getRequest();
        if ($request->isPost()) {
            $usuarios = new Usuarios();
            $form->setInputFilter($usuarios->getInputFilter());
            $form->setData($request->getPost());

            if ($form->isValid()) {
                $usuarios->exchangeArray($form->getData());
                $this->getUsuariosTable()->saveUsuarios($usuarios);

                // Redirect to list of albums
                return $this->redirect()->toRoute('usuarios');
            }
        }
        return array('form' => $form);
    }

}
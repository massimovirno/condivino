<?php
/**
 * File VHome.php contenente la classe VHome
 *
 * @package view
 */
/**
 * Classe VHome, estende la classe view del package System e gestisce la visualizzazione e formattazione del sito, inoltre imposta i principali contenuti della pagina, suddivisi in contenuti principali (main_content) e contenuti della barra laterale (side_content)
 *
 * @package View
 */
class VGestionelocation extends View {
    /**
     * @var string $_layout
     */
    private $_layout='default';
    /**
     * restituisce la password passata tramite GET o POST
     *
     * @return mixed
     */
    public function getPassword() {
        if (isset($_REQUEST['password']))
            return $_REQUEST['password'];
        else
            return false;
    }
    /**
     * restituisce la username passata tramite GET o POST
     *
     * @return mixed
     */
    public function getUsername() {
        if (isset($_REQUEST['username']))
            return $_REQUEST['username'];
        else
            return false;
    }
    /**
     * @return mixed
     */
    public function getTask() {
        if (isset($_REQUEST['task']))
            return $_REQUEST['task'];
        else
            return false;
    }
    /**
     * @return mixed
     */
    public function getController() {
        if (isset($_REQUEST['controller']))
            return $_REQUEST['controller'];
        else
            return false;
    }
    /**
     * @return string
     */
    public function processaTemplate() {
        $contenuto=$this->fetch('gestionelocation_'.$this->_layout.'.tpl');
        return $contenuto;
    }
    /**
     * Imposta l'eventuale errore nel template
     *
     * @param string $errore
     */
    public function impostaErrore($errore){
        $this->assign('errore',$errore);
    }
    /**
     * imposta il layout
     *
     * @param string $layout
     */
    public function setLayout($layout){
        $this->_layout=$layout;
    }
    /**
     * Imposta i dati nel template identificati da una chiave ed il relativo valore
     *
     * @param string $key
     * @param mixed $valore
     */
    public function impostaDati($key,$valore){
        $this->assign($key,$valore);
    }

}

?>
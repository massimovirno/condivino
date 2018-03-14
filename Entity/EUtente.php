<?php

/**
 * @access public
 * @package Entity
 */
class EUtente {
    public $nome;
    public $cognome;
	public $sesso;
	public $data_nascita;
    public $username;
    public $password;
	public $codice_fiscale;
	public $partita_iva;
    public $email;
    public $telefono;
    public $codice_attivazione;
    public $stato='non_attivo';
    /**
     * @AssociationType Entity.EEvento
     * @AssociationMultiplicity 0..*
     * @AssociationKind Aggregation
     */
    public $_eventi = array();
    /**
     * @access public
     * @return float
     * @ReturnType float
     */

    /**
     * @access public
     */
    public function generaCodiceAttivazione() {
        $this->codice_attivazione=mt_rand();
    }

    /**
     * @access public
     * @param Entity.EEvento aEvento
     * @ParamType aEvento Entity.EEvento
     */
    public function addEvento(EEvento $aEvento) {
        $this->_eventi[]=$aEvento;
    }

    /**
     * @access public
     * @return array()
     * @ReturnType array()
     */
    public function getEventi() {
        return $this->_eventi;
    }
    /**
     * @access public
     * @return array()
     * @ReturnType array()
     */
    public function getAccountAttivo() {
        if ($this->stato=='attivo')
            return true;
        else
            return false;
    }

    public function getCodiceAttivazione() {
        return $this->codice_attivazione;
    }
}
?>
<?php


/**
 * @access public
 * @package Entity
 */
class EEventoPartecipante {
    /** 
     * @var int
     */
    public $id;
	/**
     * @var int
     */
    public $eventoID; 
	/**
         * username String
     * @AssociationType Entity.EUtente
     * @AssociationMultiplicity 1
     */
    public $partecipante;
     /**
     * @var int
     */
    public $pagato;
	
	// AGGIUNGERE METODI PAGAMENTO
	// setPagato
	
	
	/**
     *
     * @param username String
     */
    public function setPartecipante($username) {
        $this->_partecipante=$username;
    }
    /**
     * Restituisce l'oggetto EUtente
     *
     * @return EUtente
     */
    public function getPartecipante() {
        return $this->_partecipante;
    }
	
/**
     *
     * @param Id_evento int
     */
    public function setEventoID(Int $id_evento) {
        $this->_eventoID=$id_evento;
    }	
	
}
?>
<?php

/**
 * @access public
 * @package Entity
 */
class EEvento {
    /**
     * @AttributeType int
     */
    public $id;
    /**
     * @AttributeType String
     */
    public $nome;
	/**
     * @AttributeType Datetime
     */
	public $data; 
	/**
     * @AssociationType Entity.EUtente
     * @AssociationMultiplicity 1
     */
    public $utente;
	/**
     * @AttributeType Datetime
     */
    public $data_chiusura;
     /**
     * @AttributeType int
     */
    public $posti;
    /**
     * @AssociationType Entity.EEventoPartecipante
     * @AssociationMultiplicity 1..*
     * @AssociationKind Aggregation
     */
    public $_partecipante = array();
    /**
     * @AssociationType Entity.ELocation
     * @AssociationMultiplicity 1
     */
    public $_location;
 
     /**
     * @AttributeType String
     */
    public $descBreve;
	
	 /**
     * @AttributeType String
     */
    public $descrizione;
     
	 /**
     * @AttributeType Float
     */
    public $prezzo;

	 /**
     * @AttributeType String
     */
    public $categoria;	
	
	/**
     * @AttributeType String
     */
    public $foto;  
  
	/**
     * @var int
     */
    public $pubblicato;
	
   /**
     * @AssociationType Entity.ECommento
     * @AssociationMultiplicity 0..*
     * @AssociationKind Aggregation
     */
	 // DA IMPLEMENTARE
    //public $_commento = array();
 	
	// METODI 

	// RIVEDERE
	/**
     * @access public
     * @return float
     */
    /**  
	public function getNumeroPartecipanti() {
        $num_part=0;
        if (count($this->_partecipante)>0) {
            foreach($this->_partecipante as $partecipante) {
                $evento=$partecipante->getEvento();
                $num_part += $libro->prezzo*$item->quantita;
            }
        }
        return $num_part;
    }
	*/
	
	/**
     * @access public
     * @return float
     */
    /**
	public function getPrezzoTotale() {
        $prezzo=0;
        if (count($this->_item)>0) {
            foreach($this->_item as $item) {
                $libro=$item->getLibro();
                $prezzo += $libro->prezzo*$item->quantita;
            }
        }
        return $prezzo;
    }
	*/

	
    /**
     * @access public
     * @param $data string
     */
    public function setData($data) {
        $anno=substr($data, 6);
        $mese=substr($data, 3, 2);
        $giorno=substr($data, 0, 2);
        $this->data="$anno-$mese-$giorno";
    }
    /**
     * @access public
     * @param $utente EUtente
     */
    public function setUtente(EUtente $utente) {
        $this->_utente=$utente;
    }
    /** VALUTARE UTILIZZO
     * rimuovo l'item nella posizione $pos dell'array
     *
     * @param int $pos
     */
    public function removeItem($pos) {
        unset($this->_item[$pos]);
        $this->_item=array_values($this->_item);
    }
    /** restituisce l'utente creatore dell'evento
     * @return EUtente
     */
    public function getUtente() {
        return $this->_utente;
    }
    public function getMediaVoti() {
        $somma=0;
		// FINTA!
            return $somma;
    }
	
	 /**
     * Restituisce il numero di partecipanti per evento
     *
     * @access public
     * @return int
     * @ReturnType int
     */
    public function getNumeroPartecipanti() {
        $totale=0;
        $partecipanti=count($this->_partecipante);
        if ($partecipanti>1) {
            foreach ($this->partecipante as $partecipante) {
                $totale++;
            }
            return $totale;
        }
        //elseif (isset($this->_commento[0]->voto))
        //    return $this->_commento[0]->voto;
        else
            return false;
    }
	 
	 /**
     *
     * @param ELocation $location
     */
    public function setLocation(ELocation $location) {
        $this->_location=$location;
    }
   /**
     * Restituisce un array con i partecipanti
     *
     * @access public
     * @return array
     * @ReturnType array
     */
    public function getPartecipanti() {
        return ($this->_partecipante);
    }	
}
?>
<?php
/**
 * @access public
 * @package Entity
 */
class EVino {
    public $ID; //Int
    public $nome; //String
	public $produttore; //String
    public $denominazione; //String
	public $paese; //String
	public $regione; //String
	public $descrizione; //String
    public $vitigno;  // String
    public $annata; // Int
    public $grado; //Float
	public $volume; //Float
    public $colore;  //String
    public $noteSensoriali;  //String
    public $temperaturaServizio;  //Int
    public $prezzo;  //Float	
    public $etichetta;
    /**
     * @AssociationType Entity.ECommento
     * @AssociationMultiplicity 0..*
     * @AssociationKind Aggregation
     */
    public $_commento = array();

    /**
     * @access public
     * @param Entity.ECommento aParameter
     * @return boolean
     * @ParamType aParameter Entity.ECommento
     * @ReturnType boolean
     */
    public function addCommento(ECommento $commento) {
        array_push($this->_commento, $commento);
    }

    /**
     * Restituisce la media dei voti per il vino
     *
     * @access public
     * @return float
     * @ReturnType float
     */
    public function getMediaVoti() {
        $somma=0;
        $voti=count($this->_commento);
        if ($voti>1) {
            foreach ($this->_commento as $commento) {
                $somma+=$commento->voto;
            }
            return $somma/$voti;
        }
        elseif (isset($this->_commento[0]->voto))
            return $this->_commento[0]->voto;
        else
            return false;
    }
    /**
     * Restituisce un array di commenti relativi al vino
     *
     * @access public
     * @return array
     * @ReturnType array
     */
    public function getCommenti() {
        return ($this->_commento);
    }
  /**
     * Restituisce nome del vino
     *
     * @access public
     * @return string
     * @ReturnType string
     */
    public function getNome() {
        return ($this->_nome);
    }
	}
?>
<?php
	class Actor{
		var $firstname;
		var $lastname;
		var $age;
        var $acting;
	}

	class Director{
		public $firstname;
		public $lastname;
		private $age;
		protected $movies;
	}

	public function actNow() { 
		if($this -> acting == true){
			echo "<p>I'm already acting</p>";
		} else {
			echo "<p>I'm acting</p>"; 
		}
	}

	public function act() {
		$this -> acting = true;
	}

	public function dontAct() {
		$this -> acting = false;
	}
?>
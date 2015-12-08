<?php
class ServiceAction  extends Action{
	
	protected function send($type,$data) {
	    $r = array(
	        'type'=>$type,
	        'data'=>$data
	    );
	    exit(json_encode($r));
	}
	
}
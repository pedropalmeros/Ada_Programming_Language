package Pkg is 
    type SSID is new Integer;

    function Convert ( Self : SSID ) return Integer; 
    function Convert ( Self : SSID ) return String; 

end Pkg; 
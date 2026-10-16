# TP4 - Regles de filtrage du pare-feu
/ip firewall filter
add chain=input connection-state=established,related action=accept comment="Autoriser les connexions existantes"
add chain=input connection-state=invalid action=drop comment="Bloquer les connexions invalides"
add chain=input in-interface=ether1 action=drop comment="Bloquer les acces entrants depuis ether1"

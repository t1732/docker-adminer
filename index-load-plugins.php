<?php
function adminer_object() {
  include_once "plugins/plugin.php";

  foreach (glob("plugins/*.php") as $filename) {
    include_once "./$filename";
  }

  $plugins = array(
    new AdminerLoginPasswordLess(password_hash("dummy", PASSWORD_DEFAULT)),
  );

  return new AdminerPlugin($plugins);
}

include "./adminer.php";
?>

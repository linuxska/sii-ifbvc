<?php use_stylesheet('ibf/index.css') ?>

<div id="text">
    <h2>Información General</h2>
    <?php if ($sf_user->hasCredential('admin')): ?>
    <div style="background-color:#80be80;padding:1em;">
        <p>Hermano(a):</p>
        <p>Bienvenido</p>
        <ol>
            <li>Recordar:  
            </li>
        </ol>
        <p style="text-align:right"><em>- Staff</em></p>
    </div>
    <?php endif; ?>
    <dl>
       <dt>Manual de usuario.</dt>
        <dd>En el siguiente enlace puede descargar el manual de usuario. En el podrá
            consultar el funcionamiento del sistema.</dd>
        <dd><strong><a href="<?php echo url_for('@download_manual')?>">Manual de usuario</a>.</strong></dd>
        <dt>Ayuda</dt>
        <dd>Si tiene dudas y el manual de usuario (Pendiente) no se las resuelve por favor póngase en contacto con
        el administrador en la siguiente dirección de correo electrónico
        <strong><a href="mailto:contacto@abricolabs.net">contacto@abricolabs.net</a></strong>.</dd>
        <dd>Si cree que ha encontrado un error en el sistema por favor póngase en contacto con
        el administrador en la siguiente dirección de correo electrónico
        <strong><a href="mailto:contacto@abricolabs.net">contacto@abricolabs.net</a></strong>.</dd>
    </dl>
</div>

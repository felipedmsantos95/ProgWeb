<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Sobre';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Trabalho da disciplina Programação Web onde o objetivo é criar uma aplicação para o jogo Snake.</p>


    <p><?= $icomp ?></p>
    <code><?= __FILE__ ?></code>
</div>

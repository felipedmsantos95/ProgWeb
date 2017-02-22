<?php

use yii\helpers\Html;
use yii\grid\GridView;


/* @var $this yii\web\View */
/* @var $model common\models\User */

$this->title = 'Lista de Usuários';
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= GridView::widget([
    	'dataProvider' => $listaUsuarios,
    	'columns' => ['username']

    ]) ?>

</div>

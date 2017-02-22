<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\User */

$this->title = $model->username;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-view">

<style> th { width: 200px; text-align: right; </style>

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'username',
            'email:email',
			[
				'attribute'=> 'created_at', 'value' => $criadoEm
			],
			[
				'attribute'=> 'id_curso', 'value' => $model->curso->nome
			],

        ],
    ]) ?>

</div>

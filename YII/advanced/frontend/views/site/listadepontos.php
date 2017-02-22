<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model common\models\User */
/* @var $form yii\widgets\ActiveForm */

$this->title = 'Pontos: ';
$this->params['breadcrumbs'][] = ['label' => 'SnakeJS', 'url' => ['snakejs']];
$this->params['breadcrumbs'][] = $this->title;

?>



<div class="pontos-lista">


	<h1><?= Html::encode($this->title) ?></h1>

  	<?= GridView::widget([
  		'dataProvider' => $listadepontos,
  		'columns' => [
  			['attribute' => 'id_user', 'value' => function($model) {return $model->user->username; }],
  			'pontuacao',
  			'data_hora'
  		]

  	]) ?>
</div>

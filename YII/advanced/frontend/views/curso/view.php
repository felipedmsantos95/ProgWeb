<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Curso */

$this->title = $model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Cursos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="curso-view">

<style> th { width: 200px; text-align: right; </style>

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        
        <?= Html::a('Listar Usuários', ['users', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
           // 'id',
            'nome',
            'sigla',
            'descricao:ntext',
            [
                'attribute' => 'Numero de Alunos', 'value' => $count
            ],
        ],
    ]) ?>

</div>

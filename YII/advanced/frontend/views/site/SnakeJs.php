<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\User */

$this->title = 'Snake';
$this->params['breadcrumbs'][] = ['label' => 'Home', 'url' => ['index']];
$this->registerJsFile('/YII/advanced/frontend/web/js/snakeJS.js', ['position' => $this::POS_END]);
$this->registerCssFile('/YII/advanced/frontend/web/css/snakeJS.css');

?>

<div align="center"> SNAKE </div>

Pontuação: <span = id = "point">0</span>

Dica: "Não olhes para trás, isso é fatal."

<div align="center" id="area"></div>

<div hidden>
	<?php $form = ActiveForm::begin([
		'action' => 'index.php?r=site/listadepontos', 
		'id'=> 'registrapontos'
	]); ?>

    <?= $form->field($model, 'pontuacao')->textInput(['id' => 'pontos']) ?>
    <?php ActiveForm::end(); ?>
</div>

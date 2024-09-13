<?php

namespace App\Observers;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Facades\Activity;

class ActivityLogObserver
{
    public function created(Model $model)
    {
        Activity::performedOn($model)
            ->withProperties($model->getChanges())
            ->log('created');
    }

    public function updated(Model $model)
    {
        $changes = $model->getChanges();
        $changes = $this->resolveRelationships($model, $changes);

        Activity::performedOn($model)
            ->withProperties($changes)
            ->log('updated');
    }

    public function deleted(Model $model)
    {
        Activity::performedOn($model)
            ->withProperties($model->getAttributes())
            ->log('deleted');
    }

    private function resolveRelationships(Model $model, array $changes): array
    {
        foreach ($changes as $key => $value) {
            if (method_exists($model, $key)) {
                $relation = $model->{$key};
                if ($relation) {
                    $changes[$key] = $relation->name; // Asume que 'name' es el atributo descriptivo
                }
            }
        }

        return $changes;
    }
}

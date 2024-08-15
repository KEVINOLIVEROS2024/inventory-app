<?php

if (!function_exists('formatActivityDetails')) {
    /**
     * Formatea los detalles de la actividad para una visualización más legible.
     *
     * @param  array  $details
     * @return string
     */
    function formatActivityDetails(array $details): string
    {
        $formatted = '';
        foreach ($details as $key => $value) {
            $formatted .= "<strong>$key:</strong> $value<br>";
        }
        return $formatted;
    }
}

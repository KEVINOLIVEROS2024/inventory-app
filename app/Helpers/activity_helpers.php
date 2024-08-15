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
        $formatted = '<dl>'; // Lista de definición para mejor legibilidad
        foreach ($details as $key => $value) {
            $formatted .= "<dt><strong>$key:</strong></dt><dd>$value</dd>";
        }
        $formatted .= '</dl>';
        return $formatted;
    }
}

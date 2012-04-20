<?php

/**
 * Description of cutString
 *
 * @author Thanhansoft
 */
class cutString {

    public static function cut($string, $max_length) {
        if ($string && $max_length) {
            if (strlen($string) > $max_length) {
                $string = substr($string, 0, $max_length);
                $pos = strrpos($string, " ");
                if ($pos === false) {
                    return substr($string, 0, $max_length) . "...";
                }
                return substr($string, 0, $pos) . "...";
            } else {
                return $string;
            }
        }
    }

}
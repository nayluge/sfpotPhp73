<?php

function debugJson(){
    $json = <<<'EOT'
    [{
    "receipe: "T-bone in ullamco buffalo.  Pig aute kielbasa venison ut.  Turkey corned beef lorem meatloaf spare ribs pork belly tri-tip biltong laborum minim quis ut.  Labore kielbasa id, shoulder salami nostrud anim burgdoggen ut occaecat chuck ut biltong.  Sausage burgdoggen consectetur, leberkas laboris tail tongue cow do."
    }]
    EOT;

    return json_decode($json, false, 512, JSON_THROW_ON_ERROR);


}

debugJson();
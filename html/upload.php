<?php
if (file_exists("uploads/" . $_FILES["avatar"]["name"]))
{
    echo $_FILES["avatar"]["name"] . " already exists. ";
}else{
    move_uploaded_file($_FILES["avatar"]["tmp_name"],"uploads/" . $_FILES["avatar"]["name"]);
    echo "Your avatar stored in: " . "<a href='uploads/" . $_FILES["avatar"]["name"]."'>link</a>";
}
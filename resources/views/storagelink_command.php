

<?php
$sourceDirectory = '/path/to/source/directory'; // Replace with your source directory path
$shortcutDirectory = '/path/to/shortcut/directory'; // Replace with the path where you want to create the shortcut

if (symlink($sourceDirectory, $shortcutDirectory)) {
    echo "Shortcut created successfully!";
} else {
    echo "Failed to create the shortcut.";
}
?>

Example of the shortcut link is as shown below
/home/berylbro/public_html/storage {This is the shortcut storage}

/home/berylbro/berylbrookschool/storage/app/public {This is the source}


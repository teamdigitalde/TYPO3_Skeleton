<?php
// Replacement for symlinked index.php file for TYPO3
// Author: ziegenhain@team-digital.de
// Version 1.0 – 01-02-2015

// Since we don't allow symlinks to files (security reasons, only to directories)
// we include typo3_src/index.php in this script, therefore symlink to file is 
// not needed and still the current version of the TYPO3 index.php is loaded.

require 'typo3_src/index.php';
#!/bin/bash

# Check arguments

if [ $# -ne 1 ]; then
	echo "Please enter file to download" >&2
	exit
fi

url=$1


# Print into the file

cat << EOF
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="Refresh" content="0; url=$url">
	</head>
	<body>
		<p>
		Le téléchargement devrait débuter.
		</p>

		<p>
		Sinon, <a href="$url">cliquez ici</a>.
		</p>
	</body>
</html>
EOF

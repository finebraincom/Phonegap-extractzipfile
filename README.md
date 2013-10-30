# ExtractZipFile Phonegap 3.x Plugin for iOS #
Porting of original plugin by Shaun Rowe (@shakie), Pobl Creative Cyf. (@poblcreative)

This plugin allows you to extract a zip file

## Adding the Plugin to your project ##

phonegap local plugin add https://github.com/finebraincom/Phonegap-extractzipfile

## Using the plugin ##

    <script type="text/javascript">


        function extractFile(fileName, destination)
        {
            ExtractZipFile.extractFile(fileName,destination,win,fail);
        }

        function win(status) 
        {
            alert('Success'+status);
        }
  
        function fail(error) 
        { 
            alert(error);
        }
        
    </script>

    <input type="button" value="Extract Zip File" onClick="extractFile('/path/to/ZipFile.zip', '/path/to/extract/to');"/>

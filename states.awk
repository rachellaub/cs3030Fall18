#AWk script
BEGIN { FS = "," } #field separator
{
    print $4","$1","$2","$1
}


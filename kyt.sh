#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY����  ��� }���oޮ����    P���滻�J��%C ��0�6�bh��M  ��Ҟ�OT�OқQ����4 ?R �$�&ģ�z�(��4d�=@ � �hi���FA�����2h&F!��L��CM5O$��� PP=MP�@5J�<cn��X|��a���N0�qA��b"
R4�d��N�e%5uJR��Q��^����`b!I<6H�
�r&:�)d&Ļ��r��eB�K�Z*����V��"�Y!�?o��!
-�LUJB(ۗ�~(��V��q������t1�[-8�D8��t�6�m�6��g$c�\�E}�*���`�����71�Pr-�8<j#�t�cކ��X��w����'�&44��=m��*<F*��ٜ�M4�T�}Cj�5������> �!y�s���c_�����8kp�zy�G�z�%��\-�fAd��T��S��X��0�-�*�!���?�� ��HY���A�x�i�_�B׶�j�W�A��|�~��Eg���؃���0�+�4�>�/r�OU����.$�W���f�U�s$�L%�|B�7��祐%�`�^d�OS!����!�� ���#I�}���1��(���Ǣ]�Ъ6Dg%�h.�4�?
�Ն�	�P�q���d��E�+��N��&Wt�%�-�D�^��aA��*cmK�3,
)F=���e ���vV-��#���5��
�����(M�- �zk��W��(+(?&<�v�K�~�lג���]�nH�ۛm�bmv?c�K"5�3�4Q�9�hU���v��L|/����C��yI������Dqi	�0�^�SM��-wJ�;VW�dNRl�W!�q�CO*2iEB��LS"و^B�N��X97�:L]��bG%L��)L�T)��KH��d�"#R���EG'L#���x��!���*�P_�I/�$�$��E�.�p�!W	��
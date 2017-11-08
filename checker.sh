mkdir ./public
mkdir ./tmp

echo '-------------------------------------'
echo 'Checking Chrome Stable x86 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x86'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='-multi-chrome' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/stable-x86.unformat.xml

echo ''
echo '-------------------------------------'
echo 'Checking Chrome Stable x64 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x64'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='x64-stable-multi-chrome' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/stable-x64.unformat.xml

echo ''
echo '-------------------------------------'
echo 'Checking Chrome Beta x86 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x86'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='1.1-beta' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/beta-x86.unformat.xml

echo ''
echo '-------------------------------------'
echo 'Checking Chrome Beta x64 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x64'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='x64-beta-multi-chrome' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/beta-x64.unformat.xml

echo ''
echo '-------------------------------------'
echo 'Checking Chrome Dev x86 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x86'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='2.0-dev' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/dev-x86.unformat.xml

echo ''
echo '-------------------------------------'		
echo 'Checking Chrome Dev x64 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x64'/>
            <app appid='{8A69D345-D564-463C-AFF1-A69D9E530F96}' ap='x64-dev-multi-chrome' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/dev-x64.unformat.xml

echo ''
echo '-------------------------------------'
echo 'Checking Chrome Canary x86 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x86'/>
            <app appid='{4EA16AC7-FD5A-47C3-875B-DBF4A2008C20}' ap='' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/canary-x86.unformat.xml
			
echo ''
echo '-------------------------------------'	
echo 'Checking Chrome Canary x64 ......'
echo '-------------------------------------'
echo ''

curl "https://tools.google.com/service/update2" --data "<?xml version='1.0' encoding='UTF-8'?>
            <request protocol='3.0' version='1.3.23.9' shell_version='1.3.21.103' ismachine='0'
                     sessionid='{3597644B-2952-4F92-AE55-D315F45F80A5}' installsource='ondemandcheckforupdate'
                     requestid='{CD7523AD-A40D-49F4-AEEF-8C114B804658}' dedup='cr'>
            <hw sse='1' sse2='1' sse3='1' ssse3='1' sse41='1' sse42='1' avx='1' physmemory='12582912' />
            <os platform='win' version='6.3' arch='x64'/>
            <app appid='{4EA16AC7-FD5A-47C3-875B-DBF4A2008C20}' ap='x64-canary' version='' nextversion='' lang='' brand='GGLS' client=''>
                <updatecheck/>
            </app>
            </request>" > ./tmp/canary-x64.unformat.xml

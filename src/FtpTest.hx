import ftp.FtpConnection;
import ftp.FtpItem;
import ftp.FtpDir;

class FtpTest
{
	static function main() 
    	{	
    		php.Lib.print("Hello! <b>Testing FTP Stuff</b>");
    		
		//var ftp:FtpConnection = new FtpConnection('ftp.jasononeil.com.au', 'thebamo', 'jwb16o87');
		var ftp:FtpConnection = new FtpConnection('localhost', 'jason', '1Cor13', 'tmp/');
    		
		pushResults('Ftp test page');
		pushResults(ftp);
		
		//pushResults('Is Flight.pdf a file? ' + ((ftp.isFile('/Flight.pdf')) ? 'yes' : 'no'));
		//pushResults('Is Flight.pdf a directory? ' + ((ftp.isDir('/Flight.pdf')) ? 'yes' : 'no'));
		//pushResults('Is tmp/ a directory? ' + ((ftp.isDir('/tmp/')) ? 'yes' : 'no'));
		//pushResults('Is tmp/ a file? ' + ((ftp.isFile('/tmp/')) ? 'yes' : 'no'));
		
		//pushResults('Does Desktop/ exist? ' + ((ftp.exists('/Desktop/')) ? 'yes' : 'no'));
		//pushResults('Does fakeDesktop/ exist? ' + ((ftp.exists('/fakeDesktop/')) ? 'yes' : 'no'));
		
		//var desktop:FtpDir;
		//desktop = ftp.getDirAt('/Desktop/anim/');
		//pushResults(desktop);	
		
		//var flight:FtpItem;
		//flight = new FtpItem(ftp, "/Flight.pdf");
		//pushResults("Flight is: " + flight);
		
		var f:FtpItem = ftp.getFileAt('/Desktop/LivingFaiths.mp4');
		pushResults(f.lsResult);
		pushResults(f.name);
		pushResults(f.type);
		pushResults(f.permissions);
		pushResults(f.size);
		pushResults(f.owner);
		pushResults(f.group);
		
		var arr = ftp.ls('/',true);
		pushResults(arr.join('\n'));
		
		php.Lib.print('<pre style="border: 1px solid black;">' + StringTools.htmlEscape(str) + '</pre>');
    	}
    	
    	private static var str:String = "";
    	public static function pushResults(?in_str:Dynamic = '')
    	{
    		str += '\n' + Std.string(in_str);
    	}
    	
}

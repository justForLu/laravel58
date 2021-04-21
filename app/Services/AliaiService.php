<?php
namespace App\Services;


class AliaiService
{
    //阿里巴巴AI图片识别
    protected $host;
    protected $appcode;
    protected $method;


    public function __construct()
    {
        $this->host = 'https://ocrapi-advanced.taobao.com/ocrservice/advanced';
        $this->appcode = '4d3bfc6f172f41f7aaec1c7539b924f2';
        $this->method = 'POST';
    }

    public function getContent($img_url = '')
    {
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $this->appcode);
        //根据API的要求，定义相对应的Content-Type
        array_push($headers, "Content-Type".":"."application/json; charset=UTF-8");
        //图片base64
        $img_base64 = "";
        if($fp = fopen($img_url,"rb", 0))
        {
            $gambar = fread($fp,filesize('test.jpg'));
            fclose($fp);
            $img_base64 = (base64_encode($gambar));
        }
        $bodys = "{\"img\":\"".$img_base64."\",\"url\":\"\",\"prob\":false,\"charInfo\":false,\"rotate\":false,\"table\":false}";

        $result = $this->get_content($this->host, $headers, $bodys);

        return $result;
    }

    /**
     * 获取远程内容（接口数据获取）
     *
     * @param $url
     * @param array $headers
     * @param array $body
     * @return bool|string
     */
    function get_content($url, $headers = [],$body = [])
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $this->method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, true);
        if (1 == strpos("$".$this->host, "https://"))
        {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        curl_setopt($curl, CURLOPT_POSTFIELDS, $bodys);
        $ret = curl_exec($curl);
        curl_close($curl);
        $ret = json_decode($ret,true);
        return $ret;
    }

}
import requests


def get_wechat_user_info(code: str):
    r = requests.get('https://api.weixin.qq.com/sns/oauth2/access_token?appid={0}&secret'
                     '={1}&code={2}&grant_type'
                     '=authorization_code')

    'access_token'
    'code'

    'http://api.weixin.qq.com/sns/userinfo?access_token={0}&openid={1}&lang=zh_CN'

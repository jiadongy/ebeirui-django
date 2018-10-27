# import requests
#
# def get_wechat_user_info(code: str):
#     r = requests.get('https://api.weixin.qq.com/sns/oauth2/access_token?appid={0}&secret'
#                      '={1}&code={2}&grant_type'
#                      '=authorization_code')
#     'access_token'
#     'code'
#     'http://api.weixin.qq.com/sns/userinfo?access_token={0}&openid={1}&lang=zh_CN'
#
#
# from weixin.client import WeixinAPI
#
# APP_ID='wxa6e4b450fdaff201'
# APP_SECRET='8cf3996ef6f243a42f435010ad5e68e4'
# REDIRECT_URI='http://www.ebeirui.com/login/wechat'
#
# scope = ("snsapi_login", )
# api = WeixinAPI(appid=APP_ID,
#                 app_secret=APP_SECRET,
#                 redirect_uri=REDIRECT_URI)
# authorize_url = api.get_authorize_url(scope=scope)
#
# access_token = api.exchange_code_for_access_token(code=code)
#
# api = WeixinAPI(access_token=access_token)
#
# user = api.user(openid="openid")
#
#
#
#
# from weixin.pay import WeixinPay
#
# wxpay = WeixinPay(appid='appid',
#                   mch_id='mchid',
#                   notify_url='url',
#                   partner_key='key')
#                   create_pay_info= {}
#
# # 统一下单
# wxpay.unifiedorder(**create_pay_info)
# # 查询订单
# wxapp.order_query(out_trade_no='out_trade_no')
#
# # 企业付款
# wxepay = WeixinEnterprisePay(appid='appid',
#                              mch_id='mchid',
#                              mch_key='mch_key',
#                              mch_cert='mch_cert',
#                              partner_key='key')
#
# wxepay.transfers(partner_trade_no,
#                  openid,
#                  amount,
#                  desc=u'结算')
#
# # 企业付款查询
# wxepay_query = WeixinEnterprisePayQuery(appid='appid',
#                                         mch_id='mchid',
#                                         mch_key='mch_key',
#                                         mch_cert='mch_cert',
#                                         partner_key='key')
# wxepay_query.gettransferinfo(partner_trade_no)
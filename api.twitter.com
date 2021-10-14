$ curl -i -v GET https://api.twitter.com/account/login_verification?platform=web&user_id=349209226&challenge_type=Sms&challenge_id=WrgTRX5rFyjzs8Ykj7XIDsvgaMPxduticsJOOM&redirect_after_login_verification=https%3A%2F%2Fapi.twitter.com%2Foauth%2Fauthorize%3Foauth_token%3DR4jrhgAAAAAAxzKYAAABfFlfLWM
[1] 4860
[2] 4861
[3] 4862
[4] 4863
$ * Could not resolve host: GET
* Closing connection 0
curl: (6) Could not resolve host: GET
*   Trying 104.244.42.130:443...
* Connected to api.twitter.com (104.244.42.130) port 443 (#1)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*   CAfile: /data/data/com.termux/files/usr/etc/tls/cert.pem
  CApath: /data/data/com.termux/files/usr/etc/tls/certs
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
* TLSv1.3 (IN), TLS handshake, Server hello (2):
* TLSv1.3 (IN), TLS handshake, Encrypted Extensions (8):
* TLSv1.3 (IN), TLS handshake, Certificate (11):
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
* TLSv1.3 (IN), TLS handshake, Finished (20):
* TLSv1.3 (OUT), TLS change cipher, Change cipher spec (1):
* TLSv1.3 (OUT), TLS handshake, Finished (20):
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384
* ALPN, server accepted to use h2
* Server certificate:
*  subject: C=US; ST=California; L=San Francisco; O=Twitter, Inc.; CN=api.twitter.com
*  start date: Mar 12 00:00:00 2021 GMT
*  expire date: Mar 11 23:59:59 2022 GMT
*  subjectAltName: host "api.twitter.com" matched cert's "api.twitter.com"
*  issuer: C=US; O=DigiCert Inc; CN=DigiCert TLS RSA SHA256 2020 CA1
*  SSL certificate verify ok.
* Using HTTP2, server supports multi-use
* Connection state changed (HTTP/2 confirmed)
* Copying HTTP/2 data in stream buffer to connection buffer after upgrade: len=0
* Using Stream ID: 1 (easy handle 0xf5aea400)
> GET /account/login_verification?platform=web HTTP/2
> Host: api.twitter.com
> user-agent: curl/7.72.0
> accept: */*
>
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* old SSL session ID is stale, removing
* Connection state changed (MAX_CONCURRENT_STREAMS == 100)!
< HTTP/2 403
HTTP/2 403
< ml: A
ml: A
< att: 1-wW8CgpdkAVeS8Skwi5B8kEAIcMFHoR0INUCjDyHU
att: 1-wW8CgpdkAVeS8Skwi5B8kEAIcMFHoR0INUCjDyHU
< date: Thu, 14 Oct 2021 11:33:55 GMT
date: Thu, 14 Oct 2021 11:33:55 GMT
< pragma: no-cache
pragma: no-cache
< server: tsa_b
server: tsa_b
< status: 403 Forbidden
status: 403 Forbidden
< expires: Tue, 31 Mar 1981 05:00:00 GMT
expires: Tue, 31 Mar 1981 05:00:00 GMT
< set-cookie: fm=0; Max-Age=0; Expires=Thu, 14 Oct 2021 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; HTTPOnly
set-cookie: fm=0; Max-Age=0; Expires=Thu, 14 Oct 2021 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; HTTPOnly
< set-cookie: _twitter_sess=BAh7CSIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo%250ASGFzaHsABjoKQHVzZWR7ADoPY3JlYXRlZF9hdGwrCDuHlH58AToMY3NyZl9p%250AZCIlNjdiYjRlMzc5M2M5NzU4ZjhhMTBlMTBkMzUyNTVjOWU6B2lkIiViOTI0%250ANDlmODc3MWI0NWI1ODM4YTM2MTY0MzJhNzRjMw%253D%253D--8ec31f02f0bf7425db54fe9eacbebc160f25c481; Path=/; Domain=.twitter.com; Secure; HTTPOnly
set-cookie: _twitter_sess=BAh7CSIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo%250ASGFzaHsABjoKQHVzZWR7ADoPY3JlYXRlZF9hdGwrCDuHlH58AToMY3NyZl9p%250AZCIlNjdiYjRlMzc5M2M5NzU4ZjhhMTBlMTBkMzUyNTVjOWU6B2lkIiViOTI0%250ANDlmODc3MWI0NWI1ODM4YTM2MTY0MzJhNzRjMw%253D%253D--8ec31f02f0bf7425db54fe9eacbebc160f25c481; Path=/; Domain=.twitter.com; Secure; HTTPOnly
< set-cookie: personalization_id="v1_pDrlHRwELSSAAqcCgyxnLw=="; Max-Age=63072000; Expires=Sat, 14 Oct 2023 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; SameSite=None
set-cookie: personalization_id="v1_pDrlHRwELSSAAqcCgyxnLw=="; Max-Age=63072000; Expires=Sat, 14 Oct 2023 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; SameSite=None
< set-cookie: guest_id=v1%3A163421123563731963; Max-Age=63072000; Expires=Sat, 14 Oct 2023 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; SameSite=None
set-cookie: guest_id=v1%3A163421123563731963; Max-Age=63072000; Expires=Sat, 14 Oct 2023 11:33:55 GMT; Path=/; Domain=.twitter.com; Secure; SameSite=None
< content-type: text/html;charset=utf-8
content-type: text/html;charset=utf-8
< cache-control: no-cache, no-store, must-revalidate, pre-check=0, post-check=0
cache-control: no-cache, no-store, must-revalidate, pre-check=0, post-check=0
< last-modified: Thu, 14 Oct 2021 11:33:55 GMT
last-modified: Thu, 14 Oct 2021 11:33:55 GMT
< x-transaction: f8f36a34c8b37a1d
x-transaction: f8f36a34c8b37a1d
< content-length: 0
content-length: 0
< x-frame-options: SAMEORIGIN
x-frame-options: SAMEORIGIN
< x-ua-compatible: IE=edge,chrome=1
x-ua-compatible: IE=edge,chrome=1
< x-xss-protection: 0
x-xss-protection: 0
< x-content-type-options: nosniff
x-content-type-options: nosniff
< content-security-policy: default-src 'none'; connect-src 'self'; font-src https://abs.twimg.com https://abs-0.twimg.com data:; frame-src 'self' twitter:; img-src https://abs.twimg.com https://*.twimg.com https://pbs.twimg.com data:; media-src 'none'; object-src 'none'; script-src https://abs.twimg.com https://abs-0.twimg.com https://twitter.com https://mobile.twitter.com; style-src https://abs.twimg.com https://abs-0.twimg.com; report-uri https://twitter.com/i/csp_report?a=NVQWGYLXFVWG6Z3JNY%3D%3D%3D%3D%3D%3D&ro=false;
content-security-policy: default-src 'none'; connect-src 'self'; font-src https://abs.twimg.com https://abs-0.twimg.com data:; frame-src 'self' twitter:; img-src https://abs.twimg.com https://*.twimg.com https://pbs.twimg.com data:; media-src 'none'; object-src 'none'; script-src https://abs.twimg.com https://abs-0.twimg.com https://twitter.com https://mobile.twitter.com; style-src https://abs.twimg.com https://abs-0.twimg.com; report-uri https://twitter.com/i/csp_report?a=NVQWGYLXFVWG6Z3JNY%3D%3D%3D%3D%3D%3D&ro=false;
< x-twitter-response-tags: BouncerCompliant
x-twitter-response-tags: BouncerCompliant
< strict-transport-security: max-age=631138519
strict-transport-security: max-age=631138519
< x-connection-hash: 7b30f8cf537e2518fa03ef1579a3be60d33321e9d6ad0fafcb2a8d77585ebc27
x-connection-hash: 7b30f8cf537e2518fa03ef1579a3be60d33321e9d6ad0fafcb2a8d77585ebc27

<
* Connection #1 to host api.twitter.com left intact

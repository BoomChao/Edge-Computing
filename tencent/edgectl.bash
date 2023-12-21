#!/usr/bin/env bash
## const
export EDGECTLVERSION=v_20231130171418
export INTERFACE=
export NODE_NAME=
export REGISTRY=
export STATIC_PKG_PATH=
export DNS_IP=169.254.20.11
export DNS_CLUSTERIP=172.16.213.178
export EDGE_ARCH=
export RUNTIME=docker
export RUNTIME_PATH=/var/lib/docker
export K8SLINK_ARM=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/kubernetes%2Fkubernetes-v1.18.2-arm-edge-1.1.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D81d83dd66e8ccf3b1197ff0a12ee91a548b34314
export DOCKERLINK_ARM=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/docker%2Fdocker-19.03.9-arm-edge-1.0.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D6eb063816ff25a16dd890bea48046ef910fd02a0
export CONTAINERDLINK_ARM=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/containerd%2Fcontainerd-arm.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D167799fbfbfadeb12ed57228ea738d753f507d73
export CNILINK_ARM=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/other%2Fcni-plugins-linux-arm-v0.8.3-edge-1.1.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3De524691ec78cbd65f72d37a93a869d545147660d
export LITEAPISERVERLINK_ARM=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/lite-apiserver%2Flite-apiserver-arm-v2.0.6.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D1784fcbe5d7664ce393a1c071efff405b96af7d6
export K8SLINK_ARM64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/kubernetes%2Fkubernetes-v1.18.2-arm64-edge-1.1.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Df5e1a37d87975ebe0c749f928086927b44d8ba46
export DOCKERLINK_ARM64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/docker%2Fdocker-19.03.9-arm64-edge-1.0.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Db91074542965653e88ade87868fc2eed828994b3
export CONTAINERDLINK_ARM64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/containerd%2Fcontainerd-arm64.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D9ac4261970d7c0f25e00a64cecdd08a34d86484f
export CNILINK_ARM64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/other%2Fcni-plugins-linux-arm64-v0.8.3-edge-1.1.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Dd8a8f98d6a1e35bcdb7051897abf43cf7cbdce1e
export LITEAPISERVERLINK_ARM64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/lite-apiserver%2Flite-apiserver-arm64-v2.0.6.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D84a13cf1b847546bbc43013688a2df61b069b640
export K8SLINK_AMD64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/kubernetes%2Fkubernetes-v1.18.2-amd64-edge-1.1.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D9d2111df6b465fa2f00253ae0b869c2406bb989a
export DOCKERLINK_AMD64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/docker%2Fdocker-19.03.9-amd64-edge-1.0.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Dfcecd05406e2ed26d94330da8e4e283dc48f8158
export CONTAINERDLINK_AMD64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/containerd%2Fcontainerd-amd64.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Da106cf56ee290652494ccc23c931302b77cfcf6e
export CNILINK_AMD64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/other%2Fcni-plugins-linux-amd64-v0.8.3-edge-1.1.tgz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Dfb8ead9ecf2c0b1bb84e0865d86ef82516548bd4
export LITEAPISERVERLINK_AMD64=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/lite-apiserver%2Flite-apiserver-amd64-v2.0.6.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D2e50d2770aa92bb0b2ed1c7da491058e94e5167c
export SYSLINK=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/other%2Fsys-1.6.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3Dbcb8428e92ec2cdb0c427ca5d8a03971b8d27f19
export GPULINK=https://tke-edge-1253687700.cos.accelerate.myqcloud.com/other%2Fgpu.tar.gz?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDUnpa4HDtIQHsDH4g15sOedLlvoQlpc8N%26q-sign-time%3D1703140810%3B1703144410%26q-key-time%3D1703140810%3B1703144410%26q-header-list%3D%26q-url-param-list%3D%26q-signature%3D44bc6cff22a4bc971a646d8b8fb23d00f3606363
export CACERTDATA="-----BEGIN CERTIFICATE-----
MIICyDCCAbCgAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTIyMTA2MzIzOVoXDTMzMTIxODA2MzIzOVowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANbE
vpD5TfCCZEfPGW5OWbAO3J7lkqXX736p9me8MDSLu2cIUiYXOX1Ao5iwRrjAuNEF
whnewbAr6O/S4uKowmT7Xpde8cqIOmH68omymHVx7+RDz3njOtsjF7qis/Ik8E7T
hIo1RIQE87n2qs5K82DOZ1wWrqlDUT571JmjSQ4amGIJ8XM0NjKw9sHg4VR3YOSl
6M2i4pdNpFVh4DFam83oxYd5rk/ESjimXt2G4e3ZRSYkZyoQ0huMsdLRWexi4wMT
ZF7e36Yzp7S65dKv3EwL30em0GG6ZtJ9J7SpgSI38tFtCc4/ig2tRHbL3I/vRMII
neSU6kuz1Cdls8jXxDUCAwEAAaMjMCEwDgYDVR0PAQH/BAQDAgKUMA8GA1UdEwEB
/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBAD2MOx3eWAXKsjEdVlFXGYRCrvTT
5uBmZQ0S8IoKJzB1yc5uZnv/LOvXhEPq+oEoURPm6cxgxtyRcKQhlFe0puw4ntYp
m79A04DHtrFIvEy7RkyeYLpayXLFPVqeJBq2BXtESNc647tt8wlbqQHn1Y+Y+as6
ZuW6ApOOOZtsgc8xAMtAeELMYB4+Lss4WJe0S2WBIBfoZxIYVGleami4BAIyXxxT
ghsuDb342qRzUxrSqsYo1kUfegr3A+0Nb0pERXJ8jBLUL7X9ANoO/R/ViQGJj5Qr
k92ro7wt7byvkHsLz/aG3skWEoMidIWoPG93wCMJ+R9+PssMXie2SEdqsKg=
-----END CERTIFICATE-----
"
export LITEAPISERVER_CERT="-----BEGIN CERTIFICATE-----
MIIDozCCAougAwIBAgIQcft1v1L/HPgX4xQ8Op506DANBgkqhkiG9w0BAQsFADAV
MRMwEQYDVQQDEwprdWJlcm5ldGVzMB4XDTIzMTIyMTA2NDAwOVoXDTMzMTIxODA2
NDAwOVowQzEQMA4GA1UEChMHdGVuY2VudDEWMBQGA1UECxMNdGVuY2VudCBjbG91
ZDEXMBUGA1UEAxMObGl0ZS1hcGlzZXJ2ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQDZ3VudGHFmbrAOtxfc9kjaoeuhcRoBVf7X9Sed9I//k1akPdwU
X3WYElE1AXD7FyGPh9jkkRP3RoF1dDBBn7eo3KxoOP60H/FdPC8STH8vrEedA8z6
MLrd7jdEreAcBpdmTDY6T2Nbi6chnh+3golikeZqpRBV2IT57oNi26yAqjNKmxAc
2KhjSxbrkFSJKSPwlR3uXzFq2uIKu0lJgkd1RpBmfTlTzRoTajMWIRiNDXsrbY+1
ZBSX2tMAJhNx3XKf/ilfspVX7xiCsBWtXqLU+SMDp5QKE1BXS/W9jP6x9WPUOxHp
iqXf5iuGfIf3N3UnrhnuEAp1eXgR1HAcHrEXAgMBAAGjgcAwgb0wDgYDVR0PAQH/
BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjCBiwYDVR0RBIGD
MIGAgg5saXRlLWFwaXNlcnZlcoIKa3ViZXJuZXRlc4ISa3ViZXJuZXRlcy5kZWZh
dWx0ghZrdWJlcm5ldGVzLmRlZmF1bHQuc3ZjgiRrdWJlcm5ldGVzLmRlZmF1bHQu
c3ZjLmNsdXN0ZXIubG9jYWyHBKwQAAGHBKn+FAuHBH8AAAEwDQYJKoZIhvcNAQEL
BQADggEBABdYf5CYTTZBI4C81JN6IUrExLpoZeVOv9Xf1BkfjKvOmUh7uDXHEq8S
GoI/am0MNCWuz2bPwa1RL4qTbJKgyeyQItOUZhqRh3otBonxu5TcUpWIAYR4255N
k0c1coQiHjNH99qaH0ADhOjMBg+HkrTDfxQ9PmJr/srpvqGgB7PZoZLtOUORZd1z
Ud8M+35QNQJKYWxeOYW5kOMFO2kIRZQJoRh/JTHfUW+WoEsXcf6LtGavNP82tg0e
6jxO44jV4Nl0at3vnsqtf3fpzaHJr+P/+1vaRJooX/yQ/kUeALJRCifc6NgDIN1C
vdDQZflXzIFnQ0n9ipKCXlgM+8NI8eg=
-----END CERTIFICATE-----
"
export LITEAPISERVER_KEY="-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA2d1bnRhxZm6wDrcX3PZI2qHroXEaAVX+1/UnnfSP/5NWpD3c
FF91mBJRNQFw+xchj4fY5JET90aBdXQwQZ+3qNysaDj+tB/xXTwvEkx/L6xHnQPM
+jC63e43RK3gHAaXZkw2Ok9jW4unIZ4ft4KJYpHmaqUQVdiE+e6DYtusgKozSpsQ
HNioY0sW65BUiSkj8JUd7l8xatriCrtJSYJHdUaQZn05U80aE2ozFiEYjQ17K22P
tWQUl9rTACYTcd1yn/4pX7KVV+8YgrAVrV6i1PkjA6eUChNQV0v1vYz+sfVj1DsR
6Yql3+YrhnyH9zd1J64Z7hAKdXl4EdRwHB6xFwIDAQABAoIBADEL9m39bLokvRny
+jpSb8BYp5VmwvX+CCtSE6MpxalB4EWFb6BehTjBFusZ8fd1E6cebCO4zYfjpY1t
pNeBP3WSiHXGLwEaF9pnjClQc2mmHVEp4+GHSupfkK2zfzqP+VGcYrDp4nJflDar
RHSpvIgmVHs5wd2xqu4hVg7RaZplTDAuW+fO0jFrVJmToH0eeBVZI+p7QNZfkBXp
UZI5aEYBvxB+/3Cly6DxjOY7jMXiAYF4+OUs4AnHlTzXhEGUJU5y8OPdZ/huNG4w
RizwD4vErUxIvev07NeKn9IIb5Cw4K1siy3ye5DUEO538RTOFcLKfepvc63GtW1q
0D5DqmECgYEA3eCG92Ew/UHhonFrfLdqfYfaOiLHB+dnXG9zJc0lJycyaVMyaIm+
DKWijq4CYj/XsS7l5wB703Ket/1Y81DATIM/la2RYO4EBXIQ8hUH52BLIeM9RFOJ
LYBsS16MJux+7RPmjQUMZYVxQQwwUjEnzwXnry4NN0EcF1e9OIepAf8CgYEA+17c
MIBV+phPkQ5jjJstBIZ7x2FrVqIWKhIUIOz9r5Efnt0wpqqqlYTfCM3/os8Euvgm
LGZhK+VsbaoxXKGlECKjuoxwDTPrDz2nN+jhDD79u21rWVBBu6BLxlRzBVnO3KrL
HyLtwkGvf3IyZjSRdgTl8wKvd74FzXty1mT0IOkCgYA9isOk5j5yYM23AwKvayiM
fRwYuADAvny69ObZe1dszsB62mrG+D3QwDignr9mhRLMwJdgRZATDF3d5tW/V4yf
LGB8odILMrnG0ObGXvL8SIdOdPtPcmRATLi9BxKU0VA7biOqxdW0axkI09qrUZsb
HyYuPvXHd7XU+68ueOJ1/QKBgQDTriV0vo4o8pyGhfx1CrQVTH7t/u7aTLKniQPk
Wk6jy206ZgAzSiNOuE7t5jOxUe4k2RWkbC7GPXRawWjCHemXteP1E5DEvYTkF8I6
heUGYAFiFZnB46EHNMy63qDhz6gxEa7tsIdR/+ifRXaFtR0NqsBOLWPATYgraxrg
yrD/CQKBgFvHlXhe1t4iVL4bFeSBh8yuAB4lxZsS4F+IbMyRF3kJJ+Pbe5ZZKsXi
0TCpsvfUBFMTxi+wkOZ3Fygy3VOyH0hmZnRWVDWhR1f85DDPggond7sodC/Eeve8
BAcMJoJZS+wk5OF0rB9rOZIkwo9r3NoQ98v3qW+uwtQwBtTmIbUa
-----END RSA PRIVATE KEY-----
"
# from now lite-apiserver will listen tkeedgedns dummy dev, instead of 127.0.0.1
# for support ipvs
export LITEAPISERVER_HOST=$DNS_IP
export LITEAPISERVER_PORT=1443
export NODEKUBECONFIG=""
export BOOTSTRAP_TOKEN=0kwzvi.4cxhogh0pp1qy2nh
export MASTER_URL=cls-e3w4loil.ccs.tencent-cloud.com
export MASTER_PORT=443
export KUBELET_INFRA_IMAGE=ccr.ccs.tencentyun.com/library/pause:latest
export POD_NUM=61
export REGISTRY_MIRRORS=[]
export INSECURE_REGISTRIES=[]
export PREINSTALL_HOOK=""
export POSTINSTALL_HOOK=""
export K8SVERSION=1.18.2
export SKIPINSTALLRUNTIME=false
export RuntimeUrl=
export RuntimeDir=

export K8sTar=kubernetes.tgz
export DockerDir=docker-19.03
export ContainerdDir=containerd
export RuntimeTar=tkeedge-runtime.tgz
export CniTar=cni-plugins-linux-v0.8.3.tgz
export LiteApiserverTar=lite-apiserver.tar.gz
export SysTar=sys-1.6.tar.gz
export GPUTar=gpu.tar.gz
export LocalImageList=(ccr.ccs.tencentyun.com/library/pause:latest ccr.ccs.tencentyun.com/tkeedge/tke-monitor-agent:20220714-3b31e8d2 ccr.ccs.tencentyun.com/tkeedge/nvidia-device-plugin:v0.9.0 superedge.tencentcloudcr.com/tkeedge/init-dns:v1.0.0 superedge.tencentcloudcr.com/tkeedge/coredns:1.6.7 superedge.tencentcloudcr.com/tkeedge/application-grid-wrapper:v0.9.0 superedge.tencentcloudcr.com/tkeedge/kube-proxy:v1.18.2 superedge.tencentcloudcr.com/tkeedge/tunnel:v0.9.0 superedge.tencentcloudcr.com/tkeedge/init-cni-plugins:v0.8.3-edge-1.2 superedge.tencentcloudcr.com/tkeedge/flannel:v0.12.0-edge-2.0)
export CGDRIVER=cgroupfs
export IP_RANGE=
export NODE_INIT_LABEL=

## tools
out_error(){
  echo -e "\033[31m ERROR >> $* \033[0m"
  exit -1
}

out_success(){
  echo -e "\033[32m $* \033[0m"
}

out_warn(){
  echo -e "\033[33m WARN >> $* \033[0m"
}

timestamp(){
 date +"%Y-%m-%d %T"
}

## check
check_root(){
  if [ $UID -ne 0 ];then
      out_warn Not root user. Please run "su root" as root.
  fi
}

check_os(){
  os="$(. /etc/os-release && echo "$ID")"
  osVersion="$(. /etc/os-release && echo "$VERSION_ID")"
  osArch="$( hostnamectl  | grep Architecture | awk -F : '{printf $2}')"
  if [[ "$osArch" != " x86-64" ]] &&
     [[ "$osArch" != " arm" ]] &&
     [[ "$osArch" != " arm64" ]]; then
        out_warn "OS Architecture $osArch has not support!"
  fi

  case $os in
  centos)
     if [[ $osVersion -lt 6 ]] || [[ $osVersion -gt 7 ]]; then
        out_warn OS $os Version $osVersion has not been tested and may not succeed!
     fi
     ;;
  ubuntu)
     if [[ $osVersion < 16.04 ]]  || [[ $osVersion > 21.00 ]]; then
        out_warn OS $os Version $osVersion has not been tested and may not succeed!
     fi
     ;;
  tlinux)
     if [[ $osVersion < 2.2 ]]  || [[ $osVersion > 2.4 ]]; then
        out_warn OS $os Version $osVersion has not been tested and may not succeed!
     fi
     ;;
  debian)
     if [ $osVersion < 9 ]; then
        out_warn OS $os Version $osVersion has not been tested and may not succeed!
     fi
     ;;
  *| '')
     out_warn OS $os has not been tested and may not succeed!
     ;;
esac
}

check_swap(){
  cmdOut="$(swapon -s)"
  if [ -n "$cmdOut" ]; then
     out_warn Swap started. Please run "swapoff -a" turn off swap.
  fi
}

check_firewalld(){
  status="$(systemctl status firewalld | grep Active |  awk '{print $3}')"
  if [ "${status}" == "(running)" ];then
     out_warn Firewalld runnning. Please run "systemctl disable firewalld && systemctl stop firewalld" turn off firewalld.
  fi
}

check_ufw(){
  os="$(. /etc/os-release && echo "$ID")"
  if [ "${os}" == "ubuntu" ]; then
     status="$(ufw status | grep Status | awk '{print $2}')"
     if [ "${status}" == "active" ];then
         out_warn ufw runnning. Please run "ufw disable" turn off ufw.
     fi
  fi
}

check_port(){
  for port in 1443 {10249..10259} {51000..51020}; do
      portOut="$(lsof -i :${port})"
      if [ -n "$portOut" ]; then
         out_warn Port: $port occupied. Please turn off port service.
      fi
  done
}

check_is_enable_cgroup_memory(){
  mount | grep cgroup/memory | grep rw
  if [ $? -ne 0 ]; then
     out_warn "The machine not enabled cgroup memory. Please enable!"
  fi
}

check_clean(){
for cmd in kubeadm docker kubelet kubectl; do
      which $cmd
      if [ $? -eq 0 ]; then
         out_warn The machine is not clean. Please reinstall the system.
      fi
  done
}

check(){
  check_root
  check_os
  check_swap
  check_firewalld
  check_port
  check_is_enable_cgroup_memory
  check_clean
  if [ -z $STATIC_PKG_PATH ]; then
    necessity_check
  fi
  out_success ">> Check Environment Finish! <<"
}

## check_is_install_success
check_node_binary_service(){
  index=0
  for((i=0;i<10;i++));
  do
      if [ "${RUNTIME,,}" == "containerd" ]; then
        RuntimeService=containerd
      else
        RuntimeService=dockerd
      fi
      runtimeStatus="$(systemctl status $RuntimeService | grep Active |  awk '{print $3}')"
      kubeletStatus="$(systemctl status kubelet | grep Active |  awk '{print $3}')"
      liteStatus="$(systemctl status lite-apiserver | grep Active |  awk '{print $3}')"
      if [[ $runtimeStatus == "(running)" ]] &&
         [[ $liteStatus == "(running)" ]] &&
         [[ $kubeletStatus == "(running)" ]];then
            break
      fi
      index=${i}
      sleep 1s
  done

  if [ "${index}" -le 10 ];then
      return 0
  fi

  return 1
}

check_is_install_success(){
  sleep 5s
  echo Waiting Running of the base service
  check_node_binary_service
  binIsRunning=$?
  if [ "$binIsRunning" -eq 0 ];then
      echo $RuntimeService kubelet lite-apiserver has Running!
  else
      out_warn $RuntimeService kubelet lite-apiserver not all Running!
      return 1
  fi

  out_success Install Edge Node: $NODE_NAME Success!
  return 0
}

## install
install_option(){

  # set all global var default value
  if [ -z $RUNTIME ]; then
    RUNTIME=docker
  fi
  # set cgroup driver
  # support cgroup v2 like u22
  mount | grep cgroup2
  if [ 0 -eq $? ];then
    CGDRIVER=systemd
  fi


  echo install params: $*
  ARGS="$(getopt -o n:p:i: -a -l node-name:,install-pkg-path:,interface: -- "$@")"
  if [ $? != 0 ]
  then
     echo "Terminating....." >&2
     exit 1
  fi

  eval set -- "$ARGS"
  while true
  do
    case "$1" in
      -n | -node-name | --node-name)
        NODE_NAME=$2
        echo "Get option --node-name: $NODE_NAME"
        shift 2
        ;;
      -p | -install-pkg-path | --install-pkg-path)
		    if [[ $2 =~ "http" ]]; then
            rm -rf ./tkeedge-install-pkg.tar.gz
            wget $2 -O "tkeedge-install-pkg.tar.gz" | tee
            STATIC_PKG_PATH=./tkeedge-install-pkg.tar.gz
        else
            STATIC_PKG_PATH=$2
        fi
        echo "Get option --install-pkg-path: $STATIC_PKG_PATH"
        shift 2
        ;;
      -i | -interface | --interface)
        INTERFACE=$2
        echo "Get option --interface: $INTERFACE"
        shift 2
        ;;
      "--")
        shift
        break
        ;;
      "?")
        echo "Unknown option $OPTARG"
        ;;
      *)
        echo "Unknown error while processing options"
        return 1
        ;;
    esac
done
}

note_message(){
  echo NOTE:
  echo "     input: [ edgectl $* ]"
  echo "     logPath: /tmp/tkeedge-install.log"
  echo "     success-message: Install Edge Node: $NODE_NAME Success!"
  echo
  echo Start Install Edge Node $NODE_NAME, Please Waiting...
}

preinstall_hook_os_customize(){
  os="$(. /etc/os-release && echo "$ID")"
  osVersion="$(. /etc/os-release && echo "$VERSION_ID")"
  osArch="$( hostnamectl  | grep Architecture | awk -F : '{printf $2}')"
  out_warn "preinstall_hook_os_customize OS=$os, osVersion=$osVersion, osArch=$osArch"

  case $os in
  centos)
     ;;
  ubuntu)
     if [ "$osVersion" == "20.04" ];then
       systemctl stop named && systemctl disable named
       CGDRIVER=cgroupfs
     fi
     if [ "$osVersion" == "18.04" ];then
       CGDRIVER=cgroupfs
     fi
     ;;
  tlinux)
     ;;
  debian)
     ;;
  *| '')
     out_warn OS $os has not been tested and may not succeed!
     ;;
  esac
}

postinstall_hook_os_customize(){
  os="$(. /etc/os-release && echo "$ID")"
  osVersion="$(. /etc/os-release && echo "$VERSION_ID")"
  osArch="$( hostnamectl  | grep Architecture | awk -F : '{printf $2}')"
  out_warn "postinstall_hook_os_customize OS=$os, osVersion=$osVersion, osArch=$osArch"

  case $os in
  centos)
     # ntp start
     # systemctl start ntpd
     # systemctl enable ntpd
     ;;
  ubuntu)
     # systemctl start ntp
     # systemctl enable ntp
     ;;
  tlinux)
     # systemctl start ntpd
     # systemctl enable ntpd
     ;;
  debian)
     # systemctl start ntp
     # systemctl enable ntp
     ;;
  *| '')
     out_warn OS $os has not been tested and may not succeed!
     ;;
  esac
}

preinstall_hook(){
  out_warn "execute preinstall_hook_os_customize..."
  preinstall_hook_os_customize
  out_warn "execute preinstall_hook user script..."
  if [ "$PREINSTALL_HOOK" != ""  ]; then
    echo $PREINSTALL_HOOK | base64 -d > /tmp/tkeedge_preinstall_hook.sh
    /bin/bash -e -x /tmp/tkeedge_preinstall_hook.sh
  fi
}

postinstall_hook(){
  out_warn "execute postinstall_hook_os_customize..."
  postinstall_hook_os_customize
  out_warn "execute postinstall_hook user script..."
  if [ "$POSTINSTALL_HOOK" != ""  ]; then
    echo $POSTINSTALL_HOOK | base64 -d > /tmp/tkeedge_postinstall_hook.sh
    /bin/bash -e -x /tmp/tkeedge_postinstall_hook.sh
  fi
}

# if user not
necessity_check(){
  # check apiserver
  curl -k -s --connect-timeout 5 https://${MASTER_URL}:${MASTER_PORT} > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check Apiserver https://${MASTER_URL}:${MASTER_PORT} connect failed"
  fi
  # check tunnel
  nc -zv ${MASTER_URL} 9000 > /dev/null 2>&1 > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check Tunnel cloud ${MASTER_URL}:9000 connect failed"
  fi
  # check registry
  curl -k -s --connect-timeout 5 https://superedge.tencentcloudcr.com/v2/ > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check TCR https://superedge.tencentcloudcr.com/v2/ connect failed"
  fi
  curl -k -s --connect-timeout 5 https://ccr.ccs.tencentyun.com/v2/ > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check CCR https://ccr.ccs.tencentyun.com/v2/ connect failed"
  fi
  # check cos
  curl -k -s --connect-timeout 5 https://tke-edge-1253687700.cos.accelerate.myqcloud.com > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check COS https://tke-edge-1253687700.cos.accelerate.myqcloud.com connect failed"
  fi
  curl -k -s --connect-timeout 5 http://ccr-1253687700.cn-south.myqcloud.com > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check COS http://ccr-1253687700.cn-south.myqcloud.com connect failed"
  fi
  curl -k -s --connect-timeout 5 https://tcr-l8qid9v6-1253687700.cos.ap-guangzhou.myqcloud.com > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    out_warn "necessity_check COS https://tcr-l8qid9v6-1253687700.cos.ap-guangzhou.myqcloud.com connect failed"
  fi
}

install(){
  clear &> /tmp/tkeedge-install.log
  install_option $* &>> /tmp/tkeedge-install.log
  check &>> /tmp/tkeedge-install.log
  note_message $*
  preinstall_hook &>> /tmp/tkeedge-install.log
  install_script &>> /tmp/tkeedge-install.log
  postinstall_hook &>> /tmp/tkeedge-install.log
  check_is_install_success
}

set_arch(){
if [ -z "$EDGE_ARCH" ]; then
  arch=$(uname -m)
  case $arch in
    arm)
      EDGE_ARCH="arm"
      ;;
    armv7b)
      EDGE_ARCH="arm"
      ;;
    armv7l)
      EDGE_ARCH="arm"
      ;;
    aarch64_be)
      EDGE_ARCH="arm64"
      ;;
    aarch64)
      EDGE_ARCH="arm64"
      ;;
    armv8b)
      EDGE_ARCH="arm64"
      ;;
    armv8l)
      EDGE_ARCH="arm64"
      ;;
    x86_64)
      EDGE_ARCH="amd64"
      ;;
    *)
      echo "Unsupported arch $arch"
      exit -1
      ;;
  esac
fi
echo "[$(timestamp)] arch is $EDGE_ARCH"
}

download_offline_pkg(){
  OUTPUT_PATH=$1
  if [ -z $OUTPUT_PATH ]; then
    OUTPUT_PATH=`pwd`
  fi
  TMP_DIR="/tmp/tke-edge-download-tmp-dir/"
  rm -rf ${TMP_DIR} && mkdir -p ${TMP_DIR}
  set_arch
  download_pkg $TMP_DIR
  download_image $TMP_DIR
  OUTPUT_FILE=$OUTPUT_PATH/tkeedge-node-offline-pkg-$EDGE_ARCH-$K8SVERSION.tar
  tar cf $OUTPUT_FILE -C $TMP_DIR .
  out_warn "generate offline package file $OUTPUT_FILE"
  rm -fr $TMP_DIR
}

download_image(){
  TMP_DIR=$1
  if [ "${RUNTIME,,}" == "containerd" ]; then
    ctr -n k8s.io image ls
    if [ $? -ne 0  ]; then
      out_error "Please install containerd or install edge node first"
    fi
    for i in "${LocalImageList[@]}"
    do
      ctr -n k8s.io images pull $i
    done
    ctr -n k8s.io images export ${TMP_DIR}tkeedge-local-image-$EDGE_ARCH-$K8SVERSION.tar.gz ${LocalImageList[@]}
  else
    docker images
    if [ $? -ne 0  ]; then
      out_error "Please install docker or install edge node first"
    fi
    for i in "${LocalImageList[@]}"
    do
      docker pull $i
    done
    docker save ${LocalImageList[@]} | gzip > ${TMP_DIR}tkeedge-local-image-$EDGE_ARCH-$K8SVERSION.tar.gz
  fi 
}

download_pkg(){
set -e

echo "Begin to prepare clean env..."

echo "[$(timestamp)] Begin to download bin files"
TMP_DIR=$1

case $EDGE_ARCH in
  arm)
    K8sUrl=$K8SLINK_ARM
    DockerUrl=$DOCKERLINK_ARM
    CniUrl=$CNILINK_ARM
    LiteApiserverUrl=$LITEAPISERVERLINK_ARM
    ContainerdUrl=$CONTAINERDLINK_ARM
    ;;
  arm64)
    K8sUrl=$K8SLINK_ARM64
    DockerUrl=$DOCKERLINK_ARM64
    CniUrl=$CNILINK_ARM64
    LiteApiserverUrl=$LITEAPISERVERLINK_ARM64
    ContainerdUrl=$CONTAINERDLINK_ARM64
    ;;
  amd64)
    K8sUrl=$K8SLINK_AMD64
    DockerUrl=$DOCKERLINK_AMD64
    CniUrl=$CNILINK_AMD64
    LiteApiserverUrl=$LITEAPISERVERLINK_AMD64
    ContainerdUrl=$CONTAINERDLINK_AMD64
    ;;
esac
SysUrl=$SYSLINK
GPUUrl=$GPULINK

echo "[$(timestamp)] Begin to download kubernetes..."
wget -q $K8sUrl -O $TMP_DIR$K8sTar
if [ $? -eq 0 ]; then
  echo "[$(timestamp)] ====download kubernetes ok!===="
else
  echo "[$(timestamp)] ====download kubernetes failed!===="
  exit -1
fi

echo "[$(timestamp)] Begin to download runtime..."
if [ "${RUNTIME,,}" == "containerd" ]; then
  RuntimeUrl=$ContainerdUrl
else
  RuntimeUrl=$DockerUrl
fi
wget -q $RuntimeUrl -O $TMP_DIR$RuntimeTar
if [ $? -eq 0 ]; then
  echo "[$(timestamp)] ====download runtime ok!===="
else
  echo "[$(timestamp)] ====download runtime failed!===="
  exit -1
fi

echo "[$(timestamp)] Begin to download cni..."
wget -q $CniUrl -O $TMP_DIR$CniTar
if [ $? -eq 0 ]; then
  echo "[$(timestamp)] ====download cni ok!===="
else
  echo "[$(timestamp)] ====download cni failed!===="
  exit -1
fi

echo "[$(timestamp)] Begin to download lite-apiserver..."
wget -q $LiteApiserverUrl -O $TMP_DIR$LiteApiserverTar
if [ $? -eq 0 ]; then
  echo "[$(timestamp)] ====download lite-apiserver ok!===="
else
  echo "[$(timestamp)] ====download lite-apiserver failed!===="
  exit -1
fi

set +e
if [[ $EDGE_ARCH = "amd64" ]]; then
  nvidia_devices=$(lspci -d 10de:)
  if [ "$nvidia_devices" != "" ]; then
    echo "[$(timestamp)] Begin to download gpu..."
    wget -q $GPUUrl -O $TMP_DIR$GPUTar
    if [ $? -eq 0 ]; then
      echo "[$(timestamp)] ====download gpu ok!===="
    else
      echo "[$(timestamp)] ====download gpu failed!===="
      exit -1
    fi
  fi
fi

}

extract_pkg(){
  set -e
  TMP_DIR=$1
  mkdir -p $TMP_DIR
  echo "Begin to tar all files"
  tar -C /usr/local/qcloud/runtime -xzf $TMP_DIR$RuntimeTar
  tar -C /usr/bin/ -xzf $TMP_DIR$K8sTar
  tar -C /usr/local/tinykube/ -xzf $TMP_DIR$LiteApiserverTar
  tar -C /opt/cni/bin/ -xzf $TMP_DIR$CniTar
  set +e
  if [[ $EDGE_ARCH = "amd64" ]]; then
    nvidia_devices=$(lspci -d 10de:)
    if [ "$nvidia_devices" != "" ]; then
      echo "[$(timestamp)] Begin to download gpu..."
      tar -C /usr/local/tinykube/ -xzf $TMP_DIR$GPUTar
      if [ $? -eq 0 ]; then
        echo "[$(timestamp)] ====download gpu ok!===="
      else
        echo "[$(timestamp)] ====download gpu failed!===="
        exit -1
      fi
    fi
  fi

}

set_dummy_dev(){
  if [ -z "$DNS_IP" ]; then
    DNS_IP=$IP_ADDR
  fi

  ip link add tkeedgedns type dummy
  ip addr add $DNS_IP dev tkeedgedns

  ip address show tkeedgedns
  if [ $? -ne 0 ]; then
    out_error "set dummy dns dev error, exit install"
  fi
}

install_runtime(){
# generate prestart script
# install runtime
if [ "${RUNTIME,,}" == "containerd" ]; then
cd /usr/local/qcloud/runtime/$ContainerdDir/
cat > patch.json << EOF
{
  "root" : "$RUNTIME_PATH"
}
EOF

/bin/bash -cx /usr/local/qcloud/runtime/$ContainerdDir/install
cd -
else
cd /usr/local/qcloud/runtime/$DockerDir/
cat > patch.json << EOF
{
  "graph": "$RUNTIME_PATH",
  "exec-opts": ["native.cgroupdriver=$CGDRIVER"]
}
EOF

/bin/bash -c ./offline-install.sh
cd -
fi

}

close_swap(){
  # close swap
  echo "[$(timestamp)] Close swap"
  swapoff -a || true
  sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab || true
}



install_centos(){
    PKG_List_Centos=(bridge-utils wget ebtables ipset socat conntrack nfs-utils)
    for var in ${PKG_List_Centos[@]};
    do
         yum install $var -y
    done
    echo "init_sys_centos"
}

install_ubuntu(){
    PKG_List_Ubuntu=(aufs-tools bridge-utils wget ebtables ipset socat conntrack nfs-common)
    apt-get update
    for var in ${PKG_List_Ubuntu[@]};
    do
         apt-get install $var -y
    done

    chown ubuntu:ubuntu /home/ubuntu/.kube/ || echo
#    if [ "18.04" = "$OS_VERSION" ];then
#        if  systemctl status systemd-resolved.service >/dev/null 2>&1
#        then
#            systemctl stop systemd-resolved.service
#            systemctl disable systemd-resolved.service
#            rm /etc/resolv.conf
#            cp /run/systemd/resolve/resolv.conf /etc/resolv.conf
#       fi
#    fi
    echo "init_sys_ubuntu"
}

install_tlinux(){
    install_centos
    yum install -y libseccomp

    sed -i 's/rotate 99/rotate 4/g' /etc/logrotate.conf
    rm -f /etc/yum.repos.d/cuda*
    echo "init_sys_tlinux"
}

kernelset_common(){
    declare -A kernalpara=(
            ["net.core.somaxconn"]="32768"
            ["net.ipv4.tcp_max_syn_backlog"]="8096"
            ["fs.file-max"]="2097152"
            ["fs.inotify.max_user_instances"]="8192"
            ["fs.inotify.max_user_watches"]="524288"
            ["net.core.bpf_jit_enable"]="1"
            ["net.core.bpf_jit_harden"]="1"
            ["net.core.bpf_jit_kallsyms"]="1"
            ["net.core.dev_weight_tx_bias"]="1"
            ["net.core.rmem_max"]="16777216"
            ["net.core.rps_sock_flow_entries"]="8192"
            ["net.core.wmem_max"]="16777216"
            ["net.ipv4.neigh.default.gc_thresh1"]="2048"
            ["net.ipv4.neigh.default.gc_thresh2"]="4096"
            ["net.ipv4.neigh.default.gc_thresh3"]="8192"
            ["net.ipv4.tcp_max_orphans"]="32768"
            ["net.ipv4.tcp_max_tw_buckets"]="32768"
            ["net.ipv4.tcp_rmem"]="4096 12582912        16777216"
            ["net.ipv4.tcp_wmem"]="4096 12582912        16777216"
            ["vm.max_map_count"]="262144"
            ["kernel.threads-max"]="125794"
            ["net.ipv4.ip_forward"]="1"
            )

    for key in ${!kernalpara[@]}; do
        sysctl -w ${key}="${kernalpara[${key}]}" >/dev/null 2>&1
        if [ $? -ne 0 ]
        then
            continue
        fi
        if grep -q -w ${key} /etc/sysctl.conf
        then
            sed -i "/\<${key}\>/ d" /etc/sysctl.conf
        fi
        echo "${key}=${kernalpara[${key}]}" >> /etc/sysctl.conf
    done

    sysctl -p || echo
    echo ""

    may_detach_mounts=/proc/sys/fs/may_detach_mounts
    if [ -f "$may_detach_mounts" ]; then
      echo 1 > "$may_detach_mounts"
    fi

    echo "kernelset_common"
}

init_sys(){
    export OS_RELEASE="$(. /etc/os-release && echo "$ID")"
    export OS_VERSION="$(. /etc/os-release && echo "$VERSION_ID")"
    if echo $OS_RELEASE | grep "centos" >/dev/null 2>&1;then
        install_centos
    elif echo $OS_RELEASE | grep "ubuntu" >/dev/null 2>&1;then
        install_ubuntu
    elif echo $OS_RELEASE | grep "tlinux" >/dev/null 2>&1;then
        install_tlinux
    fi

    kernelset_common
}

function maskdigits() {
   IP_MASK_INT=$(echo "$1" | awk -F "." '{print $1" "$2" "$3" "$4}')
   for num in $IP_MASK_INT;
   do
     while [ $num != 0 ];do
     echo -n $(($num%2)) >> /tmp/num;
     num=$(($num/2));
     done
   done
   IP_MASK_NUM=$(grep -o "1" /tmp/num | wc -l)
   rm /tmp/num
   return $IP_MASK_NUM
}

function iprange() {
   maskdigits $1

   IP_MASK_NUM=$?

   IP_GATE_INT=($(echo $2 | awk -F "." '{print $1" "$2" "$3" "$4}'))

   IP_MASK_INT=($(echo $1 | awk -F "." '{print $1" "$2" "$3" "$4}'))

   IP_RANGE=$((IP_GATE_INT[0] & IP_MASK_INT[0])).$((IP_GATE_INT[1] & IP_MASK_INT[1])).$((IP_GATE_INT[2] & IP_MASK_INT[2])).$((IP_GATE_INT[3] & IP_MASK_INT[3]))/${IP_MASK_NUM}

}

## install script
install_script(){
#!/usr/bin/env bash
# Part: init

mkdir -p /usr/local/qcloud/runtime
mkdir -p /etc/kubernetes/pki
mkdir -p /etc/sysconfig
mkdir -p /usr/lib/systemd/system
mkdir -p /usr/local/tinykube
mkdir -p /opt/cni/bin
mkdir -p $HOME/.kube
mkdir -p $RUNTIME_PATH

if [ $UID -ne 0 ];then
	echo "Non root user. Please run as root."
  exit -1
else
	echo "Root user"
fi

if [ -z "$INTERFACE" ]; then
    INTERFACE=$(route | grep '^default' | head -n 1 | grep -o '[^ ]*$')
else
    echo ${INTERFACE} > /etc/interface
fi

IP_ADDR=$(ifconfig ${INTERFACE} | grep "inet " | awk '{print $2}')
if [[ $IP_ADDR =~ 'addr' ]]; then
    IP_ADDR=${IP_ADDR##*:}
fi
echo "[$(timestamp)] node ip is $IP_ADDR"

IP_MASK=$(ifconfig ${INTERFACE} | grep "netmask " | awk '{print $4}')
if [[ -z "$IP_MASK" ]]; then
    IP_MASK=$(ifconfig ${INTERFACE} | grep "Mask" | awk  '{print $4}' | awk -F ':' '{print $2}')
fi

iprange $IP_MASK $IP_ADDR

if [ -z "$NODE_NAME" ]; then
    NODE_NAME=node-${IP_ADDR}
fi

echo "" > /etc/flannel-mac
echo ${NODE_NAME} > /etc/node


set_dummy_dev

set_arch

close_swap

# download and extract install pkg to tmp dir
if [ -z $TMP_DIR ]; then
  TMP_DIR="/tmp/tke-edge-tmp-dir/"
  mkdir -p $TMP_DIR
fi
if [ -z $STATIC_PKG_PATH ]; then
  download_pkg $TMP_DIR
else
  tar -C $TMP_DIR  -xf $STATIC_PKG_PATH
fi
extract_pkg $TMP_DIR

cat > /etc/kubernetes/lite-apiserver_tls.json << EOF
[
    {
        "key":"/var/lib/kubelet/pki/kubelet-client-current.pem",
        "cert":"/var/lib/kubelet/pki/kubelet-client-current.pem"
    }
]
EOF

cat > /etc/kubernetes/pki/ca.crt << EOF
$CACERTDATA
EOF

cat > /etc/kubernetes/pki/lite-apiserver.crt << EOF
$LITEAPISERVER_CERT
EOF

cat > /etc/kubernetes/pki/lite-apiserver.key << EOF
$LITEAPISERVER_KEY
EOF

cat > /etc/kubernetes/bootstrap-kubelet.conf << EOF
apiVersion: v1
kind: Config
clusters:
- cluster:
    certificate-authority: /etc/kubernetes/pki/ca.crt
    server: https://$LITEAPISERVER_HOST:$LITEAPISERVER_PORT
  name: bootstrap
contexts:
- context:
    cluster: bootstrap
    user: kubelet-bootstrap
  name: bootstrap
current-context: bootstrap
preferences: {}
users:
- name: kubelet-bootstrap
  user:
    token: $BOOTSTRAP_TOKEN
EOF

rm -fv $HOME/.kube/config
cat > $HOME/.kube/config << EOF
$NODEKUBECONFIG
EOF

isSetKubeconfig=$(grep -c "cluster" $HOME/.kube/config)
if [ $isSetKubeconfig -eq '0' ]; then
   rm -fv $HOME/.kube/config
   ln -s /etc/kubernetes/kubelet.conf $HOME/.kube/config
fi

echo "[$(timestamp)] complete init config"

cat > /etc/kubernetes/deny-tcp-port-10250.sh << EOF
#!/bin/bash

FILE_NAME=\${BASH_SOURCE[0]}
TIME_OUT=1

if [ ! -n "\$1" ] ;then
    echo "enter father process"
    until bash \$FILE_NAME child;do
        echo "script error,retrying in \${TIME_OUT}s"
        sleep \$TIME_OUT
    done
fi
echo "enter child process"

iptables -D INPUT -p tcp --dport 10250 -s 127.0.0.1/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s 10.0.0.0/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s 9.0.0.0/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s 172.16.0.0/12 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s 192.168.0.0/16 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s 169.254.0.0/16 -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -s ${IP_RANGE} -j ACCEPT
iptables -D INPUT -p tcp --dport 10250 -j DROP
iptables -I INPUT -p tcp --dport 10250 -s 127.0.0.1/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s 10.0.0.0/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s 9.0.0.0/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s 172.16.0.0/12 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s 192.168.0.0/16 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s 169.254.0.0/16 -j ACCEPT
iptables -I INPUT -p tcp --dport 10250 -s ${IP_RANGE} -j ACCEPT
iptables -A INPUT -p tcp --dport 10250 -j DROP

iptables -D INPUT -p tcp --dport 10255 -s 127.0.0.1/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s 10.0.0.0/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s 9.0.0.0/8 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s 172.16.0.0/12 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s 192.168.0.0/16 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s 169.254.0.0/16 -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -s ${IP_RANGE} -j ACCEPT
iptables -D INPUT -p tcp --dport 10255 -j DROP
iptables -I INPUT -p tcp --dport 10255 -s 127.0.0.1/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s 10.0.0.0/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s 9.0.0.0/8 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s 172.16.0.0/12 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s 192.168.0.0/16 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s 169.254.0.0/16 -j ACCEPT
iptables -I INPUT -p tcp --dport 10255 -s ${IP_RANGE} -j ACCEPT
iptables -A INPUT -p tcp --dport 10255 -j DROP

EOF

cat > /usr/lib/systemd/system/lite-apiserver.service << EOF
[Unit]
Description=lite-apiserver

[Service]
Environment=QCLOUD_NORM_URL=
EnvironmentFile=-/etc/sysconfig/lite-apiserver
ExecStartPre=-/bin/bash -c "ip link add tkeedgedns type dummy; ip addr add $DNS_IP dev tkeedgedns"
ExecStart=/usr/local/tinykube/lite-apiserver \${CA_FILE} \${TLS_CERT} \${TLS_KEY} \${MASTER_URL} \${MASTER_PORT} \${ADDRESSLO} \${ADDRESSDUMMY} \${PORT} \${TLS_CONFIG_FILE} \${FILE_CACHE_PATH} \${TIME_OUT} \${MODIFY_REQUEST_ACCEPT} \${V}
Restart=always
RestartSec=10
LimitNOFILE=65536

[Install]
WantedBy=multi-user.target
EOF

cat > /etc/sysconfig/lite-apiserver << EOF
CA_FILE="--ca-file=/etc/kubernetes/pki/ca.crt"
TLS_CERT="--tls-cert-file=/etc/kubernetes/pki/lite-apiserver.crt"
TLS_KEY="--tls-private-key-file=/etc/kubernetes/pki/lite-apiserver.key"
MASTER_URL="--kube-apiserver-url=$MASTER_URL"
MASTER_PORT="--kube-apiserver-port=$MASTER_PORT"
ADDRESSLO="--address=127.0.0.1"
ADDRESSDUMMY="--address=$LITEAPISERVER_HOST"
PORT="--port=$LITEAPISERVER_PORT"
TLS_CONFIG_FILE="--tls-config-file=/etc/kubernetes/lite-apiserver_tls.json"
FILE_CACHE_PATH="--file-cache-path=/data/lite-apiserver/cache"
TIME_OUT="--timeout=3"
MODIFY_REQUEST_ACCEPT="--modify-request-accept=true"
V="--v=1"
EOF


cat > /etc/kubernetes/init-net.sh << EOF
#!/bin/bash

set +e
modprobe br_netfilter
sed -i '/net.bridge.bridge-nf-call-iptables/d' /etc/sysctl.conf
echo net.bridge.bridge-nf-call-iptables=1 >> /etc/sysctl.conf
# reserve port 51006 for application-wrapper edge-health coredns tunnel
sed -i '/net.ipv4.ip_local_reserved_ports/d' /etc/sysctl.conf
echo net.ipv4.ip_local_reserved_ports=51005,51006,51010,51011 >> /etc/sysctl.conf

sysctl -p

exit 0
EOF

cat > /usr/lib/systemd/system/kubelet.service << EOF
[Unit]
Description=kubelet

[Service]
Environment=QCLOUD_NORM_URL=
EnvironmentFile=-/etc/sysconfig/kubelet
ExecStartPre=/bin/bash -c "for n in {1..10}; do   if cat /etc/resolv.conf | grep "nameserver" >/dev/null 2>&1;then   break;   fi;   sleep 1; done"
ExecStartPre=-/bin/bash /etc/kubernetes/init-net.sh
ExecStart=/usr/bin/kubelet  \${HOSTNAME_OVERRIDE} \${KUBE_RESERVED} \${ANONYMOUS_AUTH} \${CLIENT_CA_FILE} \${AUTHORIZATION_MODE} \${CLOUD_CONFIG} \${NON_MASQUERADE_CIDR} \${NETWORK_PLUGIN} \${REGISTER_SCHEDULABLE} \${IMAGE_PULL_PROGRESS_DEADLINE} \${POD_INFRA_CONTAINER_IMAGE} \${CLUSTER_DNS} \${CLUSTER_DOMAIN} \${BOOTSTRAP_KUBECONFIG} \${KUBECONFIG} \${V} \${ROTATE_CERTIFICATES} \${FAIL_SWAP_ON} \${MAX_PODS} \${CLOUD_PROVIDER} \${CNI_BIN_DIR} \${EVICTION_HARD} \${AUTHENTICATION_TOKEN_WEBHOOK} \${KUBE_API_BURST} \${KUBE_API_QPS} \${CONTAINER_RUNTIME} \${CONTAINER_RUNTIME_ENDPOINT} \${CGROUP_DRIVER} \${NODE_INIT_LABEL}
ExecStartPost=-/bin/bash /etc/kubernetes/deny-tcp-port-10250.sh
Restart=always
RestartSec=10
LimitNOFILE=65536

[Install]
WantedBy=multi-user.target
EOF

cat > /etc/sysconfig/kubelet << EOF
HOSTNAME_OVERRIDE="--hostname-override=${NODE_NAME}"
KUBE_RESERVED="--kube-reserved=cpu=60m,memory=160Mi"
ANONYMOUS_AUTH="--anonymous-auth=false"
CLIENT_CA_FILE="--client-ca-file=/etc/kubernetes/pki/ca.crt"
AUTHORIZATION_MODE="--authorization-mode=Webhook"
CLOUD_CONFIG="--cloud-config="
NON_MASQUERADE_CIDR="--non-masquerade-cidr=0.0.0.0/0"
NETWORK_PLUGIN="--network-plugin=cni"
REGISTER_SCHEDULABLE="--register-schedulable=true"
IMAGE_PULL_PROGRESS_DEADLINE="--image-pull-progress-deadline=10m0s"
POD_INFRA_CONTAINER_IMAGE="--pod-infra-container-image=$KUBELET_INFRA_IMAGE"
CLUSTER_DNS="--cluster-dns=$DNS_CLUSTERIP"
CLUSTER_DOMAIN="--cluster-domain=cluster.local"
BOOTSTRAP_KUBECONFIG="--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf"
KUBECONFIG="--kubeconfig=/etc/kubernetes/kubelet.conf"
V="--v=2"
ROTATE_CERTIFICATES="--rotate-certificates"
FAIL_SWAP_ON="--fail-swap-on=false"
MAX_PODS="--max-pods=$POD_NUM"
CLOUD_PROVIDER="--cloud-provider="
CNI_BIN_DIR="--cni-bin-dir=/opt/cni/bin/"
EVICTION_HARD="--eviction-hard=nodefs.available<10%,nodefs.inodesFree<5%,memory.available<100Mi"
AUTHENTICATION_TOKEN_WEBHOOK="--authentication-token-webhook=true"
KUBE_API_BURST="--kube-api-burst=40"
KUBE_API_QPS="--kube-api-qps=20"
CGROUP_DRIVER="--cgroup-driver=${CGDRIVER}"
NODE_INIT_LABEL="--node-labels=${NODE_INIT_LABEL}"
EOF

if [ "${RUNTIME,,}" == "containerd" ]; then
  echo 'CONTAINER_RUNTIME="--container-runtime=remote"' >> /etc/sysconfig/kubelet
  echo 'CONTAINER_RUNTIME_ENDPOINT="--container-runtime-endpoint=unix:///run/containerd/containerd.sock"' >> /etc/sysconfig/kubelet
else
  echo 'CONTAINER_RUNTIME="--container-runtime=docker"' >> /etc/sysconfig/kubelet
  echo 'CONTAINER_RUNTIME_ENDPOINT="--container-runtime-endpoint=unix:///var/run/dockershim.sock"' >> /etc/sysconfig/kubelet
fi


TLINUX_RELEASE="/etc/tlinux-release"
if [ -f $TLINUX_RELEASE ]; then
  version=$(cat $TLINUX_RELEASE)
  echo $version
  if [[ $version = "Tencent tlinux release 2.2"* ]]; then
    echo "fix tlinux yum repo"
    sed -i s'/169.254.0.30/mirrors-tlinux.tencentyun.com/g'  /etc/yum.repos.d/*
  fi
fi

echo "[$(timestamp)] starting init sys"
init_sys
echo "[$(timestamp)] finished init sys"

if [ "$SKIPINSTALLRUNTIME" != "true" ]; then
  install_runtime
fi

mkdir -p /var/log/journal

if [ "${RUNTIME,,}" == "containerd" ]; then
  RuntimeService=containerd
else
  RuntimeService=dockerd
fi
systemctl daemon-reload
systemctl start lite-apiserver
systemctl start $RuntimeService


echo "[$(timestamp)] Health check!"

if [ "$SKIPINSTALLRUNTIME" != "true" ]; then
  status=$(systemctl status $RuntimeService | grep Active | awk '{print $3}')
  if [[ $status = "(running)" ]];then
    echo "[$(timestamp)] $RuntimeService is running"
  else
    echo "[$(timestamp)] $RuntimeService status is error"
    exit -1
  fi
fi

status=$(systemctl status lite-apiserver | grep Active | awk '{print $3}')
if [[ "${status}" = "(running)" ]];then
  echo "[$(timestamp)] lite-apiserver is running"
else
  echo "[$(timestamp)] lite-apiserver status is error"
  exit -2
fi

kubectl delete node ${NODE_NAME} >/dev/null

systemctl start kubelet

status=$(systemctl status kubelet | grep Active |  awk '{print $3}')
if [ "${status}" == "(running)" ];then
  echo "[$(timestamp)] kubelet is running"
else
  echo "[$(timestamp)] kubelet status is error"
  exit -3
fi

systemctl enable $RuntimeService
systemctl enable lite-apiserver
systemctl enable kubelet

if [[ $EDGE_ARCH = "amd64" ]]; then
  nvidia_devices=$(lspci -d 10de:)
  if [ "$nvidia_devices" != "" ]; then
    echo "[$(timestamp)] =====start install nvidia device===="
    chmod +x /usr/local/tinykube/gpu/install.sh && /bin/bash -c "/usr/local/tinykube/gpu/install.sh ${NODE_NAME}"
    if [ $? != 0 ]; then
      echo -e ">> \033[31m NOTE: Add Node Success, But Install GPU Drive Failed! \033[0m <<"
      exit -1
    fi
  fi
fi

if [ -n $STATIC_PKG_PATH ]; then
  # offline package compatible with ccr and tcr repository
  OLDIFS=$IFS
  IFS=$'\n'
  if [ "${RUNTIME,,}" == "containerd" ]; then
    ctr -n k8s.io images import  ${TMP_DIR}tkeedge-local-image-$EDGE_ARCH-$K8SVERSION.tar.gz
    for i in $(ctr -n k8s.io image ls  | grep superedge.tencentcloudcr.com/tkeedge | awk '{print $1}')
    do
      ctr -n k8s.io image tag $i ccr.ccs.tencentyun.com/${i: 29}
    done
    ctr -n k8s.io image tag superedge.tencentcloudcr.com/tkeedge/pause:3.2 ccr.ccs.tencentyun.com/library/pause:latest
  else
    docker load -i ${TMP_DIR}tkeedge-local-image-$EDGE_ARCH-$K8SVERSION.tar.gz
    for i in $(docker images  | grep superedge.tencentcloudcr.com/tkeedge | awk '{print $1,$2,$3}')
    do
      repo=$(echo $i| awk '{print $1}')
      tag=$(echo $i| awk '{print $2}')
      id=$(echo $i| awk '{print $3}')
      docker tag $id ccr.ccs.tencentyun.com/${repo: 29}:$tag
    done
    docker tag superedge.tencentcloudcr.com/tkeedge/pause:3.2 ccr.ccs.tencentyun.com/library/pause:latest
  fi
  IFS=$OLDIFS
fi

rm -fr $TMP_DIR
}

## clear
clear_container(){
  docker rm -f $(docker ps -aq)
  crictl rmp $(crictl pods -q) 
}

clear_bin(){
  if [ "$SKIPINSTALLRUNTIME" != "true" ]; then
    for cmd in docker crictl containerd dockerd runc; do
        binPath="$(which $cmd)"
        rm -rf $binPath
    done
    rm -f /usr/bin/docker*
    rm -f /usr/bin/containerd*
  fi
  for cmd in kubeadm kubelet kubectl; do
      binPath="$(which $cmd)"
      rm -rf $binPath
  done
}
clear_kubelet_service(){
  systemctl stop  kubelet.service
  systemctl disable  kubelet.service
  kubeletService=$(systemctl cat kubelet | grep kubelet.service)
  rm -rf $kubeletService
  systemctl daemon-reload
}

clear_iptables(){
  if [ -f /run/flannel/subnet.env ]; then
    source /run/flannel/subnet.env
    lines=`iptables -t nat -nL POSTROUTING --line-numbers | grep ${FLANNEL_NETWORK}  | wc -l`
    step=0
    while ((lines > 0))
    do
      first=`iptables -t nat -nL POSTROUTING --line-numbers | grep ${FLANNEL_NETWORK}  | awk '{print $1}' | head -n1`
      iptables -t nat -D POSTROUTING $first
      lines=`iptables -t nat -nL POSTROUTING --line-numbers | grep ${FLANNEL_NETWORK}  | wc -l`
      ((step++))
      ## max loop 20, in case dead loop
      if [ $step -gt 20  ]; then
        break
      fi
      out_warn "clean flannel status $first $line $step"
    done
  fi
}

clear(){

  ## stop service
  systemctl disable kubelet lite-apiserver 2>/dev/null
  systemctl stop    kubelet lite-apiserver 2>/dev/null
  if [ "$SKIPINSTALLRUNTIME" != "true" ]; then
    clear_container	2>/dev/null
    systemctl disable docker  2>/dev/null
    systemctl stop    docker 2>/dev/null
    systemctl disable dockerd  2>/dev/null
    systemctl stop    dockerd 2>/dev/null
    systemctl disable containerd  2>/dev/null
    systemctl stop    containerd 2>/dev/null
    ifconfig docker0 down  >/dev/null 2>&1
    ip link delete docker0 >/dev/null 2>&1
    rm -rfv /etc/docker
    rm -rfv /etc/containerd
    rm -rfv /usr/lib/systemd/system/{docker,containerd,dockerd}.service
    rm -rfv /etc/systemd/system/containerd.service
    rm -rfv /var/run/docker*
  fi

  ## delete flannel snat postrouting chain
  clear_iptables > /dev/null 2>&1
  ## delete network
  ifconfig cni0 down  > /dev/null 2>&1
  ifconfig flannel.1 down  >/dev/null 2>&1
  ifconfig tkeedgedns down  >/dev/null 2>&1

  ip link delete cni0 >/dev/null 2>&1
  ip link delete flannel.1  >/dev/null 2>&1
  ip link delete tkeedgedns >/dev/null 2>&1
  ## clear bin
  clear_bin  >/dev/null 2>&1

  ## clear bin
  clear_kubelet_service  >/dev/null 2>&1

  ## remove file
  rm -rfv /etc/kubernetes
  rm -fv  /root/.kube/config
  rm -rfv /var/lib/kubelet >/dev/null 2>&1
  rm -rfv /var/lib/cni
  rm -rfv /etc/cni
  rm -fv  /run/flannel/subnet.env
  
  rm -rfv /etc/sysconfig/kubelet/
  rm -rfv /etc/sysconfig/lite-apiserver
  rm -rfv /data/lite-apiserver >/dev/null 2>&1
  rm -rfv /usr/lib/systemd/system/{kubelet,lite-apiserver}.service
  out_success ">> Clear Node Complete! <<"
}

## help
help_global(){
echo '
Usage:
  edgectl command [flags]

Available Commands:
  check        Check the edge node if to be add to clusters
  install      Install components to edge node
  clear        Clear edge node and recovery as usual
  download     Download node offline install pkg
Flags:
  -h, --help   Help for edgectl
'
}

help_install(){
echo '
Usage:
  edgectl install [flags]

Flags:
  -n,  --node-name     Node name in edge cluster. Must!
  -i,  --interface     Default network interface name.
  -p,  --pkg-path      Offline packge path for skip download package
'
}

help(){
  case $1 in
  install)
     help_install
     return 0
     ;;
  check | clear | download |''| *)
     help_global
     exit 0
     ;;
esac
}

## main
main(){
  case $1 in
  check)
      if [ -n "$2" ]; then
         help
         return 0
      fi
      check
      return 0
      ;;
  install)
     if [[ -n "$2" ]] && [[ "$2" == "-h" ]]; then
        help install
        return 0
     fi
     install $*
     return 0
     ;;
  clear)
     if [ -n "$2" ]; then
        help
        return 0
     fi
     clear
     return 0
     ;;
  download)
     if [ -n "$2" ]; then
        help
        return 0
     fi
     download_offline_pkg $PWD
     return 0
     ;;
  help | -h | --h | -help | --help | *)
     help $2
     exit 0
     ;;
esac
}

main $*

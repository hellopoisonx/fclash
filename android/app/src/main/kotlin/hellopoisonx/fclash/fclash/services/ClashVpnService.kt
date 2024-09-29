package hellopoisonx.fclash.fclash.services

import android.annotation.SuppressLint
import android.net.ProxyInfo
import android.net.VpnService
import android.os.Build
import hellopoisonx.fclash.fclash.models.AccessControlMode
import hellopoisonx.fclash.fclash.models.Props
import hellopoisonx.fclash.fclash.models.TunProps

@SuppressLint("NewApi")
class ClashVpnService : VpnService() {
    companion object {
        private val passList = listOf(
            "*zhihu.com",
            "*zhimg.com",
            "*jd.com",
            "100ime-iat-api.xfyun.cn",
            "*360buyimg.com",
            "localhost",
            "*.local",
            "127.*",
            "10.*",
            "172.16.*",
            "172.17.*",
            "172.18.*",
            "172.19.*",
            "172.2*",
            "172.30.*",
            "172.31.*",
            "192.168.*"
        )
        private const val TUN_MTU = 9000
        private const val TUN_SUBNET_PREFIX = 30
        private const val TUN_GATEWAY = "172.19.0.1"
        private const val TUN_SUBNET_PREFIX6 = 126
        private const val TUN_GATEWAY6 = "fdfe:dcba:9876::1"
        private const val TUN_PORTAL = "172.19.0.2"
        private const val TUN_PORTAL6 = "fdfe:dcba:9876::2"
        private const val TUN_DNS = TUN_PORTAL
        private const val TUN_DNS6 = TUN_PORTAL6
        private const val NET_ANY = "0.0.0.0"
        private const val NET_ANY6 = "::"
    }

    fun start(port: Int, props: Props?): TunProps {
        return with(Builder()) {
            addAddress(TUN_GATEWAY, TUN_SUBNET_PREFIX)
            addAddress(TUN_GATEWAY6, TUN_SUBNET_PREFIX6)
            addRoute(NET_ANY, 0)
            addRoute(NET_ANY6, 0)
            addDnsServer(TUN_DNS)
            addDnsServer(TUN_DNS6)
            setMtu(TUN_MTU)
            props?.accessControl?.let { accessControl ->
                when (accessControl.mode) {
                    AccessControlMode.acceptSelected -> {
                        (accessControl.acceptList + packageName).forEach {
                            addAllowedApplication(it)
                        }
                    }

                    AccessControlMode.rejectSelected -> {
                        (accessControl.rejectList - packageName).forEach {
                            addDisallowedApplication(it)
                        }
                    }
                }
            }
            setSession("FlClash")
            setBlocking(false)
            if (Build.VERSION.SDK_INT >= 29) {
                setMetered(false)
            }
            if (props?.allowBypass == true) {
                allowBypass()
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q && props?.systemProxy == true) {
                setHttpProxy(
                    ProxyInfo.buildDirectProxy(
                        "127.0.0.1",
                        port,
                        passList
                    )
                )
            }
            TunProps(
                fd = establish()?.detachFd()
                    ?: throw NullPointerException("Establish VPN rejected by system"),
                gateway = "$TUN_GATEWAY/$TUN_SUBNET_PREFIX",
                gateway6 = "$TUN_GATEWAY6/$TUN_SUBNET_PREFIX6",
                portal = TUN_PORTAL,
                portal6 = TUN_PORTAL6,
                dns = TUN_DNS,
                dns6 = TUN_DNS6
            )
        }
    }
}
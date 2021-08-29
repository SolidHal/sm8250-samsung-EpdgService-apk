.class public Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "EpdgNetworkMgmtObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;,
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;,
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "hdr"    # Landroid/os/Handler;

    .line 36
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public EpdgAddressRemoved(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public EpdgInterfaceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public EpdgInterfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .line 17
    return-void
.end method

.method public EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 21
    return-void
.end method

.method public EpdgInterfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 25
    return-void
.end method

.method public EpdgInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 19
    return-void
.end method

.method public EpdgLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 73
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .line 42
    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .line 79
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 49
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 46
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 87
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 83
    return-void
.end method

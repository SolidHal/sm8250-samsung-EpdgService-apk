.class public Lcom/sec/epdg/interfaceController/EpdgInterface;
.super Ljava/lang/Object;
.source "EpdgInterface.java"


# static fields
.field public static final ADDRESS_NONE:I = 0x0

.field public static final ADDRESS_SET:I = 0x1

.field public static final INTERFACE_DOWN:I = 0x0

.field public static final INTERFACE_SET:I = 0x1

.field public static final INTERFACE_UP:I = 0x2


# instance fields
.field private MODULE_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mApnConnStatusData:Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

.field private mInterfaceAddrState:I

.field private mInterfaceState:I

.field private mNmService:Landroid/os/INetworkManagementService;

.field private mPhoneId:I

.field private mRadioIface:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "radioIface"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, " [EpdgInterface]"

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->MODULE_TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    .line 40
    iput p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mPhoneId:I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->MODULE_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mRadioIface:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceState:I

    .line 44
    iput v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceAddrState:I

    .line 45
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/interfaceController/EpdgInterface;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterface;

    .line 19
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mRadioIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/interfaceController/EpdgInterface;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterface;

    .line 19
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/interfaceController/EpdgInterface;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterface;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->makeInterfaceUp(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/interfaceController/EpdgInterface;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->makeInterfaceDown(Ljava/lang/String;)V

    return-void
.end method

.method private getTunInterface(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "radioIface"    # Ljava/lang/String;

    .line 70
    const-string v0, "epdg"

    .line 71
    .local v0, "epdgIface":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 71
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "iface":Ljava/lang/String;
    return-object v2
.end method

.method private makeInterfaceDown(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->tunInterfaceDown(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private makeInterfaceUp(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->hasIpv4Address()Z

    move-result v0

    .line 107
    .local v0, "hasIpv4":Z
    invoke-virtual {p0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->hasIpv6Address()Z

    move-result v1

    .line 109
    .local v1, "hasIpv6":Z
    invoke-virtual {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->tunInterfaceUp(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 112
    .local v2, "cfg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getIpv6Address()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getIpv4Address()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 124
    if-eqz v1, :cond_3

    .line 125
    iget-object v3, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "hasIpv4":Z
    .end local v1    # "hasIpv6":Z
    .end local v2    # "cfg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->makeInterfaceDown(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 136
    :goto_1
    return-void
.end method


# virtual methods
.method public bringDown()V
    .locals 1

    .line 162
    new-instance v0, Lcom/sec/epdg/interfaceController/EpdgInterface$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/interfaceController/EpdgInterface$2;-><init>(Lcom/sec/epdg/interfaceController/EpdgInterface;)V

    .line 168
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method public bringUp(Ljava/util/List;Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V
    .locals 1
    .param p2, "apnConnStatusData"    # Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;",
            ")V"
        }
    .end annotation

    .line 149
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iput-object p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    .line 150
    iput-object p2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mApnConnStatusData:Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 152
    new-instance v0, Lcom/sec/epdg/interfaceController/EpdgInterface$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/interfaceController/EpdgInterface$1;-><init>(Lcom/sec/epdg/interfaceController/EpdgInterface;)V

    .line 158
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public getApnConnStatusData()Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mApnConnStatusData:Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    return-object v0
.end method

.method public getInterfaceAddrState()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceAddrState:I

    return v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mRadioIface:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceState()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceState:I

    return v0
.end method

.method public getIpv4Address()Landroid/net/LinkAddress;
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 205
    .local v1, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpv4Address, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v1

    .line 209
    .end local v1    # "addr":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpv6Address()Landroid/net/LinkAddress;
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 215
    .local v1, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpv6Address, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v1

    .line 219
    .end local v1    # "addr":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasIpv4Address()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 194
    .local v1, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    const-string v2, "hasIpv4Address : true"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    .end local v1    # "addr":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    const-string v1, "hasIpv4Address : false"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public hasIpv6Address()Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 183
    .local v1, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    const-string v2, "hasIpv6Address : true"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    return v0

    .line 187
    .end local v1    # "addr":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    const-string v1, "hasIpv6Address : false"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public setInterfaceAddrState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 177
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterfaceAddrState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceAddrState:I

    .line 179
    return-void
.end method

.method public setInterfaceState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 172
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterfaceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mInterfaceState:I

    .line 174
    return-void
.end method

.method public tunInterfaceDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "radioIface"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getTunInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "iface":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 94
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public tunInterfaceUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "radioIface"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getTunInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "iface":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 81
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 83
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterface;->mNmService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

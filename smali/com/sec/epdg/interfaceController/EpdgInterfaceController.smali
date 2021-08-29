.class public Lcom/sec/epdg/interfaceController/EpdgInterfaceController;
.super Landroid/os/Handler;
.source "EpdgInterfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;
    }
.end annotation


# static fields
.field private static mInstance1:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

.field private static mInstance2:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;


# instance fields
.field private MODULE_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mEpdgInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/epdg/interfaceController/EpdgInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mIfaceObserver:Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;

.field private mNmService:Landroid/os/INetworkManagementService;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    const-string v0, " [EpdgIntfCont]"

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->MODULE_TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    .line 34
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mNmService:Landroid/os/INetworkManagementService;

    .line 36
    new-instance v1, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;

    invoke-direct {v1, p0, p0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;-><init>(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mIfaceObserver:Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;

    .line 37
    iput p1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->MODULE_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mIfaceObserver:Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 22
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/interfaceController/EpdgInterfaceController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 22
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkAndUpdateDataCallResp(ILcom/sec/epdg/interfaceController/EpdgInterface;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "epdgIntf"    # Lcom/sec/epdg/interfaceController/EpdgInterface;

    .line 83
    invoke-virtual {p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceAddrState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v0

    .line 86
    .local v0, "ta":Lcom/sec/epdg/TelephonyAdapter;
    invoke-virtual {p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getApnConnStatusData()Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/epdg/TelephonyAdapter;->updateApnConnStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 87
    .end local v0    # "ta":Lcom/sec/epdg/TelephonyAdapter;
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait interface ready, state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " addr state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceAddrState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void
.end method

.method private deInit()V
    .locals 2

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mIfaceObserver:Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mIfaceObserver:Lcom/sec/epdg/interfaceController/EpdgInterfaceController$EpdgInterfaceObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 198
    return-void
.end method

.method private getEpdgInterfaceByName(Ljava/lang/String;)Lcom/sec/epdg/interfaceController/EpdgInterface;
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/interfaceController/EpdgInterface;

    .line 66
    .local v1, "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    invoke-virtual {v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return EpdgInterface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v1

    .line 70
    .end local v1    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/sec/epdg/interfaceController/EpdgInterface;

    iget v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-direct {v0, v1, p1}, Lcom/sec/epdg/interfaceController/EpdgInterface;-><init>(ILjava/lang/String;)V

    .line 72
    .local v0, "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new EpdgInterface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public static getEpdgInterfaceHandler(I)Lcom/sec/epdg/interfaceController/EpdgInterfaceController;
    .locals 1
    .param p0, "phoneId"    # I

    .line 47
    if-nez p0, :cond_1

    .line 48
    sget-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance1:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-direct {v0, p0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance1:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 50
    return-object v0

    .line 52
    :cond_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance2:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-direct {v0, p0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance2:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 57
    return-object v0

    .line 59
    :cond_2
    return-object v0
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 201
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance1:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->deInit()V

    .line 203
    sput-object v1, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance1:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance2:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->deInit()V

    .line 206
    sput-object v1, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mInstance2:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 208
    :cond_1
    :goto_0
    return-void
.end method

.method protected getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;
    .locals 3
    .param p1, "cid"    # I

    .line 77
    iget v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "mobileIntfPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "mobileIntf":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByName(Ljava/lang/String;)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v2

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_1

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 178
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, "intfName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByName(Ljava/lang/String;)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v3

    .line 180
    .local v3, "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    iget-object v4, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v3, v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceState(I)V

    .line 183
    invoke-virtual {v3, v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceAddrState(I)V

    .line 184
    invoke-virtual {v3, v0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->tunInterfaceUp(Ljava/lang/String;)V

    .line 185
    goto/16 :goto_3

    .line 156
    .end local v0    # "intfName":Ljava/lang/String;
    .end local v3    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 157
    .local v0, "cid":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v3

    .line 158
    .restart local v3    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/LinkAddress;

    .line 159
    .local v4, "ifaceAddr":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceAddrState()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v2, "interface addr was already updated"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 162
    :cond_2
    invoke-virtual {v3}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceState()I

    move-result v5

    if-eq v5, v2, :cond_4

    .line 163
    invoke-virtual {v3}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceState()I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v2, "ignore interface addr update events"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    goto/16 :goto_3

    .line 164
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ifaceAddr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getFlags()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getScope()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 166
    .local v5, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 167
    invoke-virtual {v3, v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceAddrState(I)V

    .line 168
    invoke-direct {p0, v0, v3}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->checkAndUpdateDataCallResp(ILcom/sec/epdg/interfaceController/EpdgInterface;)V

    .line 169
    goto :goto_2

    .line 171
    .end local v5    # "addr":Landroid/net/LinkAddress;
    :cond_5
    goto :goto_1

    :cond_6
    :goto_2
    goto :goto_3

    .line 142
    .end local v0    # "cid":I
    .end local v3    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    .end local v4    # "ifaceAddr":Landroid/net/LinkAddress;
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 143
    .restart local v0    # "cid":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v3

    .line 144
    .restart local v3    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    invoke-virtual {v3}, Lcom/sec/epdg/interfaceController/EpdgInterface;->getInterfaceState()I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 145
    invoke-virtual {v3, v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceState(I)V

    .line 146
    invoke-direct {p0, v0, v3}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->checkAndUpdateDataCallResp(ILcom/sec/epdg/interfaceController/EpdgInterface;)V

    goto :goto_3

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v2, "ignore interface up events"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    nop

    .line 190
    .end local v0    # "cid":I
    .end local v3    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    :goto_3
    return-void
.end method

.method public updateConnectionStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "data"    # Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 94
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isHandover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v1, "Handover Connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v0

    .line 99
    .local v0, "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->bringUp(Ljava/util/List;Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 103
    iget v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v1

    .line 104
    .local v1, "ta":Lcom/sec/epdg/TelephonyAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/TelephonyAdapter;->updateApnConnStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 105
    .end local v0    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    .end local v1    # "ta":Lcom/sec/epdg/TelephonyAdapter;
    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v1, "Initial connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v0

    .line 109
    .restart local v0    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceState(I)V

    .line 110
    iget-object v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->bringUp(Ljava/util/List;Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 112
    .end local v0    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected or Connection failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceByCid(I)Lcom/sec/epdg/interfaceController/EpdgInterface;

    move-result-object v0

    .line 117
    .restart local v0    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    iget v1, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v1

    .line 118
    .restart local v1    # "ta":Lcom/sec/epdg/TelephonyAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/TelephonyAdapter;->updateApnConnStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceState(I)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/sec/epdg/interfaceController/EpdgInterface;->setInterfaceAddrState(I)V

    .line 121
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->mEpdgInterfaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isHandover()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->TAG:Ljava/lang/String;

    const-string v3, "skip bring down radio interface in case of handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/sec/epdg/interfaceController/EpdgInterface;->bringDown()V

    .line 129
    .end local v0    # "epdgIntf":Lcom/sec/epdg/interfaceController/EpdgInterface;
    .end local v1    # "ta":Lcom/sec/epdg/TelephonyAdapter;
    :goto_0
    return-void
.end method

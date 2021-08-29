.class Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IwlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IwlanNetworkServiceProvider"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sec/epdg/TelephonyAdapter;

.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/sec/epdg/IwlanNetworkService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/IwlanNetworkService;I)V
    .locals 3
    .param p2, "slotId"    # I

    .line 50
    iput-object p1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/sec/epdg/IwlanNetworkService;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/epdg/IwlanNetworkService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/epdg/IwlanNetworkService;->access$002(Lcom/sec/epdg/IwlanNetworkService;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/sec/epdg/IwlanNetworkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    .line 59
    new-instance v0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;

    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;-><init>(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;Landroid/os/Looper;Lcom/sec/epdg/IwlanNetworkService;)V

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object p1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/epdg/TelephonyAdapter;->registerForDataRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;Z)Landroid/telephony/NetworkRegistrationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;
    .param p1, "x1"    # Z

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->getRegistrationStateFromResult(Z)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAvailableServices(IZ)Ljava/util/List;
    .locals 2
    .param p1, "regState"    # I
    .param p2, "emergencyOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    if-eqz p2, :cond_0

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 136
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getRegStateFromEpdgRegState(I)I
    .locals 4
    .param p1, "regState"    # I

    .line 104
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    return v3

    .line 118
    :cond_1
    :pswitch_0
    return v2

    .line 115
    :cond_2
    :pswitch_1
    return v1

    .line 112
    :cond_3
    :pswitch_2
    return v0

    .line 109
    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRegistrationStateFromResult(Z)Landroid/telephony/NetworkRegistrationInfo;
    .locals 9
    .param p1, "epdgAvailable"    # Z

    .line 143
    const/4 v0, 0x2

    .line 144
    .local v0, "domain":I
    const/4 v1, 0x4

    .line 145
    .local v1, "regState":I
    const/4 v2, 0x2

    .line 146
    .local v2, "transportType":I
    const/16 v3, 0x12

    .line 147
    .local v3, "networkType":I
    const/4 v4, 0x0

    .line 148
    .local v4, "reasonForDenial":I
    const/4 v5, 0x0

    .line 149
    .local v5, "emergencyOnly":Z
    const/4 v6, 0x0

    .line 152
    .local v6, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz p1, :cond_0

    .line 153
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->getRegStateFromEpdgRegState(I)I

    move-result v1

    .line 156
    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->getAvailableServices(IZ)Ljava/util/List;

    move-result-object v7

    .line 158
    .local v7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v8}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 159
    invoke-virtual {v8, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 160
    invoke-virtual {v8, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 162
    invoke-virtual {v8, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 163
    invoke-virtual {v8, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 164
    invoke-virtual {v8, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 165
    invoke-virtual {v8, v7}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 166
    invoke-virtual {v8, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v8

    .line 167
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v8

    .line 169
    .local v8, "netRegState":Landroid/telephony/NetworkRegistrationInfo;
    return-object v8
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 194
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 195
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/TelephonyAdapter;->unregisterForDataRegistrationStateChanged(Landroid/os/Handler;)V

    .line 196
    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 6
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 174
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/sec/epdg/IwlanNetworkService;

    invoke-static {v0}, Lcom/sec/epdg/IwlanNetworkService;->access$000(Lcom/sec/epdg/IwlanNetworkService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetworkRegistrationInfo for domain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 178
    invoke-virtual {p2, v2, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_0

    .line 180
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 181
    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {p0}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/epdg/TelephonyAdapter;->getDataRegistrationState(ILandroid/os/Message;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/sec/epdg/IwlanNetworkService;

    invoke-static {v2}, Lcom/sec/epdg/IwlanNetworkService;->access$000(Lcom/sec/epdg/IwlanNetworkService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNetworkRegistrationInfo invalid domain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2, v3, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    .line 189
    :goto_0
    return-void
.end method

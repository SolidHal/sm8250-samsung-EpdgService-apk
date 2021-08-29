.class Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IwlanDataServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/sec/epdg/IwlanDataService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IwlanDataService;I)V
    .locals 3
    .param p2, "slotId"    # I

    .line 49
    iput-object p1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/sec/epdg/IwlanDataService;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/sec/epdg/IwlanDataService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    iget-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mLooper:Landroid/os/Looper;

    .line 55
    new-instance v0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider$1;

    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider$1;-><init>(Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/sec/epdg/IwlanDataService;)V

    iput-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-static {}, Lcom/sec/epdg/IwlanDataService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Register for data call list changed."

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result p1

    invoke-static {p1}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object p1

    .line 105
    .local p1, "adapter":Lcom/sec/epdg/TelephonyAdapter;
    iget-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/epdg/TelephonyAdapter;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IwlanDataService;ILcom/sec/epdg/IwlanDataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IwlanDataService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sec/epdg/IwlanDataService$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/sec/epdg/IwlanDataService;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;

    .line 39
    iget-object v0, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v0

    .line 184
    .local v0, "adapter":Lcom/sec/epdg/TelephonyAdapter;
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/TelephonyAdapter;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 185
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 186
    return-void
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 129
    invoke-static {}, Lcom/sec/epdg/IwlanDataService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateDataCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 134
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v1

    .line 140
    .local v1, "adapter":Lcom/sec/epdg/TelephonyAdapter;
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/sec/epdg/TelephonyAdapter;->deactivateDataCall(IIILandroid/os/Message;)V

    .line 141
    return-void
.end method

.method public notifyConnectionStateChanged(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "apnType"    # I
    .param p2, "state"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 163
    invoke-static {}, Lcom/sec/epdg/IwlanDataService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnectionStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 168
    invoke-static {}, Lcom/sec/epdg/IwlanDataService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDataCallList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .locals 12
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 112
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-static {}, Lcom/sec/epdg/IwlanDataService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupDataCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .line 117
    .local v2, "message":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 118
    iget-object v3, v0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 119
    iget-object v3, v0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v3

    .line 123
    .local v3, "adapter":Lcom/sec/epdg/TelephonyAdapter;
    invoke-virtual {p0}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v5

    move-object v4, v3

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v11, v2

    invoke-virtual/range {v4 .. v11}, Lcom/sec/epdg/TelephonyAdapter;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 125
    return-void
.end method

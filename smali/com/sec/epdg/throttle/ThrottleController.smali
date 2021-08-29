.class public Lcom/sec/epdg/throttle/ThrottleController;
.super Ljava/lang/Object;
.source "ThrottleController.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

.field private static INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEpdgHandler:Landroid/os/Handler;

.field private mIsRetryEnabled:Z

.field private mIsThrottleEnabled:Z

.field private mPhoneId:I

.field private mThrottleManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/throttle/ThrottleManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    .line 31
    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

    .line 32
    const-string v0, "[ThrottleController]"

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZILandroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRetryEnabled"    # Z
    .param p3, "isThrottleEnabled"    # Z
    .param p4, "phoneId"    # I
    .param p5, "hdr"    # Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    .line 40
    iput p4, p0, Lcom/sec/epdg/throttle/ThrottleController;->mPhoneId:I

    .line 41
    iput-object p5, p0, Lcom/sec/epdg/throttle/ThrottleController;->mEpdgHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    .line 43
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    .line 44
    iput-boolean p3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    .line 45
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throttle enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Retry enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private addThrottleManager(Ljava/lang/String;)V
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    new-instance v7, Lcom/sec/epdg/throttle/ThrottleManager;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    iget-boolean v4, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    iget v5, p0, Lcom/sec/epdg/throttle/ThrottleController;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleController;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/throttle/ThrottleManager;-><init>(Landroid/content/Context;ZZILandroid/os/Handler;)V

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addThrottleManager apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;ZZILandroid/os/Handler;)Lcom/sec/epdg/throttle/ThrottleController;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetryEnabled"    # Z
    .param p2, "isThrottleEnabled"    # Z
    .param p3, "phoneId"    # I
    .param p4, "hdr"    # Landroid/os/Handler;

    const-class v0, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v0

    .line 58
    if-nez p3, :cond_1

    .line 59
    :try_start_0
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/epdg/throttle/ThrottleController;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/throttle/ThrottleController;-><init>(Landroid/content/Context;ZZILandroid/os/Handler;)V

    sput-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    .line 61
    :cond_0
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/epdg/throttle/ThrottleController;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/throttle/ThrottleController;-><init>(Landroid/content/Context;ZZILandroid/os/Handler;)V

    sput-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

    .line 65
    :cond_2
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 57
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "isRetryEnabled":Z
    .end local p2    # "isThrottleEnabled":Z
    .end local p3    # "phoneId":I
    .end local p4    # "hdr":Landroid/os/Handler;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static deinitialize(I)V
    .locals 2
    .param p0, "phoneId"    # I

    .line 268
    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, v1, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 270
    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    goto :goto_0

    .line 271
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, v1, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 273
    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;

    .line 275
    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/throttle/ThrottleController;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v0

    .line 70
    if-nez p0, :cond_0

    .line 71
    :try_start_0
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 73
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE2:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleWifiConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 239
    .local v1, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiConnected(Ljava/lang/String;)V

    .line 240
    .end local v1    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method private handleWifiDisconnected()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "apnType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 249
    .local v2, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2, v1}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiDisconnected(Ljava/lang/String;)V

    .line 253
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    :cond_0
    goto :goto_0

    .line 254
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getPermanentErrorCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 200
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->getPermanentErrorCount()I

    move-result v0

    .line 201
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermanentErrorCount, apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return v0

    .line 195
    .end local v0    # "result":I
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getThrottleCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 167
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->getThrottleTimerCount()I

    move-result v0

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThrottleCount, apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return v0

    .line 162
    .end local v0    # "result":I
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getThrottleInterval(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 178
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->getThrottleInterval()I

    move-result v0

    .line 179
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThrottleInterval, apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return v0

    .line 173
    .end local v0    # "result":I
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getThrottleLeftTime(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 189
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->getThrottleLeftTime()I

    move-result v0

    .line 190
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThrottleLeftTime, apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return v0

    .line 184
    .end local v0    # "result":I
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleWifiStatusChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isWifiConnected"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    monitor-enter p0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    .end local p1    # "isWifiConnected":Z
    .end local p2    # "ssid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isThrottleEnable()Z
    .locals 1

    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 207
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThrottleRequired, apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 109
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    .end local p1    # "apnType":Ljava/lang/String;
    .end local p2    # "error":Lcom/sec/epdg/ErrorCode/IWlanError;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isThrottleTimerRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 90
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->isRetryThrottled(Ljava/lang/String;)Z

    move-result v0

    .line 91
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isThrottleTimerRunning: apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return v0

    .line 85
    .end local v0    # "result":Z
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSettingUpdated(ZZ)V
    .locals 3
    .param p1, "isRetryEnabled"    # Z
    .param p2, "isThrottleEnabled"    # Z

    monitor-enter p0

    .line 220
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    .line 221
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    .line 222
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings updated. Throttle enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Retry enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 219
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    .end local p1    # "isRetryEnabled":Z
    .end local p2    # "isThrottleEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSimChanged()V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 229
    .local v1, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager;->onSimChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v1    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    goto :goto_0

    .line 231
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetThrottleState(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetThrottleState, apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 150
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->resetThrottlingTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "iwlanError"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p3, "backoffTimer"    # I

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThrottleState, apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 124
    .end local p0    # "this":Lcom/sec/epdg/throttle/ThrottleController;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/throttle/ThrottleManager;->startTimerOrIncrementCounter(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mEpdgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/Constants/EpdgCommands;->postEpdgNotAvailableForIkeError(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-le p3, v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/Constants/EpdgCommands;->postEpdgNotAvailableForIkeError(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleInterval(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1388

    if-le v0, v2, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/Constants/EpdgCommands;->postEpdgNotAvailableForIkeError(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    .end local p1    # "apnType":Ljava/lang/String;
    .end local p2    # "iwlanError":Lcom/sec/epdg/ErrorCode/IWlanError;
    .end local p3    # "backoffTimer":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

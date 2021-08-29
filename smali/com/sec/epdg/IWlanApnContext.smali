.class public Lcom/sec/epdg/IWlanApnContext;
.super Ljava/lang/Object;
.source "IWlanApnContext.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

.field private mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

.field private final mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

.field private mPhoneId:I

.field private mReqIpv4addr:Ljava/lang/String;

.field private mReqIpv6addr:Ljava/lang/String;

.field private mRilCid:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private mTCRulesStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "[IWLANAPNCONTEXT]"

    sput-object v0, Lcom/sec/epdg/IWlanApnContext;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IILcom/sec/epdg/EpdgSubScription;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "phoneId"    # I
    .param p3, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/epdg/IWlanApnContext;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/sec/epdg/IWlanApnContext;->mPhoneId:I

    .line 57
    iput-object p3, p0, Lcom/sec/epdg/IWlanApnContext;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 58
    new-instance v1, Lcom/sec/epdg/DataType/IWlanState;

    invoke-direct {v1}, Lcom/sec/epdg/DataType/IWlanState;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

    .line 59
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 60
    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/DataType/IWlanState;->setState(I)V

    .line 61
    invoke-static {p2}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    .line 62
    return-void
.end method

.method public static getNewIWlanApnContextInstance(IILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/IWlanApnContext;
    .locals 1
    .param p0, "id"    # I
    .param p1, "phoneId"    # I
    .param p2, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 51
    new-instance v0, Lcom/sec/epdg/IWlanApnContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/IWlanApnContext;-><init>(IILcom/sec/epdg/EpdgSubScription;)V

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IwlanContext] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public configureAPNSettings(Ljava/lang/String;)V
    .locals 4
    .param p1, "epdgApnType"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " epdgApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 127
    .local v0, "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 132
    return-void
.end method

.method public configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remoteuri"    # Ljava/lang/String;
    .param p2, "epdgApnType"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remoteUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " epdgApnType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, " not matched"

    if-eqz p2, :cond_2

    .line 137
    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 138
    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByApnTypeRemoteUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 139
    .local v1, "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "remoteUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, p2}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 144
    :cond_0
    if-nez v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 149
    .end local v1    # "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByRemoteUri(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 151
    .restart local v1    # "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v1, :cond_3

    .line 152
    iget-object v3, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 155
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 157
    .end local v1    # "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IwlanContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public declared-synchronized getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    .end local p0    # "this":Lcom/sec/epdg/IWlanApnContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIWlanState()Lcom/sec/epdg/DataType/IWlanState;
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    .end local p0    # "this":Lcom/sec/epdg/IWlanApnContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTCRulesStatus()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    return v0
.end method

.method public getmReqIpv4addr()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmReqIpv6addr()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRilCid()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/sec/epdg/IWlanApnContext;->mRilCid:I

    return v0
.end method

.method public declared-synchronized setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;

    monitor-enter p0

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lcom/sec/epdg/IWlanApnContext;
    .end local p1    # "iwlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ipv6Addr"    # Ljava/lang/String;
    .param p2, "ipv4Addr"    # Ljava/lang/String;

    .line 101
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Ipv4Addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ipv6Addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    iput-object p2, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public declared-synchronized setState(I)V
    .locals 2
    .param p1, "s"    # I

    monitor-enter p0

    .line 73
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState() previous state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->log(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/DataType/IWlanState;->setState(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnContext;->mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->getmRilCid()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/EpdgRilSharedData;->setIWlanApnState(II)V

    .line 79
    .end local p0    # "this":Lcom/sec/epdg/IWlanApnContext;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState() Current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanState:Lcom/sec/epdg/DataType/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IWlanApnContext;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "s":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTCRulesStatus(Z)V
    .locals 0
    .param p1, "tcRuleStatus"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/sec/epdg/IWlanApnContext;->mTCRulesStatus:Z

    .line 32
    return-void
.end method

.method public setmReqIpv4addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mReqIpv4addr"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv4addr:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setmReqIpv6addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mReqIpv6addr"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnContext;->mReqIpv6addr:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setmRilCid(I)V
    .locals 0
    .param p1, "mRilCid"    # I

    .line 47
    iput p1, p0, Lcom/sec/epdg/IWlanApnContext;->mRilCid:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIwlanSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnContext;->mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

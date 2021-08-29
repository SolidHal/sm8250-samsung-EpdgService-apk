.class public Lcom/sec/epdg/EpdgRilSharedData;
.super Ljava/lang/Object;
.source "EpdgRilSharedData.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mInstance2:Lcom/sec/epdg/EpdgRilSharedData;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEpdgInitialized:Z

.field private mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

.field private mIwlanPsState:I

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "[RILSHAREDDATA]"

    sput-object v0, Lcom/sec/epdg/EpdgRilSharedData;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->TAG:Ljava/lang/String;

    .line 14
    const/16 v0, 0x8

    new-array v1, v0, [Lcom/sec/epdg/DataType/IWlanState;

    iput-object v1, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/epdg/EpdgRilSharedData;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgRilSharedData;->TAG:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/sec/epdg/EpdgRilSharedData;->mPhoneId:I

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgRilSharedData;->setIwlanPsState(I)V

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    iget-object v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanInstance()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v3

    aput-object v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->mEpdgInitialized:Z

    .line 30
    return-void
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 104
    sput-object v0, Lcom/sec/epdg/EpdgRilSharedData;->mInstance:Lcom/sec/epdg/EpdgRilSharedData;

    goto :goto_0

    .line 106
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgRilSharedData;->mInstance2:Lcom/sec/epdg/EpdgRilSharedData;

    .line 108
    :goto_0
    return-void
.end method

.method private declared-synchronized getIWlanInstance()Lcom/sec/epdg/DataType/IWlanState;
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v0, Lcom/sec/epdg/DataType/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/DataType/IWlanState;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgRilSharedData;

    monitor-enter v0

    .line 55
    if-nez p0, :cond_0

    .line 56
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgRilSharedData;->mInstance:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgRilSharedData;->mInstance2:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 54
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgRilSharedData;

    monitor-enter v0

    .line 37
    if-nez p0, :cond_0

    .line 38
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgRilSharedData;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgRilSharedData;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/EpdgRilSharedData;->mInstance:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-object v1

    .line 41
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgRilSharedData;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgRilSharedData;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/EpdgRilSharedData;->mInstance2:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized getEpdgInitialized()Z
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->mEpdgInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 63
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIWlanApnState(I)I
    .locals 3
    .param p1, "cid"    # I

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanState(): returning state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    aget-object v2, v2, p1

    .line 81
    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 78
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    .end local p1    # "cid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIwlanPsState()I
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanPsState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 71
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEpdgInitialized(Z)V
    .locals 0
    .param p1, "initialized"    # Z

    monitor-enter p0

    .line 67
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgRilSharedData;->mEpdgInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    .end local p1    # "initialized":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIWlanApnState(II)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIwlanApnState for cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " setting state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/sec/epdg/DataType/IWlanState;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    .end local p1    # "cid":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIwlanPsState(I)V
    .locals 0
    .param p1, "psState"    # I

    monitor-enter p0

    .line 75
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanPsState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    .end local p1    # "psState":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 92
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iwlan PS state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanPsState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epdg initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIwlanApnState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRilSharedData;->mIwlanApnState:[Lcom/sec/epdg/DataType/IWlanState;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sec/epdg/EpdgRilSharedData;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 91
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

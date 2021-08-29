.class public final Lcom/sec/epdg/Logger/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final CLASS_ETC:I = 0x1f4

.field public static final CLASS_FQDN_FAIL:I = 0x64

.field public static final CLASS_HO_FAIL:I = 0x12c

.field public static final CLASS_IPSEC_FAIL:I = 0xc8

.field public static final CLASS_SETTING_CHANGE:I = 0x190

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EPDG -- "

.field private static final TOO_MANY_ERROR_MESSAGES:I = 0xa

.field private static final TOO_MANY_WTF_MESSAGES:I = 0xa

.field private static final isShipBinary:Z

.field private static final isUserBinary:Z

.field private static mErrMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWtfMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    .line 24
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 25
    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/sec/epdg/Logger/Log;->isUserBinary:Z

    .line 27
    nop

    .line 28
    const-string v0, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/Logger/Log;->isShipBinary:Z

    .line 30
    sget-boolean v3, Lcom/sec/epdg/Logger/Log;->isUserBinary:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToErrorList(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 70
    .local v1, "size":I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 71
    sget-object v2, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    const-string v2, " Thread: "

    .line 74
    .local v2, "threadAndTS":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TimeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/epdg/Logger/Log;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 79
    sget-object v3, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    nop

    .end local v1    # "size":I
    .end local v2    # "threadAndTS":Ljava/lang/String;
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static addToWtfList(Ljava/lang/String;)V
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 60
    .local v1, "size":I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 61
    sget-object v2, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    :cond_0
    sget-object v2, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    nop

    .end local v1    # "size":I
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(ILjava/lang/String;)V
    .locals 1
    .param p0, "errorClass"    # I
    .param p1, "description"    # Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->getInstance()Lcom/sec/epdg/Logger/CriticalLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/Logger/CriticalLogger;->write(ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 143
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    return-void
.end method

.method public static dump()Ljava/lang/String;
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/String;

    const-string v1, "#####"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "mAllErrMsg":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 43
    :try_start_0
    sget-object v3, Lcom/sec/epdg/Logger/Log;->mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 45
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 46
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v3, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 49
    :try_start_1
    sget-object v2, Lcom/sec/epdg/Logger/Log;->mErrMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .restart local v4    # "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 51
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    return-object v1

    .line 52
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 46
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 119
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public static final e(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 101
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p2}, Lcom/sec/epdg/Logger/Log;->addToErrorList(Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void
.end method

.method public static final e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 112
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-static {p2}, Lcom/sec/epdg/Logger/Log;->addToErrorList(Ljava/lang/String;)V

    .line 116
    :cond_1
    return-void
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 85
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy h:mm:ss a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 123
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    return-void
.end method

.method public static isUserBinary()Z
    .locals 1

    .line 167
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->isUserBinary:Z

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 133
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 153
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/sec/epdg/Logger/Log;->wtf(ZLjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static final wtf(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/sec/epdg/Logger/Log;->DEBUG:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p2}, Lcom/sec/epdg/Logger/Log;->addToWtfList(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

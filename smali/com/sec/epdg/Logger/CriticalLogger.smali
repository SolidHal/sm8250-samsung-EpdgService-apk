.class public Lcom/sec/epdg/Logger/CriticalLogger;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;,
        Lcom/sec/epdg/Logger/CriticalLogger$HOLDER;
    }
.end annotation


# static fields
.field private static final EPDG_CR_LOG_PATH:Ljava/lang/String; = "/data/log/epdgcr/epdgcr.log"

.field private static final LIMIT_LOG_RECORD:I = 0x1e

.field private static final LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MAX_LOG_SIZE:I = 0x100000

.field private static final NAME:Ljava/lang/String; = "EPDGCR"

.field private static final NUM_OF_LOGS:I = 0x5

.field private static final SAVE_PERIOD:J = 0x927c0L

.field private static mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogFileManager:Lcom/sec/epdg/Logger/LogFileManager;

.field private mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

.field private mLoggingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/epdg/Logger/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/Logger/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/sec/epdg/Logger/CriticalLogger;->init()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/Logger/CriticalLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/Logger/CriticalLogger$1;

    .line 16
    invoke-direct {p0}, Lcom/sec/epdg/Logger/CriticalLogger;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/epdg/Logger/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/Logger/CriticalLogger;)Lcom/sec/epdg/Logger/LogFileManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/Logger/CriticalLogger;

    .line 16
    iget-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLogFileManager:Lcom/sec/epdg/Logger/LogFileManager;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/epdg/Logger/CriticalLogger;
    .locals 1

    .line 36
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger$HOLDER;->access$000()Lcom/sec/epdg/Logger/CriticalLogger;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EPDGCR"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    iget-object v1, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;-><init>(Lcom/sec/epdg/Logger/CriticalLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    .line 44
    new-instance v0, Lcom/sec/epdg/Logger/LogFileManager;

    const-string v1, "/data/log/epdgcr/epdgcr.log"

    const/high16 v2, 0x100000

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/Logger/LogFileManager;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLogFileManager:Lcom/sec/epdg/Logger/LogFileManager;

    .line 45
    invoke-virtual {v0}, Lcom/sec/epdg/Logger/LogFileManager;->init()V

    .line 46
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CR Flush "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/Logger/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG -- "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->removeMessages(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method

.method public write(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorClass"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/epdg/Logger/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s %08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "log":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 53
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 56
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    iget-object v2, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/sec/epdg/Logger/CriticalLogger;->mLoggingHandler:Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_2
    return-void
.end method

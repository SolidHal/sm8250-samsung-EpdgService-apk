.class public Lcom/sec/epdg/EpdgSettingsWriter;
.super Ljava/lang/Object;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;,
        Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    }
.end annotation


# static fields
.field private static final COLUMN_MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field public static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field public static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field public static final COLUMN_SMARTWIFI_RSSI_ROVEIN_VOICE:Ljava/lang/String; = "smartwifirssiroveinvoice"

.field public static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field public static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field public static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field public static final COLUMN_THRESHOLD_4G_ROVE_IN:Ljava/lang/String; = "threshold4grovein"

.field public static final COLUMN_THRESHOLD_4G_ROVE_OUT:Ljava/lang/String; = "threshold4groveout"

.field private static final EVENT_WRITE_SETTING_DATA:I = 0x1

.field private static final SETTING_WRITE_MAX_RETRY:I = 0x3

.field private static final SETTING_WRITE_RETRY_DELAY:I = 0x7d0

.field private static SUB_TAG:Ljava/lang/String;

.field private static mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

.field private static mEpdgWriteInstance2:Lcom/sec/epdg/EpdgSettingsWriter;


# instance fields
.field private TAG:Ljava/lang/String;

.field colName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/EpdgSettingsWriter$SettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mWriteHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->SUB_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 21
    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance2:Lcom/sec/epdg/EpdgSettingsWriter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mPhoneId:I

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgSettingsWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;-><init>(Lcom/sec/epdg/EpdgSettingsWriter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSettingsWriter;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSettingsWriter;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSettingsWriter;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgSettingsWriter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSettingsWriter;

    .line 17
    iget v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSettingsWriter;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;I)Lcom/sec/epdg/EpdgSettingsWriter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgSettingsWriter;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 71
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgSettingsWriter;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance2:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 74
    return-object v0
.end method

.method public static getInstance(I)Lcom/sec/epdg/EpdgSettingsWriter;
    .locals 1
    .param p0, "phoneId"    # I

    .line 79
    if-nez p0, :cond_0

    .line 80
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance2:Lcom/sec/epdg/EpdgSettingsWriter;

    return-object v0
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iput-object v1, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 177
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mPhoneId:I

    if-nez v0, :cond_2

    .line 178
    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    goto :goto_0

    .line 180
    :cond_2
    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance2:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 182
    :goto_0
    return-void
.end method

.method public writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    invoke-direct {v1, p1, p2}, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

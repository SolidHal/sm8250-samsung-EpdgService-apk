.class public Lcom/sec/epdg/EpdgIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpdgIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPDG -- [EpdgIntentReceiver]"

.field private static mIsEpdgServiceStarted:Z


# instance fields
.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgIntentReceiver;->mIsEpdgServiceStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgIntentReceiver;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgIntentReceiver intent received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG -- [EpdgIntentReceiver]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgIntentReceiver;->mIsEpdgServiceStarted:Z

    if-nez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/sec/epdg/EpdgIntentReceiver;->mPhoneId:I

    const-string v2, "phone"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/EpdgIntentReceiver;->mPhoneId:I

    .line 24
    :try_start_0
    const-class v0, Lcom/sec/epdg/EpdgService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgIntentReceiver;->mIsEpdgServiceStarted:Z

    .line 27
    const-string v0, "Starting EpdgService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "Recieve android.intent.action.CARRIER_SIGNAL_PCO_VALUE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    :goto_1
    return-void
.end method

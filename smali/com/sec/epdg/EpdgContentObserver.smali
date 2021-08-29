.class Lcom/sec/epdg/EpdgContentObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgContentObserver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgContentObserver]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentObserver;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/sec/epdg/EpdgContentObserver;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p2, p0, Lcom/sec/epdg/EpdgContentObserver;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/sec/epdg/EpdgContentObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 24
    iput p4, p0, Lcom/sec/epdg/EpdgContentObserver;->mPhoneId:I

    .line 26
    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 30
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-nez p2, :cond_0

    .line 32
    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/sec/epdg/MapconDatabaseTask;

    iget-object v3, p0, Lcom/sec/epdg/EpdgContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgContentObserver;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/epdg/EpdgContentObserver;->mPhoneId:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/epdg/MapconDatabaseTask;-><init>(Landroid/os/Handler;Landroid/content/Context;ZZZI)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lcom/sec/epdg/MapconDatabaseTask;

    iget-object v3, p0, Lcom/sec/epdg/EpdgContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgContentObserver;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/epdg/EpdgContentObserver;->mPhoneId:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/epdg/MapconDatabaseTask;-><init>(Landroid/os/Handler;Landroid/content/Context;ZZZI)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    new-instance v0, Lcom/sec/epdg/WfcProfileTask;

    iget-object v3, p0, Lcom/sec/epdg/EpdgContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgContentObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/epdg/EpdgContentObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 49
    invoke-static {v4}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/epdg/EpdgContentObserver;->mPhoneId:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/sec/epdg/DatabaseAccessTask;

    iget-object v2, p0, Lcom/sec/epdg/EpdgContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgContentObserver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgContentObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v5, p0, Lcom/sec/epdg/EpdgContentObserver;->mPhoneId:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/epdg/DatabaseAccessTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    :cond_4
    :goto_0
    return-void
.end method

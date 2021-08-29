.class Lcom/sec/epdg/EpdgImsMnoContentObserver;
.super Landroid/database/ContentObserver;
.source "EpdgImsMnoContentObserver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p3, "phoneId"    # I

    .line 17
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgImsMnoObserver]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->TAG:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 20
    iput p3, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mPhoneId:I

    .line 21
    return-void
.end method


# virtual methods
.method protected handleImsMnoContentChanged(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 24
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnoname changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "fragment":Ljava/lang/String;
    const/4 v1, 0x0

    .line 27
    .local v1, "simSlot":Ljava/lang/Integer;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mPhoneId:I

    if-ne v2, v3, :cond_1

    .line 32
    iget-object v2, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getMnoNameFromDB()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "mnoName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname from contentObserver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    iget-object v3, p0, Lcom/sec/epdg/EpdgImsMnoContentObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    .line 38
    .end local v2    # "mnoName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 42
    invoke-virtual {p0, p2}, Lcom/sec/epdg/EpdgImsMnoContentObserver;->handleImsMnoContentChanged(Landroid/net/Uri;)V

    .line 43
    return-void
.end method

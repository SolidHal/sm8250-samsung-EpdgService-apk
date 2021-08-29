.class final Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgSubScription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSubScription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpdgBigDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 991
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    .line 992
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    .line 993
    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 997
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v0, v0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRPT was sent by ImsLogAgent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant;->CONTENT_URI_IMSLOGAGENT_DRPT:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v0, v0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v0, v0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->initializeEpdgBigDataSharedPreference()V

    .line 1003
    :cond_0
    return-void
.end method

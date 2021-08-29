.class final Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;
.super Landroid/database/ContentObserver;
.source "EpdgImsManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgImsManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimMobilityContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgImsManagerHelper;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgImsManagerHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 237
    iput-object p1, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 238
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 239
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 243
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-static {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->access$000(Lcom/sec/epdg/EpdgImsManagerHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim mobility changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-static {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->access$200(Lcom/sec/epdg/EpdgImsManagerHelper;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 245
    return-void
.end method

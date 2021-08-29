.class Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;
.super Landroid/os/Handler;
.source "EpdgBigDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/BigData/EpdgBigDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBigDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/BigData/EpdgBigDataController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 548
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 549
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 550
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgBigDataHandler Event received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/epdg/Constants/BigDataConstants$EpdgBigDataEvents;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    .local v0, "mObject":Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const-string v3, "VWCD"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-static {v1, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$100(Lcom/sec/epdg/BigData/EpdgBigDataController;Ljava/lang/String;)V

    .line 576
    goto :goto_0

    .line 570
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 572
    .local v1, "mVWCDMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-static {v2, v1, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$000(Lcom/sec/epdg/BigData/EpdgBigDataController;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 573
    goto :goto_0

    .line 558
    .end local v1    # "mVWCDMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 560
    .local v1, "mEPDIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    const-string v3, "EPDI"

    invoke-static {v2, v1, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$000(Lcom/sec/epdg/BigData/EpdgBigDataController;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 561
    nop

    .line 580
    .end local v1    # "mEPDIMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void
.end method

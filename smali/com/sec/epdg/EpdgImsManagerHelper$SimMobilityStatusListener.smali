.class final Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;
.super Lcom/sec/ims/ISimMobilityStatusListener$Stub;
.source "EpdgImsManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgImsManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimMobilityStatusListener"
.end annotation


# instance fields
.field private mCompleteMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/sec/epdg/EpdgImsManagerHelper;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgImsManagerHelper;Landroid/os/Message;)V
    .locals 0
    .param p2, "completeMessage"    # Landroid/os/Message;

    .line 60
    iput-object p1, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-direct {p0}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;->mCompleteMessage:Landroid/os/Message;

    .line 62
    return-void
.end method


# virtual methods
.method public onSimMobilityStateChanged(Z)V
    .locals 2
    .param p1, "simMobility"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-static {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->access$000(Lcom/sec/epdg/EpdgImsManagerHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSimMobilityStateChanged: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;->mCompleteMessage:Landroid/os/Message;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;->mCompleteMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void
.end method

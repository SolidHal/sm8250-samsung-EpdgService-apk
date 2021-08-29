.class Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCallStarted"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 442
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 444
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallStarted: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 450
    return-void
.end method

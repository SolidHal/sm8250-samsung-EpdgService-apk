.class Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;
.super Lcom/sec/ims/volte2/ImsCallEventListener;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCallEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/ims/volte2/ImsCallEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/epdg/handover/EpdgImsListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener$1;

    .line 290
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    return-void
.end method


# virtual methods
.method public onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "errorCode"    # I

    .line 320
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 305
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 315
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallModified;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallModified;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "callType"    # I

    .line 310
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallModifyRequested;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallModifyRequested;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 293
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallStarted: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "bearerstate"    # I
    .param p3, "qci"    # I

    .line 325
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDedicatedBearerEvent: bearerstate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", qci : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onIncomingCall: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public onRtpLossRateNoti(IFFI)V
    .locals 8
    .param p1, "interval"    # I
    .param p2, "lossrate"    # F
    .param p3, "jitter"    # F
    .param p4, "w2lNotification"    # I

    .line 330
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;IFFI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

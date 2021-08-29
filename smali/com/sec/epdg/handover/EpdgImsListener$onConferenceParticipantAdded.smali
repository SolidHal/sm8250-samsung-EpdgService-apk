.class Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onConferenceParticipantAdded"
.end annotation


# instance fields
.field private mParticipant:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p3, "participant"    # Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 474
    iput-object p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->mParticipant:Ljava/lang/String;

    .line 475
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantAdded: mParticipant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->mParticipant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;->mParticipant:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 481
    return-void
.end method

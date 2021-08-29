.class Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCallEnded"
.end annotation


# instance fields
.field private mErrorCode:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p3, "errorCode"    # I

    .line 401
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 403
    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;->mErrorCode:I

    .line 404
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V

    .line 409
    return-void
.end method

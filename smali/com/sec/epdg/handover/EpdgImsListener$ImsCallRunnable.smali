.class abstract Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImsCallRunnable"
.end annotation


# instance fields
.field protected final mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 528
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 529
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 530
    return-void
.end method


# virtual methods
.method getCallInfo()Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    return-object v0
.end method

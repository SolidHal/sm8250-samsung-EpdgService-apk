.class Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsManagerConnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/epdg/handover/EpdgImsListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener$1;

    .line 386
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerConnected: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$300(Lcom/sec/epdg/handover/EpdgImsListener;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/util/List;)V

    .line 393
    :cond_0
    return-void
.end method
